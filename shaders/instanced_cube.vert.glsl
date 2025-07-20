#version 330 core
layout(location = 0) in vec3 aPos;      // Cube vertex
layout(location = 1) in vec3 instancePos; // Particle position from VBO

uniform mat4 view;
uniform mat4 proj;

void main() {
    mat4 model = mat4(1.0);
    model = translate(model, instancePos);
    gl_Position = proj * view * model * vec4(aPos, 1.0);
}
