project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
	}

	filter "system:windows"
        systemversion "latest"

	filter {"system:windows", "configurations:Debug"}
        buildoptions "/MTd"
		runtime "Debug"
		symbols "on"

	filter {"system:windows", "configurations:Release"}
        buildoptions "/MT"
		runtime "Release"
		optimize "on"