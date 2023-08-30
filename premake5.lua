project "spdlog"
    kind "StaticLib" -- Static library project
    language "C++"
    cppdialect "C++11"
    staticruntime "on"
    
    -- Add your source files here
    files {
        "include/**.h",
        "src/**.cpp"
    }

    includedirs { "include" }

    defines
    {
        "SPDLOG_COMPILED_LIB"
    }
    
    filter "system:windows"
        architecture "x86_64"
    
    filter "system:linux"

    filter "system:macosx"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"