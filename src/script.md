# How You Take Photos
This is a python script that visualizes the settings that you have on your camera across a set of photos you take

## Include All the Dependencies
First you will need:
- [Python 3](https://www.python.org/downloads/)
- [Homebrew](https://brew.sh)
- [pip](https://pip.pypa.io/en/stable/installation/) (You can also use Conda but)
- [Juypter Notebook](https://jupyter.org/install)

lets include all the depdencies. Before you begin, make sure you have installed the depencies.
You can do this by running `Make install` which will install the dependencies in `requirements.text`. You can also manually install the dependencies listed below.

## Install Dependencies


```python
# install dependencies
import numpy as np
import matplotlib.pyplot as plt
from PIL import Image
from PIL.ExifTags import TAGS
import os
```

Input the file path to the folder containing the images you want to visualize


```python
path_to_image_dir = input("Enter the complete path to the image folder")
print("Loading images from " + path_to_image_dir + "...")

directory = os.fsencode(path_to_image_dir)

images = os.listdir(directory)
num_images = len(images)
print(str(num_images) + " images found in " + path_to_image_dir)

```

    Loading images from /Users/sammyrobens-paradise/Desktop/lights...
    163images found in /Users/sammyrobens-paradise/Desktop/lights

