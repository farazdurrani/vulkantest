CFLAGS = -std=c++17 -O2 -DNDEBUG
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: ../../05_window_surface.cpp
	g++ $(CFLAGS) -o VulkanTest ../../05_window_surface.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest