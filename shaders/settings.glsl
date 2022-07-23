#define PI 3.1415926535897932384626433832795
#define EPS 1e-4

#define SHARPENING 2 // [0 1 2]
#define CAS_AMOUNT 0.5 // [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]
//#define SSAO
//#define SSAO_FILTER

#define AO_SAMPLE_RADIUS 0.15 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00 1.05 1.10 1.15 1.20 1.25 1.30 1.35 1.40 1.45 1.50 1.55 1.60 1.65 1.70 1.75 1.80 1.85 1.90 1.95 2.00 2.05 2.10 2.15 2.20 2.25 2.30 2.35 2.40 2.45 2.50 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90 2.95 3.00]
#define AO_INTENSITY 2.00 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00 1.05 1.10 1.15 1.20 1.25 1.30 1.35 1.40 1.45 1.50 1.55 1.60 1.65 1.70 1.75 1.80 1.85 1.90 1.95 2.00 2.05 2.10 2.15 2.20 2.25 2.30 2.35 2.40 2.45 2.50 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90 2.95 3.00]
#define AO_SCALE 0.50 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00 1.05 1.10 1.15 1.20 1.25 1.30 1.35 1.40 1.45 1.50 1.55 1.60 1.65 1.70 1.75 1.80 1.85 1.90 1.95 2.00 2.05 2.10 2.15 2.20 2.25 2.30 2.35 2.40 2.45 2.50 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90 2.95 3.00]
#define AO_BIAS 0.00 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00 1.05 1.10 1.15 1.20 1.25 1.30 1.35 1.40 1.45 1.50 1.55 1.60 1.65 1.70 1.75 1.80 1.85 1.90 1.95 2.00 2.05 2.10 2.15 2.20 2.25 2.30 2.35 2.40 2.45 2.50 2.55 2.60 2.65 2.70 2.75 2.80 2.85 2.90 2.95 3.00]
#define AO_SAMPLES 4 //[4 8 16 32 64]
//const int aoRadiusSamples = 4;
#define AO_RADIUS_SAMPLES 4 //[1 2 3 4 5 6 7 8 9 10]

//#define ONLY_SSAO

#define AO_BLUR_SIZE 2 //[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]
#define AO_BLUR_CLARITY 4.4 //[0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2 3.4 3.6 3.8 4.0 4.2 4.4 4.6 4.8 5.0]
#define AO_BLUR_WEIGHT 0.0

#define ANISO_FILTER
#define AF_SAMPLES 8.0 //[2.0 4.0 8.0 16.0]

#define VIGNETTE
#define VIG_STR1 0.30 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00]
#define VIG_STR2 0.90 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00]
#define VIG_LUMA_WEIGHT1 0.10 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00]
#define VIG_LUMA_WEIGHT2 0.40 //[0.00 0.05 0.10 0.15 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.00]
//#define VIG_DITHER

//#define COLOR_FILTER
#define COLOR_FILTER_RED 1.3
#define COLOR_FILTER_GREEN 1.2
#define COLOR_FILTER_BLUE 1.1

#define FOG_OFFSET_DEFAULT 4.5f
#define FOG_OFFSET_CLOUDS 50.0f