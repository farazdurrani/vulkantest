STB_INCLUDE_PATH = /home/faraz/stb

CFLAGS = -std=c++17 -I$(STB_INCLUDE_PATH) -g -O3 -DNDEBUG
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: src/26_texture_mapping.cpp
	g++ $(CFLAGS) -o VulkanTest src/26_texture_mapping.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest