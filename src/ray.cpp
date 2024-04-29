#include <utils/ray.h>
#include <glm/glm.hpp>

Ray::Ray(glm::vec3 origin, glm::vec3 direction) {
    orig = origin;
    dir = direction;
}

glm::vec3 Ray::point(float t) {
    return orig + dir * t;
}

const glm::vec3& Ray::direction() {
    return dir;
}

const glm::vec3& Ray::origin() {
    return orig;
}
