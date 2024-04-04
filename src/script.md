# How You Take Photos

This is a python script that visualizes the settings that you have on your camera across a set of photos you take


/Users/sammyrobens-paradise/Desktop/lights


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
from PIL import Image, ExifTags
from PIL.ExifTags import TAGS
from typing import TypedDict
import glob
import os
```

Input the file path to the folder containing the images you want to visualize



```python
# path_to_image_dir = input("Enter the complete path to the image folder")
path_to_image_dir = "/Users/sammyrobens-paradise/Desktop/lights"
print("Loading images from " + path_to_image_dir + "...")

directory = os.fsencode(path_to_image_dir)
image_paths = glob.glob(path_to_image_dir + "/*")
num_images = len(image_paths)
print(str(num_images) + " images found in " + path_to_image_dir)
```

    Loading images from /Users/sammyrobens-paradise/Desktop/lights...
    162 images found in /Users/sammyrobens-paradise/Desktop/lights



```python
# Define all our classes, types and helper functions
class Exif(TypedDict):
    ResolutionUnit: int
    ExifOffset: int
    Make: str
    Model: str
    Software: str
    DateTime: str
    XResolution: float
    YResolution: float
    ExitVersion: bytes
    ShutterSpeedValue: float
    ApertureValue: float
    DateTimeOriginal: str
    DateTimeDigitized: str
    ExposureBiasValue: float
    MaxApertureValue: float
    MeteringMode: int
    ColorSpace: int
    Flash: int
    FocalLength: float
    ExposureMode: int
    WhiteBalance: int
    SceneCaptureType: int
    FocalPlaneXResolution: float
    FocalPlaneYResolution: float
    OffsetTime: str
    SubsecTimeOriginal: str
    SubsecTimeDigitized: str
    FocalPlaneResolutionUnit: int
    ExposureTime: float
    FNumber: float
    ExposureProgram: int
    CustomRendered: int
    ISOSpeedRatings: int
    SensitivityType: int
    RecommendedExposureIndex: int
    LensSpecification: list[float, float, float, float]
    LensModel: str
    LensSerialNumber: str


class ImageMetadata:
    def __init__(self, filepath: str):
        source = Image.open(filepath)
        self.source = source
        self.exif: Exif = {
            ExifTags.TAGS[k]: v
            for k, v in source._getexif().items()
            if k in ExifTags.TAGS
        }

```

## Generate a `data` list
The list contains all of our images and their standard `exif` tagged metadata stored as an `ImageMetadata` object


```python
data = []
for path in image_paths:
    curImage = ImageMetadata(path)
    data.append(curImage)
```

## Now lets get into plotting some data...

### Resolutions
lets plot the focal plane resolutions of the pictures that you take as $(x,y)$ coordinates


```python

```
