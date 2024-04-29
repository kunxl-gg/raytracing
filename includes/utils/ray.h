#ifndef RAY_H
#define RAY_H
#include <glm/glm.hpp>

class Ray {
public:
    Ray(glm::vec3 origin, glm::vec3 direction);
    glm::vec3 point(float t);
    const glm::vec3& direction();
    const glm::vec3& origin();
private:
    glm::vec3 orig;
    glm::vec3 dir;
};

#endif // !RAY_H
