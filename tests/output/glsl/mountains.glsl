// pushing activation record 0
float treeLine = 0.0;
float treeCol = 0.0;
vec3 sunLight = normalize(vec3(0.4, 0.4, 0.48));
vec3 sunColour = vec3(1.0, .9, .83);
float specular = 0.0;
vec3 cameraPos;
float ambient;
vec2 add = vec2(1.0, 0.0);
#define HASHSCALE1  .1031

#define HASHSCALE3  vec3(.1031, .1030, .0973)

#define HASHSCALE4  vec4(1031, .1030, .0973, .1099)

const mat2 rotate2D = mat2(1.3623, 1.7531, -1.7131, 1.4623);
// pushing activation record 0:Hash121
float Hash12(vec2 p)
{
// pushing activation record 0:Hash121:2
    vec3 p3 = fract(vec3(p.xyx) * HASHSCALE1);
    p3 += dot(p3, p3.yzx + 19.19);
    return fract((p3.x + p3.y) * p3.z);

}
// popping activation record 0:Hash121:2
// local variables: 
// variable p3, unique name 0:Hash121:2:p3, index 191, declared at line 44, column 6
// references:
// fract at line 44, column 12
// vec3 at line 44, column 18
// p at line 44, column 23
// HASHSCALE1 at line 44, column 32
// p3 at line 45, column 4
// dot at line 45, column 10
// p3 at line 45, column 14
// p3 at line 45, column 18
// fract at line 46, column 11
// p3 at line 46, column 18
// p3 at line 46, column 25
// p3 at line 46, column 33
// popping activation record 0:Hash121
// local variables: 
// variable p, unique name 0:Hash121:p, index 190, declared at line 42, column 18
// references:
// pushing activation record 0:Hash223
vec2 Hash22(vec2 p)
{
// pushing activation record 0:Hash223:4
    vec3 p3 = fract(vec3(p.xyx) * HASHSCALE3);
    p3 += dot(p3, p3.yzx + 19.19);
    return fract((p3.xx + p3.yz) * p3.zy);

}
// popping activation record 0:Hash223:4
// local variables: 
// variable p3, unique name 0:Hash223:4:p3, index 194, declared at line 50, column 6
// references:
// fract at line 50, column 11
// vec3 at line 50, column 17
// p at line 50, column 22
// HASHSCALE3 at line 50, column 31
// p3 at line 51, column 4
// dot at line 51, column 10
// p3 at line 51, column 14
// p3 at line 51, column 18
// fract at line 52, column 11
// p3 at line 52, column 18
// p3 at line 52, column 24
// p3 at line 52, column 31
// popping activation record 0:Hash223
// local variables: 
// variable p, unique name 0:Hash223:p, index 193, declared at line 48, column 17
// references:
// pushing activation record 0:Noise5
float Noise(in vec2 x)
{
// pushing activation record 0:Noise5:6
    vec2 p = floor(x);
    vec2 f = fract(x);
    f = f * f * (3.0 - 2.0 * f);
    float res = mix(mix(Hash12(p), Hash12(p + add.xy), f.x), mix(Hash12(p + add.yx), Hash12(p + add.xx), f.x), f.y);
    return res;

}
// popping activation record 0:Noise5:6
// local variables: 
// variable p, unique name 0:Noise5:6:p, index 197, declared at line 58, column 9
// variable f, unique name 0:Noise5:6:f, index 198, declared at line 59, column 9
// variable res, unique name 0:Noise5:6:res, index 199, declared at line 62, column 10
// references:
// floor at line 58, column 13
// x at line 58, column 19
// fract at line 59, column 13
// x at line 59, column 19
// f at line 60, column 4
// f at line 60, column 8
// f at line 60, column 10
// f at line 60, column 21
// mix at line 62, column 16
// mix at line 62, column 20
// Hash12 at line 62, column 25
// p at line 62, column 32
// Hash12 at line 62, column 45
// p at line 62, column 52
// add at line 62, column 56
// f at line 62, column 64
// mix at line 63, column 20
// Hash12 at line 63, column 25
// p at line 63, column 32
// add at line 63, column 36
// Hash12 at line 63, column 45
// p at line 63, column 52
// add at line 63, column 56
// f at line 63, column 64
// f at line 63, column 69
// res at line 64, column 11
// popping activation record 0:Noise5
// local variables: 
// variable x, unique name 0:Noise5:x, index 196, declared at line 56, column 21
// references:
// pushing activation record 0:Noise27
vec2 Noise2(in vec2 x)
{
// pushing activation record 0:Noise27:8
    vec2 p = floor(x);
    vec2 f = fract(x);
    f = f * f * (3.0 - 2.0 * f);
    float n = p.x + p.y * 57.0;
    vec2 res = mix(mix(Hash22(p), Hash22(p + add.xy), f.x), mix(Hash22(p + add.yx), Hash22(p + add.xx), f.x), f.y);
    return res;

}
// popping activation record 0:Noise27:8
// local variables: 
// variable p, unique name 0:Noise27:8:p, index 202, declared at line 69, column 9
// variable f, unique name 0:Noise27:8:f, index 203, declared at line 70, column 9
// variable n, unique name 0:Noise27:8:n, index 204, declared at line 72, column 10
// variable res, unique name 0:Noise27:8:res, index 205, declared at line 73, column 8
// references:
// floor at line 69, column 13
// x at line 69, column 19
// fract at line 70, column 13
// x at line 70, column 19
// f at line 71, column 4
// f at line 71, column 8
// f at line 71, column 10
// f at line 71, column 21
// p at line 72, column 14
// p at line 72, column 20
// mix at line 73, column 14
// mix at line 73, column 18
// Hash22 at line 73, column 23
// p at line 73, column 30
// Hash22 at line 73, column 43
// p at line 73, column 50
// add at line 73, column 54
// f at line 73, column 62
// mix at line 74, column 18
// Hash22 at line 74, column 23
// p at line 74, column 30
// add at line 74, column 34
// Hash22 at line 74, column 43
// p at line 74, column 50
// add at line 74, column 54
// f at line 74, column 62
// f at line 74, column 67
// res at line 75, column 11
// popping activation record 0:Noise27
// local variables: 
// variable x, unique name 0:Noise27:x, index 201, declared at line 67, column 21
// references:
// pushing activation record 0:Trees9
float Trees(vec2 p)
{
// pushing activation record 0:Trees9:10
    return Noise(p * 13.0) * treeLine;

}
// popping activation record 0:Trees9:10
// local variables: 
// references:
// Noise at line 83, column 11
// p at line 83, column 17
// treeLine at line 83, column 25
// popping activation record 0:Trees9
// local variables: 
// variable p, unique name 0:Trees9:p, index 207, declared at line 79, column 17
// references:
// pushing activation record 0:Terrain11
float Terrain(in vec2 p)
{
// pushing activation record 0:Terrain11:12
    vec2 pos = p * 0.05;
    float w = (Noise(pos * .25) * 0.75 + .15);
    w = 66.0 * w * w;
    vec2 dxy = vec2(0.0, 0.0);
    float f = .0;
    // pushing activation record 0:Terrain11:12:for13
    for (int i = 0; i < 5; i++) {
    // pushing activation record 0:Terrain11:12:for13:14
        f += w * Noise(pos);
        w = -w * 0.4;
        pos = rotate2D * pos;

    }
    // popping activation record 0:Terrain11:12:for13:14
    // local variables: 
    // references:
    // f at line 100, column 2
    // w at line 100, column 7
    // Noise at line 100, column 11
    // pos at line 100, column 17
    // w at line 101, column 2
    // w at line 101, column 7
    // pos at line 102, column 2
    // rotate2D at line 102, column 8
    // pos at line 102, column 19
    // popping activation record 0:Terrain11:12:for13
    // local variables: 
    // variable i, unique name 0:Terrain11:12:for13:i, index 214, declared at line 98, column 10
    // references:
    // i at line 98, column 17
    // i at line 98, column 24
    float ff = Noise(pos * .002);
    f += pow(abs(ff), 5.0) * 275. - 5.0;
    return f;

}
// popping activation record 0:Terrain11:12
// local variables: 
// variable pos, unique name 0:Terrain11:12:pos, index 210, declared at line 93, column 6
// variable w, unique name 0:Terrain11:12:w, index 211, declared at line 94, column 7
// variable dxy, unique name 0:Terrain11:12:dxy, index 212, declared at line 96, column 6
// variable f, unique name 0:Terrain11:12:f, index 213, declared at line 97, column 7
// variable ff, unique name 0:Terrain11:12:ff, index 215, declared at line 104, column 7
// references:
// p at line 93, column 12
// Noise at line 94, column 12
// pos at line 94, column 18
// w at line 95, column 1
// w at line 95, column 12
// w at line 95, column 16
// vec2 at line 96, column 12
// Noise at line 104, column 12
// pos at line 104, column 18
// f at line 106, column 1
// pow at line 106, column 6
// abs at line 106, column 10
// ff at line 106, column 14
// f at line 107, column 8
// popping activation record 0:Terrain11
// local variables: 
// variable p, unique name 0:Terrain11:p, index 209, declared at line 91, column 23
// references:
// pushing activation record 0:Map15
float Map(in vec3 p)
{
// pushing activation record 0:Map15:16
    float h = Terrain(p.xz);
    float ff = Noise(p.xz * .3) + Noise(p.xz * 3.3) * .5;
    treeLine = smoothstep(ff, .0 + ff * 2.0, h) * smoothstep(1.0 + ff * 3.0, .4 + ff, h);
    treeCol = Trees(p.xz);
    h += treeCol;
    return p.y - h;

}
// popping activation record 0:Map15:16
// local variables: 
// variable h, unique name 0:Map15:16:h, index 218, declared at line 114, column 7
// variable ff, unique name 0:Map15:16:ff, index 219, declared at line 117, column 7
// references:
// Terrain at line 114, column 11
// p at line 114, column 19
// Noise at line 117, column 12
// p at line 117, column 18
// Noise at line 117, column 29
// p at line 117, column 35
// treeLine at line 118, column 1
// smoothstep at line 118, column 12
// ff at line 118, column 23
// ff at line 118, column 30
// h at line 118, column 38
// smoothstep at line 118, column 43
// ff at line 118, column 58
// ff at line 118, column 69
// h at line 118, column 73
// treeCol at line 119, column 1
// Trees at line 119, column 11
// p at line 119, column 17
// h at line 120, column 1
// treeCol at line 120, column 6
// p at line 122, column 11
// h at line 122, column 17
// popping activation record 0:Map15
// local variables: 
// variable p, unique name 0:Map15:p, index 217, declared at line 112, column 18
// references:
// pushing activation record 0:Terrain217
float Terrain2(in vec2 p)
{
// pushing activation record 0:Terrain217:18
    vec2 pos = p * 0.05;
    float w = (Noise(pos * .25) * 0.75 + .15);
    w = 66.0 * w * w;
    vec2 dxy = vec2(0.0, 0.0);
    float f = .0;
    // pushing activation record 0:Terrain217:18:for19
    for (int i = 0; i < 5; i++) {
    // pushing activation record 0:Terrain217:18:for19:20
        f += w * Noise(pos);
        w = -w * 0.4;
        pos = rotate2D * pos;

    }
    // popping activation record 0:Terrain217:18:for19:20
    // local variables: 
    // references:
    // f at line 138, column 2
    // w at line 138, column 7
    // Noise at line 138, column 11
    // pos at line 138, column 17
    // w at line 139, column 2
    // w at line 139, column 9
    // pos at line 140, column 2
    // rotate2D at line 140, column 8
    // pos at line 140, column 19
    // popping activation record 0:Terrain217:18:for19
    // local variables: 
    // variable i, unique name 0:Terrain217:18:for19:i, index 226, declared at line 136, column 10
    // references:
    // i at line 136, column 17
    // i at line 136, column 24
    float ff = Noise(pos * .002);
    f += pow(abs(ff), 5.0) * 275. - 5.0;
    treeCol = Trees(p);
    f += treeCol;
    if (treeCol > 0.0) return f;
    // pushing activation record 0:Terrain217:18:for21
    for (int i = 0; i < 6; i++) {
    // pushing activation record 0:Terrain217:18:for21:22
        f += w * Noise(pos);
        w = -w * 0.4;
        pos = rotate2D * pos;

    }
    // popping activation record 0:Terrain217:18:for21:22
    // local variables: 
    // references:
    // f at line 154, column 2
    // w at line 154, column 7
    // Noise at line 154, column 11
    // pos at line 154, column 17
    // w at line 155, column 2
    // w at line 155, column 9
    // pos at line 156, column 2
    // rotate2D at line 156, column 8
    // pos at line 156, column 19
    // popping activation record 0:Terrain217:18:for21
    // local variables: 
    // variable i, unique name 0:Terrain217:18:for21:i, index 228, declared at line 152, column 10
    // references:
    // i at line 152, column 17
    // i at line 152, column 24
    return f;

}
// popping activation record 0:Terrain217:18
// local variables: 
// variable pos, unique name 0:Terrain217:18:pos, index 222, declared at line 131, column 6
// variable w, unique name 0:Terrain217:18:w, index 223, declared at line 132, column 7
// variable dxy, unique name 0:Terrain217:18:dxy, index 224, declared at line 134, column 6
// variable f, unique name 0:Terrain217:18:f, index 225, declared at line 135, column 7
// variable ff, unique name 0:Terrain217:18:ff, index 227, declared at line 142, column 7
// references:
// p at line 131, column 12
// Noise at line 132, column 12
// pos at line 132, column 18
// w at line 133, column 1
// w at line 133, column 12
// w at line 133, column 16
// vec2 at line 134, column 12
// Noise at line 142, column 12
// pos at line 142, column 18
// f at line 143, column 1
// pow at line 143, column 6
// abs at line 143, column 10
// ff at line 143, column 14
// treeCol at line 146, column 1
// Trees at line 146, column 11
// p at line 146, column 17
// f at line 147, column 1
// treeCol at line 147, column 6
// treeCol at line 148, column 5
// f at line 148, column 27
// f at line 160, column 8
// popping activation record 0:Terrain217
// local variables: 
// variable p, unique name 0:Terrain217:p, index 221, declared at line 127, column 24
// references:
// pushing activation record 0:FractalNoise23
float FractalNoise(in vec2 xy)
{
// pushing activation record 0:FractalNoise23:24
    float w = .7;
    float f = 0.0;
    // pushing activation record 0:FractalNoise23:24:for25
    for (int i = 0; i < 4; i++) {
    // pushing activation record 0:FractalNoise23:24:for25:26
        f += Noise(xy) * w;
        w *= 0.5;
        xy *= 2.7;

    }
    // popping activation record 0:FractalNoise23:24:for25:26
    // local variables: 
    // references:
    // f at line 171, column 2
    // Noise at line 171, column 7
    // xy at line 171, column 13
    // w at line 171, column 19
    // w at line 172, column 2
    // xy at line 173, column 2
    // popping activation record 0:FractalNoise23:24:for25
    // local variables: 
    // variable i, unique name 0:FractalNoise23:24:for25:i, index 233, declared at line 169, column 10
    // references:
    // i at line 169, column 17
    // i at line 169, column 24
    return f;

}
// popping activation record 0:FractalNoise23:24
// local variables: 
// variable w, unique name 0:FractalNoise23:24:w, index 231, declared at line 166, column 7
// variable f, unique name 0:FractalNoise23:24:f, index 232, declared at line 167, column 7
// references:
// f at line 175, column 8
// popping activation record 0:FractalNoise23
// local variables: 
// variable xy, unique name 0:FractalNoise23:xy, index 230, declared at line 164, column 27
// references:
// pushing activation record 0:GetClouds27
vec3 GetClouds(in vec3 sky, in vec3 rd)
{
// pushing activation record 0:GetClouds27:28
    if (rd.y < 0.01) return sky;
    float v = (200.0 - cameraPos.y) / rd.y;
    rd.xz *= v;
    rd.xz += cameraPos.xz;
    rd.xz *= .010;
    float f = (FractalNoise(rd.xz) - .55) * 5.0;
    sky = mix(sky, vec3(.55, .55, .52), clamp(f * rd.y - .1, 0.0, 1.0));
    return sky;

}
// popping activation record 0:GetClouds27:28
// local variables: 
// variable v, unique name 0:GetClouds27:28:v, index 237, declared at line 184, column 7
// variable f, unique name 0:GetClouds27:28:f, index 238, declared at line 188, column 7
// references:
// rd at line 183, column 5
// sky at line 183, column 25
// cameraPos at line 184, column 18
// rd at line 184, column 31
// rd at line 185, column 1
// v at line 185, column 10
// rd at line 186, column 1
// cameraPos at line 186, column 10
// rd at line 187, column 1
// FractalNoise at line 188, column 12
// rd at line 188, column 25
// sky at line 190, column 1
// mix at line 190, column 7
// sky at line 190, column 11
// vec3 at line 190, column 16
// clamp at line 190, column 37
// f at line 190, column 43
// rd at line 190, column 45
// sky at line 192, column 8
// popping activation record 0:GetClouds27
// local variables: 
// variable sky, unique name 0:GetClouds27:sky, index 235, declared at line 181, column 23
// variable rd, unique name 0:GetClouds27:rd, index 236, declared at line 181, column 36
// references:
// pushing activation record 0:GetSky29
vec3 GetSky(in vec3 rd)
{
// pushing activation record 0:GetSky29:30
    float sunAmount = max(dot(rd, sunLight), 0.0);
    float v = pow(1.0 - max(rd.y, 0.0), 5.) * .5;
    vec3 sky = vec3(v * sunColour.x * 0.4 + 0.18, v * sunColour.y * 0.4 + 0.22, v * sunColour.z * 0.4 + .4);
    sky = sky + sunColour * pow(sunAmount, 6.5) * .32;
    sky = sky + sunColour * min(pow(sunAmount, 1150.0), .3) * .65;
    return sky;

}
// popping activation record 0:GetSky29:30
// local variables: 
// variable sunAmount, unique name 0:GetSky29:30:sunAmount, index 241, declared at line 201, column 7
// variable v, unique name 0:GetSky29:30:v, index 242, declared at line 202, column 7
// variable sky, unique name 0:GetSky29:30:sky, index 243, declared at line 203, column 7
// references:
// max at line 201, column 19
// dot at line 201, column 24
// rd at line 201, column 29
// sunLight at line 201, column 33
// pow at line 202, column 11
// max at line 202, column 19
// rd at line 202, column 23
// vec3 at line 203, column 13
// v at line 203, column 18
// sunColour at line 203, column 20
// v at line 203, column 42
// sunColour at line 203, column 44
// v at line 203, column 66
// sunColour at line 203, column 68
// sky at line 205, column 1
// sky at line 205, column 7
// sunColour at line 205, column 13
// pow at line 205, column 25
// sunAmount at line 205, column 29
// sky at line 207, column 1
// sky at line 207, column 7
// sunColour at line 207, column 12
// min at line 207, column 24
// pow at line 207, column 28
// sunAmount at line 207, column 32
// sky at line 208, column 8
// popping activation record 0:GetSky29
// local variables: 
// variable rd, unique name 0:GetSky29:rd, index 240, declared at line 199, column 20
// references:
// pushing activation record 0:ApplyFog31
vec3 ApplyFog(in vec3 rgb, in float dis, in vec3 dir)
{
// pushing activation record 0:ApplyFog31:32
    float fogAmount = exp(-dis * 0.00005);
    return mix(GetSky(dir), rgb, fogAmount);

}
// popping activation record 0:ApplyFog31:32
// local variables: 
// variable fogAmount, unique name 0:ApplyFog31:32:fogAmount, index 248, declared at line 215, column 7
// references:
// exp at line 215, column 19
// dis at line 215, column 24
// mix at line 216, column 8
// GetSky at line 216, column 12
// dir at line 216, column 19
// rgb at line 216, column 25
// fogAmount at line 216, column 30
// popping activation record 0:ApplyFog31
// local variables: 
// variable rgb, unique name 0:ApplyFog31:rgb, index 245, declared at line 213, column 24
// variable dis, unique name 0:ApplyFog31:dis, index 246, declared at line 213, column 38
// variable dir, unique name 0:ApplyFog31:dir, index 247, declared at line 213, column 51
// references:
// pushing activation record 0:DoLighting33
void DoLighting(inout vec3 mat, in vec3 pos, in vec3 normal, in vec3 eyeDir, in float dis)
{
// pushing activation record 0:DoLighting33:34
    float h = dot(sunLight, normal);
    float c = max(h, 0.0) + ambient;
    mat = mat * sunColour * c;
    if (h > 0.0) {
    // pushing activation record 0:DoLighting33:34:35
        vec3 R = reflect(sunLight, normal);
        float specAmount = pow(max(dot(R, normalize(eyeDir)), 0.0), 3.0) * specular;
        mat = mix(mat, sunColour, specAmount);

    }
    // popping activation record 0:DoLighting33:34:35
    // local variables: 
    // variable R, unique name 0:DoLighting33:34:35:R, index 257, declared at line 229, column 7
    // variable specAmount, unique name 0:DoLighting33:34:35:specAmount, index 258, declared at line 230, column 8
    // references:
    // reflect at line 229, column 11
    // sunLight at line 229, column 19
    // normal at line 229, column 29
    // pow at line 230, column 21
    // max at line 230, column 26
    // dot at line 230, column 30
    // R at line 230, column 34
    // normalize at line 230, column 37
    // eyeDir at line 230, column 47
    // specular at line 230, column 68
    // mat at line 231, column 2
    // mix at line 231, column 8
    // mat at line 231, column 12
    // sunColour at line 231, column 17
    // specAmount at line 231, column 28

}
// popping activation record 0:DoLighting33:34
// local variables: 
// variable h, unique name 0:DoLighting33:34:h, index 255, declared at line 223, column 7
// variable c, unique name 0:DoLighting33:34:c, index 256, declared at line 224, column 7
// references:
// dot at line 223, column 11
// sunLight at line 223, column 15
// normal at line 223, column 24
// max at line 224, column 11
// h at line 224, column 15
// ambient at line 224, column 23
// mat at line 225, column 1
// mat at line 225, column 7
// sunColour at line 225, column 13
// c at line 225, column 25
// h at line 227, column 5
// popping activation record 0:DoLighting33
// local variables: 
// variable mat, unique name 0:DoLighting33:mat, index 250, declared at line 221, column 27
// variable pos, unique name 0:DoLighting33:pos, index 251, declared at line 221, column 40
// variable normal, unique name 0:DoLighting33:normal, index 252, declared at line 221, column 53
// variable eyeDir, unique name 0:DoLighting33:eyeDir, index 253, declared at line 221, column 69
// variable dis, unique name 0:DoLighting33:dis, index 254, declared at line 221, column 86
// references:
// pushing activation record 0:TerrainColour36
vec3 TerrainColour(vec3 pos, vec3 normal, float dis)
{
// pushing activation record 0:TerrainColour36:37
    vec3 mat;
    specular = .0;
    ambient = .1;
    vec3 dir = normalize(pos - cameraPos);
    vec3 matPos = pos * 2.0;
    float disSqrd = dis * dis;
    float f = clamp(Noise(matPos.xz * .05), 0.0, 1.0);
    f += Noise(matPos.xz * .1 + normal.yz * 1.08) * .85;
    f *= .55;
    vec3 m = mix(vec3(.63 * f + .2, .7 * f + .1, .7 * f + .1), vec3(f * .43 + .1, f * .3 + .2, f * .35 + .1), f * .65);
    mat = m * vec3(f * m.x + .36, f * m.y + .30, f * m.z + .28);
    if (normal.y < .5) {
    // pushing activation record 0:TerrainColour36:37:38
        float v = normal.y;
        float c = (.5 - normal.y) * 4.0;
        c = clamp(c * c, 0.1, 1.0);
        f = Noise(vec2(matPos.x * .09, matPos.z * .095 + matPos.yy * 0.15));
        f += Noise(vec2(matPos.x * 2.233, matPos.z * 2.23)) * 0.5;
        mat = mix(mat, vec3(.4 * f), c);
        specular += .1;

    }
    // popping activation record 0:TerrainColour36:37:38
    // local variables: 
    // variable v, unique name 0:TerrainColour36:37:38:v, index 269, declared at line 256, column 8
    // variable c, unique name 0:TerrainColour36:37:38:c, index 270, declared at line 257, column 8
    // references:
    // normal at line 256, column 12
    // normal at line 257, column 16
    // c at line 258, column 2
    // clamp at line 258, column 6
    // c at line 258, column 12
    // c at line 258, column 14
    // f at line 259, column 2
    // Noise at line 259, column 6
    // vec2 at line 259, column 12
    // matPos at line 259, column 17
    // matPos at line 259, column 31
    // matPos at line 259, column 45
    // f at line 260, column 2
    // Noise at line 260, column 7
    // vec2 at line 260, column 13
    // matPos at line 260, column 18
    // matPos at line 260, column 34
    // mat at line 261, column 2
    // mix at line 261, column 8
    // mat at line 261, column 12
    // vec3 at line 261, column 17
    // f at line 261, column 25
    // c at line 261, column 29
    // specular at line 262, column 2
    if (matPos.y < 45.35 && normal.y > .65) {
    // pushing activation record 0:TerrainColour36:37:39
        m = vec3(Noise(matPos.xz * .023) * .5 + .15, Noise(matPos.xz * .03) * .6 + .25, 0.0);
        m *= (normal.y - 0.65) * .6;
        mat = mix(mat, m, clamp((normal.y - .65) * 1.3 * (45.35 - matPos.y) * 0.1, 0.0, 1.0));

    }
    // popping activation record 0:TerrainColour36:37:39
    // local variables: 
    // references:
    // m at line 269, column 2
    // vec3 at line 269, column 6
    // Noise at line 269, column 11
    // matPos at line 269, column 17
    // Noise at line 269, column 41
    // matPos at line 269, column 47
    // m at line 270, column 2
    // normal at line 270, column 8
    // mat at line 271, column 2
    // mix at line 271, column 8
    // mat at line 271, column 12
    // m at line 271, column 17
    // clamp at line 271, column 20
    // normal at line 271, column 27
    // matPos at line 271, column 54
    if (treeCol > 0.0) {
    // pushing activation record 0:TerrainColour36:37:40
        mat = vec3(.02 + Noise(matPos.xz * 5.0) * .03, .05, .0);
        normal = normalize(normal + vec3(Noise(matPos.xz * 33.0) * 1.0 - .5, .0, Noise(matPos.xz * 33.0) * 1.0 - .5));
        specular = .0;

    }
    // popping activation record 0:TerrainColour36:37:40
    // local variables: 
    // references:
    // mat at line 276, column 2
    // vec3 at line 276, column 8
    // Noise at line 276, column 17
    // matPos at line 276, column 23
    // normal at line 277, column 2
    // normalize at line 277, column 11
    // normal at line 277, column 21
    // vec3 at line 277, column 28
    // Noise at line 277, column 33
    // matPos at line 277, column 39
    // Noise at line 277, column 67
    // matPos at line 277, column 73
    // specular at line 278, column 2
    if (matPos.y > 80.0 && normal.y > .42) {
    // pushing activation record 0:TerrainColour36:37:41
        float snow = clamp((matPos.y - 80.0 - Noise(matPos.xz * .1) * 28.0) * 0.035, 0.0, 1.0);
        mat = mix(mat, vec3(.7, .7, .8), snow);
        specular += snow;
        ambient += snow * .3;

    }
    // popping activation record 0:TerrainColour36:37:41
    // local variables: 
    // variable snow, unique name 0:TerrainColour36:37:41:snow, index 271, declared at line 284, column 8
    // references:
    // clamp at line 284, column 15
    // matPos at line 284, column 22
    // Noise at line 284, column 40
    // matPos at line 284, column 46
    // mat at line 285, column 2
    // mix at line 285, column 8
    // mat at line 285, column 12
    // vec3 at line 285, column 17
    // snow at line 285, column 33
    // specular at line 286, column 2
    // snow at line 286, column 14
    // ambient at line 287, column 2
    // snow at line 287, column 11
    if (matPos.y < 1.45) {
    // pushing activation record 0:TerrainColour36:37:42
        if (normal.y > .4) {
        // pushing activation record 0:TerrainColour36:37:42:43
            f = Noise(matPos.xz * .084) * 1.5;
            f = clamp((1.45 - f - matPos.y) * 1.34, 0.0, .67);
            float t = (normal.y - .4);
            t = (t * t);
            mat = mix(mat, vec3(.09 + t, .07 + t, .03 + t), f);

        }
        // popping activation record 0:TerrainColour36:37:42:43
        // local variables: 
        // variable t, unique name 0:TerrainColour36:37:42:43:t, index 272, declared at line 296, column 9
        // references:
        // f at line 294, column 3
        // Noise at line 294, column 7
        // matPos at line 294, column 13
        // f at line 295, column 3
        // clamp at line 295, column 7
        // f at line 295, column 19
        // matPos at line 295, column 21
        // normal at line 296, column 14
        // t at line 297, column 3
        // t at line 297, column 8
        // t at line 297, column 10
        // mat at line 298, column 3
        // mix at line 298, column 9
        // mat at line 298, column 13
        // vec3 at line 298, column 18
        // t at line 298, column 27
        // t at line 298, column 34
        // t at line 298, column 41
        // f at line 298, column 45
        if (matPos.y < 0.0) {
        // pushing activation record 0:TerrainColour36:37:42:44
            mat *= .2;

        }
        // popping activation record 0:TerrainColour36:37:42:44
        // local variables: 
        // references:
        // mat at line 303, column 3

    }
    // popping activation record 0:TerrainColour36:37:42
    // local variables: 
    // references:
    // normal at line 292, column 6
    // matPos at line 301, column 6
    DoLighting(mat, pos, normal, dir, disSqrd);
    if (matPos.y < 0.0) {
    // pushing activation record 0:TerrainColour36:37:45
        float time = (iGlobalTime) * .03;
        vec3 watPos = matPos;
        watPos += -dir * (watPos.y / dir.y);
        float tx = cos(watPos.x * .052) * 4.5;
        float tz = sin(watPos.z * .072) * 4.5;
        vec2 co = Noise2(vec2(watPos.x * 4.7 + 1.3 + tz, watPos.z * 4.69 + time * 35.0 - tx));
        co += Noise2(vec2(watPos.z * 8.6 + time * 13.0 - tx, watPos.x * 8.712 + tz)) * .4;
        vec3 nor = normalize(vec3(co.x, 20.0, co.y));
        nor = normalize(reflect(dir, nor));
        tx = watPos.y - matPos.y;
        mat = mix(mat, GetClouds(GetSky(nor) * vec3(.3, .3, .5), nor) * .1 + vec3(.0, .02, .03), clamp((tx) * .4, .6, 1.));
        mat += vec3(.1) * clamp(1. - pow(tx + .5, 3.) * texture(iChannel1, watPos.xz * .1, -2.).x, 0., 1.0);
        float sunAmount = max(dot(nor, sunLight), 0.0);
        mat = mat + sunColour * pow(sunAmount, 228.5) * .6;
        vec3 temp = (watPos - cameraPos * 2.) * .5;
        disSqrd = dot(temp, temp);

    }
    // popping activation record 0:TerrainColour36:37:45
    // local variables: 
    // variable time, unique name 0:TerrainColour36:37:45:time, index 273, declared at line 313, column 8
    // variable watPos, unique name 0:TerrainColour36:37:45:watPos, index 274, declared at line 314, column 7
    // variable tx, unique name 0:TerrainColour36:37:45:tx, index 275, declared at line 317, column 8
    // variable tz, unique name 0:TerrainColour36:37:45:tz, index 276, declared at line 318, column 8
    // variable co, unique name 0:TerrainColour36:37:45:co, index 277, declared at line 319, column 7
    // variable nor, unique name 0:TerrainColour36:37:45:nor, index 278, declared at line 321, column 7
    // variable sunAmount, unique name 0:TerrainColour36:37:45:sunAmount, index 279, declared at line 328, column 8
    // variable temp, unique name 0:TerrainColour36:37:45:temp, index 280, declared at line 330, column 13
    // references:
    // iGlobalTime at line 313, column 16
    // matPos at line 314, column 16
    // watPos at line 315, column 2
    // dir at line 315, column 13
    // watPos at line 315, column 20
    // dir at line 315, column 29
    // cos at line 317, column 13
    // watPos at line 317, column 17
    // sin at line 318, column 13
    // watPos at line 318, column 17
    // Noise2 at line 319, column 12
    // vec2 at line 319, column 19
    // watPos at line 319, column 24
    // tz at line 319, column 41
    // watPos at line 319, column 45
    // time at line 319, column 59
    // tx at line 319, column 69
    // co at line 320, column 2
    // Noise2 at line 320, column 8
    // vec2 at line 320, column 15
    // watPos at line 320, column 20
    // time at line 320, column 33
    // tx at line 320, column 43
    // watPos at line 320, column 47
    // tz at line 320, column 62
    // normalize at line 321, column 13
    // vec3 at line 321, column 23
    // co at line 321, column 28
    // co at line 321, column 40
    // nor at line 322, column 2
    // normalize at line 322, column 8
    // reflect at line 322, column 18
    // dir at line 322, column 26
    // nor at line 322, column 31
    // tx at line 324, column 8
    // watPos at line 324, column 13
    // matPos at line 324, column 22
    // mat at line 325, column 2
    // mix at line 325, column 8
    // mat at line 325, column 12
    // GetClouds at line 325, column 17
    // GetSky at line 325, column 27
    // nor at line 325, column 34
    // vec3 at line 325, column 39
    // nor at line 325, column 55
    // vec3 at line 325, column 63
    // clamp at line 325, column 81
    // tx at line 325, column 88
    // mat at line 327, column 8
    // vec3 at line 327, column 15
    // clamp at line 327, column 24
    // pow at line 327, column 33
    // tx at line 327, column 37
    // texture at line 327, column 48
    // iChannel1 at line 327, column 56
    // watPos at line 327, column 67
    // max at line 328, column 20
    // dot at line 328, column 25
    // nor at line 328, column 29
    // sunLight at line 328, column 34
    // mat at line 329, column 2
    // mat at line 329, column 8
    // sunColour at line 329, column 14
    // pow at line 329, column 26
    // sunAmount at line 329, column 30
    // watPos at line 330, column 21
    // cameraPos at line 330, column 28
    // disSqrd at line 331, column 8
    // dot at line 331, column 18
    // temp at line 331, column 22
    // temp at line 331, column 28
    mat = ApplyFog(mat, disSqrd, dir);
    return mat;

}
// popping activation record 0:TerrainColour36:37
// local variables: 
// variable mat, unique name 0:TerrainColour36:37:mat, index 263, declared at line 239, column 6
// variable dir, unique name 0:TerrainColour36:37:dir, index 264, declared at line 242, column 6
// variable matPos, unique name 0:TerrainColour36:37:matPos, index 265, declared at line 244, column 6
// variable disSqrd, unique name 0:TerrainColour36:37:disSqrd, index 266, declared at line 246, column 7
// variable f, unique name 0:TerrainColour36:37:f, index 267, declared at line 248, column 7
// variable m, unique name 0:TerrainColour36:37:m, index 268, declared at line 251, column 6
// references:
// specular at line 240, column 1
// ambient at line 241, column 1
// normalize at line 242, column 12
// pos at line 242, column 22
// cameraPos at line 242, column 26
// pos at line 244, column 15
// dis at line 246, column 17
// dis at line 246, column 23
// clamp at line 248, column 11
// Noise at line 248, column 17
// matPos at line 248, column 23
// f at line 249, column 1
// Noise at line 249, column 6
// matPos at line 249, column 12
// normal at line 249, column 25
// f at line 250, column 1
// mix at line 251, column 10
// vec3 at line 251, column 14
// f at line 251, column 23
// f at line 251, column 32
// f at line 251, column 41
// vec3 at line 251, column 48
// f at line 251, column 53
// f at line 251, column 63
// f at line 251, column 72
// f at line 251, column 83
// mat at line 252, column 1
// m at line 252, column 7
// vec3 at line 252, column 9
// f at line 252, column 14
// m at line 252, column 16
// f at line 252, column 25
// m at line 252, column 27
// f at line 252, column 36
// m at line 252, column 38
// normal at line 254, column 5
// matPos at line 266, column 5
// normal at line 266, column 25
// treeCol at line 274, column 5
// matPos at line 282, column 5
// normal at line 282, column 24
// matPos at line 290, column 5
// DoLighting at line 307, column 1
// mat at line 307, column 12
// pos at line 307, column 17
// normal at line 307, column 22
// dir at line 307, column 29
// disSqrd at line 307, column 34
// matPos at line 310, column 5
// mat at line 333, column 1
// ApplyFog at line 333, column 7
// mat at line 333, column 16
// disSqrd at line 333, column 21
// dir at line 333, column 30
// mat at line 334, column 8
// popping activation record 0:TerrainColour36
// local variables: 
// variable pos, unique name 0:TerrainColour36:pos, index 260, declared at line 237, column 24
// variable normal, unique name 0:TerrainColour36:normal, index 261, declared at line 237, column 34
// variable dis, unique name 0:TerrainColour36:dis, index 262, declared at line 237, column 48
// references:
// pushing activation record 0:BinarySubdivision46
float BinarySubdivision(in vec3 rO, in vec3 rD, vec2 t)
{
// pushing activation record 0:BinarySubdivision46:47
    float halfwayT;
    // pushing activation record 0:BinarySubdivision46:47:for48
    for (int n = 0; n < 5; n++) {
    // pushing activation record 0:BinarySubdivision46:47:for48:49
        halfwayT = (t.x + t.y) * .5;
        vec3 p = rO + halfwayT * rD;
        (Map(p) < 0.5) ? t.x = halfwayT : t.y = halfwayT;

    }
    // popping activation record 0:BinarySubdivision46:47:for48:49
    // local variables: 
    // variable p, unique name 0:BinarySubdivision46:47:for48:49:p, index 287, declared at line 345, column 7
    // references:
    // halfwayT at line 344, column 2
    // t at line 344, column 14
    // t at line 344, column 20
    // rO at line 345, column 11
    // halfwayT at line 345, column 16
    // rD at line 345, column 25
    // Map at line 346, column 3
    // p at line 346, column 7
    // t at line 346, column 19
    // halfwayT at line 346, column 25
    // t at line 346, column 35
    // halfwayT at line 346, column 41
    // popping activation record 0:BinarySubdivision46:47:for48
    // local variables: 
    // variable n, unique name 0:BinarySubdivision46:47:for48:n, index 286, declared at line 342, column 10
    // references:
    // n at line 342, column 17
    // n at line 342, column 24
    return t.x;

}
// popping activation record 0:BinarySubdivision46:47
// local variables: 
// variable halfwayT, unique name 0:BinarySubdivision46:47:halfwayT, index 285, declared at line 341, column 10
// references:
// t at line 348, column 8
// popping activation record 0:BinarySubdivision46
// local variables: 
// variable rO, unique name 0:BinarySubdivision46:rO, index 282, declared at line 338, column 32
// variable rD, unique name 0:BinarySubdivision46:rD, index 283, declared at line 338, column 44
// variable t, unique name 0:BinarySubdivision46:t, index 284, declared at line 338, column 53
// references:
// pushing activation record 0:Scene50
bool Scene(in vec3 rO, in vec3 rD, out float resT, in vec2 fragCoord)
{
// pushing activation record 0:Scene50:51
    float t = 1.2 + Hash12(fragCoord.xy);
    float oldT = 0.0;
    float delta = 0.0;
    bool fin = false;
    bool res = false;
    vec2 distances;
    // pushing activation record 0:Scene50:51:for52
    for (int j = 0; j < 150; j++) {
    // pushing activation record 0:Scene50:51:for52:53
        if (fin || t > 240.0) break;
        vec3 p = rO + t * rD;
        float h = Map(p);
        if (h < 0.5) {
        // pushing activation record 0:Scene50:51:for52:53:54
            fin = true;
            distances = vec2(t, oldT);
            break;

        }
        // popping activation record 0:Scene50:51:for52:53:54
        // local variables: 
        // references:
        // fin at line 369, column 3
        // distances at line 370, column 3
        // vec2 at line 370, column 15
        // t at line 370, column 20
        // oldT at line 370, column 23
        delta = max(0.01, 0.3 * h) + (t * 0.0065);
        oldT = t;
        t += delta;

    }
    // popping activation record 0:Scene50:51:for52:53
    // local variables: 
    // variable p, unique name 0:Scene50:51:for52:53:p, index 300, declared at line 363, column 7
    // variable h, unique name 0:Scene50:51:for52:53:h, index 301, declared at line 365, column 8
    // references:
    // fin at line 362, column 6
    // t at line 362, column 13
    // rO at line 363, column 11
    // t at line 363, column 16
    // rD at line 363, column 18
    // Map at line 365, column 12
    // p at line 365, column 16
    // h at line 367, column 6
    // delta at line 377, column 2
    // max at line 377, column 10
    // h at line 377, column 24
    // t at line 377, column 30
    // oldT at line 378, column 2
    // t at line 378, column 9
    // t at line 379, column 2
    // delta at line 379, column 7
    // popping activation record 0:Scene50:51:for52
    // local variables: 
    // variable j, unique name 0:Scene50:51:for52:j, index 299, declared at line 360, column 10
    // references:
    // j at line 360, column 15
    // j at line 360, column 23
    if (fin) resT = BinarySubdivision(rO, rD, distances);
    return fin;

}
// popping activation record 0:Scene50:51
// local variables: 
// variable t, unique name 0:Scene50:51:t, index 293, declared at line 354, column 10
// variable oldT, unique name 0:Scene50:51:oldT, index 294, declared at line 355, column 7
// variable delta, unique name 0:Scene50:51:delta, index 295, declared at line 356, column 7
// variable fin, unique name 0:Scene50:51:fin, index 296, declared at line 357, column 6
// variable res, unique name 0:Scene50:51:res, index 297, declared at line 358, column 6
// variable distances, unique name 0:Scene50:51:distances, index 298, declared at line 359, column 6
// references:
// Hash12 at line 354, column 20
// fragCoord at line 354, column 27
// fin at line 381, column 5
// resT at line 381, column 10
// BinarySubdivision at line 381, column 17
// rO at line 381, column 35
// rD at line 381, column 39
// distances at line 381, column 43
// fin at line 383, column 8
// popping activation record 0:Scene50
// local variables: 
// variable rO, unique name 0:Scene50:rO, index 289, declared at line 352, column 19
// variable rD, unique name 0:Scene50:rD, index 290, declared at line 352, column 31
// variable resT, unique name 0:Scene50:resT, index 291, declared at line 352, column 45
// variable fragCoord, unique name 0:Scene50:fragCoord, index 292, declared at line 352, column 59
// references:
// pushing activation record 0:CameraPath55
vec3 CameraPath(float t)
{
// pushing activation record 0:CameraPath55:56
    float m = 1.0 + (iMouse.x / iResolution.x) * 300.0;
    t = (iGlobalTime * 1.5 + m + 657.0) * .006 + t;
    vec2 p = 476.0 * vec2(sin(3.5 * t), cos(1.5 * t));
    return vec3(35.0 - p.x, 0.6, 4108.0 + p.y);

}
// popping activation record 0:CameraPath55:56
// local variables: 
// variable m, unique name 0:CameraPath55:56:m, index 304, declared at line 389, column 7
// variable p, unique name 0:CameraPath55:56:p, index 305, declared at line 391, column 9
// references:
// iMouse at line 389, column 16
// iResolution at line 389, column 25
// t at line 390, column 1
// iGlobalTime at line 390, column 6
// m at line 390, column 22
// t at line 390, column 38
// vec2 at line 391, column 19
// sin at line 391, column 25
// t at line 391, column 33
// cos at line 391, column 37
// t at line 391, column 45
// vec3 at line 392, column 8
// p at line 392, column 18
// p at line 392, column 35
// popping activation record 0:CameraPath55
// local variables: 
// variable t, unique name 0:CameraPath55:t, index 303, declared at line 387, column 23
// references:
// pushing activation record 0:PostEffects57
vec3 PostEffects(vec3 rgb, vec2 uv)
{
// pushing activation record 0:PostEffects57:58
    rgb = (1.0 - exp(-rgb * 6.0)) * 1.0024;
    return rgb;

}
// popping activation record 0:PostEffects57:58
// local variables: 
// references:
// rgb at line 404, column 1
// exp at line 404, column 14
// rgb at line 404, column 19
// rgb at line 406, column 8
// popping activation record 0:PostEffects57
// local variables: 
// variable rgb, unique name 0:PostEffects57:rgb, index 307, declared at line 397, column 22
// variable uv, unique name 0:PostEffects57:uv, index 308, declared at line 397, column 32
// references:
// pushing activation record 0:mainImage59
void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
// pushing activation record 0:mainImage59:60
    vec2 xy = -1.0 + 2.0 * fragCoord.xy / iResolution.xy;
    vec2 uv = xy * vec2(iResolution.x / iResolution.y, 1.0);
    vec3 camTar;
    #ifdef STEREO
	
float isCyan = mod(fragCoord.x + mod(fragCoord.y, 2.0), 2.0);
    #endif

	// Use several forward heights, of decreasing influence with distance from the camera.
	
float h = 0.0;
    float f = 1.0;
    // pushing activation record 0:mainImage59:60:for61
    for (int i = 0; i < 7; i++) {
    // pushing activation record 0:mainImage59:60:for61:62
        h += Terrain(CameraPath((.6 - f) * .008).xz) * f;
        f -= .1;

    }
    // popping activation record 0:mainImage59:60:for61:62
    // local variables: 
    // references:
    // h at line 425, column 2
    // Terrain at line 425, column 7
    // CameraPath at line 425, column 15
    // f at line 425, column 30
    // f at line 425, column 45
    // f at line 426, column 2
    // popping activation record 0:mainImage59:60:for61
    // local variables: 
    // variable i, unique name 0:mainImage59:60:for61:i, index 318, declared at line 423, column 10
    // references:
    // i at line 423, column 17
    // i at line 423, column 24
    cameraPos.xz = CameraPath(0.0).xz;
    camTar.xyz = CameraPath(.005).xyz;
    camTar.y = cameraPos.y = max((h * .25) + 3.5, 1.5 + sin(iGlobalTime * 5.) * .5);
    float roll = 0.15 * sin(iGlobalTime * .2);
    vec3 cw = normalize(camTar - cameraPos);
    vec3 cp = vec3(sin(roll), cos(roll), 0.0);
    vec3 cu = normalize(cross(cw, cp));
    vec3 cv = normalize(cross(cu, cw));
    vec3 rd = normalize(uv.x * cu + uv.y * cv + 1.5 * cw);
    #ifdef STEREO
	
cameraPos += .45 * cu * isCyan;
    #endif

	
vec3 col;
    float distance;
    if (!Scene(cameraPos, rd, distance, fragCoord)) {
    // pushing activation record 0:mainImage59:60:63
        col = GetSky(rd);
        col = GetClouds(col, rd);

    }
    // popping activation record 0:mainImage59:60:63
    // local variables: 
    // references:
    // col at line 448, column 2
    // GetSky at line 448, column 8
    // rd at line 448, column 15
    // col at line 449, column 2
    // GetClouds at line 449, column 8
    // col at line 449, column 18
    // rd at line 449, column 23
    col = PostEffects(col, uv);
    #ifdef STEREO	
	
col *= vec3(isCyan, 1.0 - isCyan, 1.0 - isCyan);
    #endif
	
	
fragColor = vec4(col, 1.0);

}
// popping activation record 0:mainImage59:60
// local variables: 
// variable xy, unique name 0:mainImage59:60:xy, index 312, declared at line 412, column 9
// variable uv, unique name 0:mainImage59:60:uv, index 313, declared at line 413, column 6
// variable camTar, unique name 0:mainImage59:60:camTar, index 314, declared at line 414, column 6
// variable isCyan, unique name 0:mainImage59:60:isCyan, index 315, declared at line 417, column 7
// variable h, unique name 0:mainImage59:60:h, index 316, declared at line 421, column 7
// variable f, unique name 0:mainImage59:60:f, index 317, declared at line 422, column 7
// variable roll, unique name 0:mainImage59:60:roll, index 319, declared at line 432, column 7
// variable cw, unique name 0:mainImage59:60:cw, index 320, declared at line 433, column 6
// variable cp, unique name 0:mainImage59:60:cp, index 321, declared at line 434, column 6
// variable cu, unique name 0:mainImage59:60:cu, index 322, declared at line 435, column 6
// variable cv, unique name 0:mainImage59:60:cv, index 323, declared at line 436, column 6
// variable rd, unique name 0:mainImage59:60:rd, index 324, declared at line 437, column 6
// variable col, unique name 0:mainImage59:60:col, index 325, declared at line 443, column 6
// variable distance, unique name 0:mainImage59:60:distance, index 326, declared at line 444, column 7
// references:
// fragCoord at line 412, column 25
// iResolution at line 412, column 40
// xy at line 413, column 11
// vec2 at line 413, column 16
// iResolution at line 413, column 21
// iResolution at line 413, column 35
// mod at line 417, column 16
// fragCoord at line 417, column 20
// mod at line 417, column 34
// fragCoord at line 417, column 38
// cameraPos at line 428, column 1
// CameraPath at line 428, column 16
// camTar at line 429, column 1
// CameraPath at line 429, column 15
// camTar at line 430, column 1
// cameraPos at line 430, column 12
// max at line 430, column 26
// h at line 430, column 31
// sin at line 430, column 47
// iGlobalTime at line 430, column 51
// sin at line 432, column 19
// iGlobalTime at line 432, column 23
// normalize at line 433, column 11
// camTar at line 433, column 21
// cameraPos at line 433, column 28
// vec3 at line 434, column 11
// sin at line 434, column 16
// roll at line 434, column 20
// cos at line 434, column 27
// roll at line 434, column 31
// normalize at line 435, column 11
// cross at line 435, column 21
// cw at line 435, column 27
// cp at line 435, column 30
// normalize at line 436, column 11
// cross at line 436, column 21
// cu at line 436, column 27
// cw at line 436, column 30
// normalize at line 437, column 11
// uv at line 437, column 22
// cu at line 437, column 27
// uv at line 437, column 32
// cv at line 437, column 37
// cw at line 437, column 46
// cameraPos at line 440, column 1
// cu at line 440, column 18
// isCyan at line 440, column 21
// Scene at line 445, column 6
// cameraPos at line 445, column 12
// rd at line 445, column 22
// distance at line 445, column 26
// fragCoord at line 445, column 36
// col at line 468, column 1
// PostEffects at line 468, column 7
// col at line 468, column 19
// uv at line 468, column 24
// col at line 471, column 1
// vec3 at line 471, column 8
// isCyan at line 471, column 14
// isCyan at line 471, column 26
// isCyan at line 471, column 38
// fragColor at line 474, column 1
// vec4 at line 474, column 11
// col at line 474, column 16
// popping activation record 0:mainImage59
// local variables: 
// variable fragColor, unique name 0:mainImage59:fragColor, index 310, declared at line 410, column 25
// variable fragCoord, unique name 0:mainImage59:fragCoord, index 311, declared at line 410, column 44
// references:
// undefined variables 