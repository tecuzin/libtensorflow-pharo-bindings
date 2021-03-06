# libtensorflow-pharo-bindings

This is a fork of https://github.com/Cuis-Smalltalk/Machine-Learning for Pharo.

You will need a 64 bits Pharo VM in order to run the code. The code has only be tested on Pharo 7.0 on macOS and Windows with TensorFlow 1.8: https://github.com/tensorflow/tensorflow/releases/tag/v1.8.0

## Installation

- Install Pharo 7.0 64 bit VM and image from the command line : https://pharo.org/download
- Fix the following method (or you will have crashes):
```Smalltalk
FFIExternalStructureType>>basicHandle: aHandle at: index put: value
	^ LibC memCopy: value getHandle to: aHandle + (index - 1) size: self externalTypeSize
  ```
- Use Iceberg to load the code of this repository

## Installation of TensorFlow on MacOS
- Install TensorFlow on your computer. On macOS, the simpliest way to do that is to use Brew:
```brew install tensorflow```
- modify ```TensorFlowCAPI>>macModulename```to put the path to where Tensorflow libraries are located on your computer:
```Smalltalk
TensorFlowCAPI>>macModulename
  ^ '/usr/local/Cellar/libtensorflow/1.8.0/lib/libtensorflow.so'
  ```
## Installation of TensorFlow on Windows
