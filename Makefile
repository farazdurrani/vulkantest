TINYOBJ_INCLUDE_PATH = /home/faraz/libraries/tinyobjloader
STB_INCLUDE_PATH = /home/faraz/libraries/stb

CFLAGS = -std=c++20 -I$(STB_INCLUDE_PATH) -I$(TINYOBJ_INCLUDE_PATH) -g -O3 -DNDEBUG
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: ../../src/30_multisampling.cpp
	g++ $(CFLAGS) -o VulkanTest ../../src/30_multisampling.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest