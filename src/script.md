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

# Edit This Section
This following code block is the only thing you need to edit. It is the path to the directory where all of the photos you want to analyze are located. Be sure to make sure that you are providing a global path to the directory where all of the photos you want to analyze are located.


```python
# =================================================================
#                      Edit this string
file_path_to_images = '/Users/sammyrobens-paradise/Desktop/lights'
# =================================================================

```

## Install Dependencies


```python
# install dependencies
import numpy as np
import matplotlib.pyplot as plt
```
