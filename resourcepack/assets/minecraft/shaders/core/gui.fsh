#version 330
#extension GL_ARB_separate_shader_objects : require

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    mat4 TextureMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
};

layout(location = 0) in vec4 vertexColor;

layout(location = 0) out vec4 fragColor;

layout(location = 1) in float yPos;

bool is_sidebar_bg(vec4 a) {
    return a.r == 0 && a.g == 0 && a.b == 0 && a.a < 0.3 && a.a > 0.29;
}

bool is_sidebar_header_bg(vec4 a) {
	return a.r == 0 && a.g == 0 && a.b == 0 && a.a == 0.4;
}

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;

    //if(is_sidebar_header_bg(fragColor)){
    //    // Gradient left to right from green to transparent black
    //    fragColor = vec4(1.0, 0.9529411764705882, 0.8509803921568627, 1.0);
    //}
//
    //if(is_sidebar_bg(fragColor)){
    //    // The top of this area should be black and gradient to rgb(255, 243, 217)
	//	fragColor = vec4(1.0, 0.9529411764705882, 0.8509803921568627, 1.0);
	//}

}