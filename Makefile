BUILD_DIR = ./bin
APP_NAME = build
C_FILES = ./src/*.cpp
IMGUI_FILES = ./includes/imgui/*.cpp
ROOT_DIR = $(shell pwd)
GLAD_FILE = $(ROOT_DIR)/includes/glad.c

CXX := clang++
CXXFLAGS := -std=c++20 -lglfw3 -lassimp -framework Cocoa -framework OpenGL -framework IOKit
APP_INCLUDES:= -I$(ROOT_DIR)/includes/ -I/$(ROOT_DIR)/includes/imgui/
APP_LINKERS:= -L$(ROOT_DIR)/lib/

# Define targets
all: $(BUILD_DIR)/$(APP_NAME)

$(BUILD_DIR)/$(APP_NAME): $(C_FILES) $(GLAD_FILE) $(IMGUI_FILES)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(APP_INCLUDES) $(APP_LINKERS)

run: $(BUILD_DIR)/$(APP_NAME)
	@./$<

clean:
	@rm -rf $(BUILD_DIR)

log:
	@echo $(ROOT_DIR)

.PHONY: all run clean log
