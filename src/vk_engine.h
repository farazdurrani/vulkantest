﻿// vulkan_guide.h : Include file for standard system include files,
// or project specific include files.

#pragma once

#include "vk_types.h"
#include <vector>

class VulkanEngine {
public:

	bool _isInitialized{ false };
	int _frameNumber {0};

	//initializes everything in the engine
	void init();

	//run main loop
	void run();

	bool stop_rendering{false};
private:

	void init_vulkan();

};
