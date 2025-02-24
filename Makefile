LOCAL_VK_ENGINE_PATH = src/vk_engine.h #-I$(LOCAL_VK_ENGINE_PATH)

CFLAGS = -std=c++20 -g -O3 -DNDEBUG
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

all: VulkanTest
	./VulkanTest
	@echo "test message"

VulkanTest: main.o vk_engine.o
	g++ $(CFLAGS) -o VulkanTest main.o vk_engine.o $(LDFLAGS)

main.o: src/main.cpp
	g++ $(CFLAGS) -c src/main.cpp

vk_engine.o: src/vk_engine.cpp
	g++ $(CFLAGS) -c src/vk_engine.cpp

clean:
	rm -f *.o VulkanTest