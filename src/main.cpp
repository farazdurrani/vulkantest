#include "vk_engine.h"
#include "vk_types.h"
#include <iostream>

int main(int argc, char* argv[])
{
	std::cout << "from main!" << std::endl;

	VulkanEngine engine;

	engine.init();	
	
	engine.run();

	return 0;
}
