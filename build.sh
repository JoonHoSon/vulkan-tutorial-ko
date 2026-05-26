#!/bin/bash

if [ ! -d "build" ]; then
    mkdir build
fi

cp -R ./assets ./build

asciidoctor -a stylesheet=./assets/stylesheet.css -D ./build ./*.adoc
asciidoctor -a stylesheet=../assets/stylesheet.css -D ./build/Setup ./Setup/*.adoc
asciidoctor -a stylesheet=../assets/stylesheet.css -D ./build/Presentation ./Presentation/*.adoc
asciidoctor -a stylesheet=../assets/stylesheet.css -D ./build/GraphicsPipelineBasics ./GraphicsPipelineBasics/*.adoc
