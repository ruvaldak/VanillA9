#version 120

#define DRAW_SHADOW_MAP gcolor //Configures which buffer to draw to the screen [gcolor shadowcolor0 shadowtex0 shadowtex1]

uniform float frameTimeCounter;
uniform sampler2D gcolor;
uniform sampler2D shadowcolor0;
uniform sampler2D shadowtex0;
uniform sampler2D shadowtex1;
uniform sampler2D depthtex0;
uniform mat4 gbufferProjectionInverse;
uniform mat4 gbufferModelViewInverse;
uniform mat4 shadowModelView;
uniform mat4 shadowProjection;

varying vec2 texcoord;

#include "distort.glsl"

float GetShadow(float depth) {
    vec3 ClipSpace = vec3(texcoord, depth) * 2.0f - 1.0f;
    vec4 ViewW = gbufferProjectionInverse * vec4(ClipSpace, 1.0f);
    vec3 View = ViewW.xyz / ViewW.w;
    vec4 World = gbufferModelViewInverse * vec4(View, 1.0f);
    vec4 ShadowSpace = shadowProjection * shadowModelView * World;
    ShadowSpace.xy = DistortPosition(ShadowSpace.xy);
    vec3 SampleCoords = ShadowSpace.xyz * 0.5f + 0.5f;
    return step(SampleCoords.z - SHADOW_BIAS, texture2D(shadowtex0, SampleCoords.xy).r);
}

void main() {
	vec3 color = texture2D(gcolor, texcoord).rgb;

	float depth = texture2D(depthtex0, texcoord).r;
    if(depth == 1.0f){
        gl_FragData[0] = vec4(color, 1.0f);
        return;
    }

    vec3 diffuse = color; // * ((GetShadow(depth)*0.5f+0.5f));

/* DRAWBUFFERS:0 */
	gl_FragData[0] = vec4(diffuse, 1.0f); //gcolor
}