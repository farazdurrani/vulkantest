CFLAGS = -std=c++17 -g -O3 -DNDEBUG
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: ../../src/21_index_buffer.cpp
	g++ $(CFLAGS) -o VulkanTest ../../src/21_index_buffer.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest