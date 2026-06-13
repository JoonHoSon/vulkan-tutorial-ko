@echo off

if not exist ".\build" md "build"

robocopy ".\assets" ".\build\assets" /e

echo "Root documents build..."
asciidoctor -a stylesheet=.\assets\stylesheet.css -D .\build .\*.adoc

echo "Setup documents build..."
asciidoctor -a stylesheet=..\assets\stylesheet.css -D .\build\Setup .\Setup\*.adoc

echo "Presentation documents build..."
asciidoctor -a stylesheet=..\assets\stylesheet.css -D .\build\Presentation .\Presentation\*.adoc

echo "GraphicsPipelineBasics documents build..."
asciidoctor -a stylesheet=..\assets\stylesheet.css -D .\build\GraphicsPipelineBasics .\GraphicsPipelineBasics\*.adoc

echo "Drawing documents build..."
asciidoctor -a stylesheet=..\assets\stylesheet.css -D .\build\Drawing .\Drawing\*.adoc