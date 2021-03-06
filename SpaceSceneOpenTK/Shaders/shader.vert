﻿#version 330 core

layout(location = 0) in vec3 aPosition;
layout(location = 1) in vec2 aTexCoord;

uniform mat4 view;
uniform mat4 projection;
uniform mat4 state;
uniform float time;

out vec2 texCoord;

void main(void)
{
    texCoord = aTexCoord;
    gl_Position =  vec4(aPosition.x + sin((time + aPosition.y)*6)/10 , aPosition.y , aPosition.z, 1.0) * state * view * projection;
}