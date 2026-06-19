@echo off

if not exist ".\build" md "build"

robocopy ".\assets" ".\build\assets" /e

echo "Root documents build..." 
asciidoctor -a stylesheet=D:\dev\vulkan-tutorial\document\assets\stylesheet.css -D D:\dev\vulkan-tutorial\document\build D:\dev\vulkan-tutorial\document\*.adoc

echo "Setup documents build..." 
asciidoctor -a stylesheet=D:\dev\vulkan-tutorial\document\assets\stylesheet.css -D D:\dev\vulkan-tutorial\document\build\Setup D:\dev\vulkan-tutorial\document\Setup\*.adoc

echo "Presentation documents build..."
asciidoctor -a stylesheet=D:\dev\vulkan-tutorial\document\assets\stylesheet.css -D D:\dev\vulkan-tutorial\document\build\Presentation D:\dev\vulkan-tutorial\document\Presentation\*.adoc

echo "GraphicsPipelineBasics documents build..."
asciidoctor -a stylesheet=D:\dev\vulkan-tutorial\document\assets\stylesheet.css -D D:\dev\vulkan-tutorial\document\build\GraphicsPipelineBasics D:\dev\vulkan-tutorial\document\GraphicsPipelineBasics\*.adoc

echo "Drawing documents build..."
asciidoctor -a stylesheet=D:\dev\vulkan-tutorial\document\assets\stylesheet.css -D D:\dev\vulkan-tutorial\document\build\Drawing D:\dev\vulkan-tutorial\document\Drawing\*.adoc