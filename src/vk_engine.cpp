
#include "vk_engine.h"
#include <iostream>

void VulkanEngine::init()
{
	init_vulkan();
	_isInitialized = true;
	std::cout << "from vulkanengine::init!\n";
}

void VulkanEngine::run()
{
	std::cout << "from vulkanengine::run!\n";
}

void VulkanEngine::init_vulkan()
{
	std::cout << "from vulkanengine::init_vulkan!\n";
}


