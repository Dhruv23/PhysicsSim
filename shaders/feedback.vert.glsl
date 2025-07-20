#version 330 core
layout(location = 0) in vec3 in_position;
layout(location = 1) in vec3 in_velocity;
out vec3 tf_position;
out vec3 tf_velocity;

uniform float dt;

void main() {
    // Integrate velocity, basic bounds, and gravity example
    vec3 pos = in_position + in_velocity * dt;
    vec3 vel = in_velocity + vec3(0, -0.8, 0) * dt; // Gravity

    // Simple bounce off floor
    if (pos.y < -4.0) {
        pos.y = -4.0;
        vel.y *= -0.8;
    }

    tf_position = pos;
    tf_velocity = vel;
}
