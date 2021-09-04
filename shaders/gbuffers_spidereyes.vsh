#version 120

varying vec2 texcoord;
varying vec4 glcolor;

uniform int frameCounter;
uniform float frameTimeCounter;

uniform float viewWidth, viewHeight;

#include "/bsl_lib/util/jitter.glsl"

void main() {
	gl_Position = ftransform();
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
	glcolor = gl_Color;

	gl_Position.xy = TAAJitter(gl_Position.xy, gl_Position.w);
}