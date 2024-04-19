#version 330 core
out vec4 FragColor;
in vec3 fragPos;

uniform vec4 lightPos;
uniform vec4 lightColor;

void main() {
    vec4 objectColor = vec4(1.0, 0.5, 0.31, 1.0);
    // ambient
    float ambientStrength = 0.1;
    vec3 ambient = ambientStrength * lightColor.rgb;
    // diffuse
    vec3 norm = normalize(fragPos);
    vec3 lightDir = normalize(lightPos.rgb - fragPos);

    float diff = max(dot(norm, lightDir), 0.0);

    vec3 diffuse = diff * lightColor.rgb;
    vec4 finalColor = vec4(diffuse + ambient, 1.0) * objectColor;
    FragColor = finalColor;
}
