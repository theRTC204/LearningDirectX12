workspace "LearningDirectX12"
    configurations { "Debug", "Release" }
    architecture "amd64"

    location ("../../temp/solutions/" .. _ACTION)

project "LearningDirectX12"
    kind "WindowedApp"
    language "C++"

    targetdir ("../../temp/bin/" .. _ACTION)
    objdir ("../../temp/obj/" .. _ACTION)
    location ("../../temp/solutions/" .. _ACTION .. "/LearningDirectX12")

    includedirs { "../../extern/**" }
    files { "../../src/**.h", "../../src/**.cpp" }

    filter { "configurations:Debug" }
        defines { "_DEBUG" }
        symbols "On"

    filter { "configurations:Release" }
        optimize "On"
