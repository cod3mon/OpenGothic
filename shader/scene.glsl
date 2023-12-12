#ifndef SCENE_GLSL
#define SCENE_GLSL

// std140, because uniform buffer
struct SceneDesc {
  mat4  viewProject;
  mat4  viewProjectInv;
  mat4  viewShadow[2];
  mat4  viewProjectLwcInv;
  mat4  viewShadowLwc[2];
  mat4  view;
  mat4  project;
  mat4  projectInv;
  vec3  sunDir;
  float waveAnim;
  vec3  ambient;
  float exposure;
  vec3  sunCl;
  float GSunIntensity;
  vec4  frustrum[6];
  vec3  clipInfo;
  uint  tickCount32;
  vec3  camPos;
  float isNight;
  vec2  screenResInv;
  vec2  closeupShadowSlice;
  vec3  pfxLeft;
  uint  underWater;
  vec3  pfxTop;
  float padd2; // WORKAROUND: spirv-cross
  vec3  pfxDepth;
  float padd3; // WORKAROUND: spirv-cross
  ivec2 hiZTileSize;
  ivec2 screenRes;
  vec4  cloudsDir;
  };

#endif
