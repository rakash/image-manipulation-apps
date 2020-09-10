![](https://github.com/rakash/image-manipulation-apps/blob/master/img.png?raw=true)


# Image Manipulation App

![The App](https://the-image-app.et.r.appspot.com/) has been tested with jpg, png and bmp formats and is able to flip, rotate and crop an image, as well as blending two images, either RGB or gray scale and also scan images. 

Works fine. may not work now due to deployment issues.


## Getting started

The API includes three Python files:
* `core.py`: includes the basic calls of the API. Run the file and use `GET` requests on `localhost:5000`. For more details please refer to the documentation section in this file.
* `app.py`: a web application to test the functionality that serves as a proof of concept. Run it, navigate to `localhost:5000` and follow the instructions. For more details please refer to the documentation section in this file.
* `test.py`: a file to test API requests by checking the received http status codes. core.py` needs to be running.

### Operations

### Flip
``` http
GET /flip/<mode>/<filename>
```
where `mode` can either be `vertical` or `horizontal` and `filename` is the image file name, including extension and relative to the images folder. Browser input example:

![](https://github.com/rakash/image-manipulation-apps/blob/master/flip.png?raw=true)

### Rotate
``` http
GET /rotate/<angle>/<filename>
```
where `angle` can take any value between 0 and 359 degrees. A positive value indicates clockwise rotation, whereas a negative one indicates counter-clockwise rotation. `filename` is the image file name, including extension and relative to the images folder. Browser input example:

![](https://github.com/rakash/image-manipulation-apps/blob/master/rotate.png?raw=true)

### Scan

Upload the image and hit scan and get a scanned image.

![](https://github.com/rakash/image-manipulation-apps/blob/master/scannes.png?raw=true)


### Crop

with the start and stop point coordinates, (`x1, y1`) and (`x2, y2`), respectively. `filename` is the image file name, including extension and relative to the images folder. Browser input example:

### Blend

where `alpha`, in % (between 0 and 100), is the weight of the first image in the blend. `filename1` and `filename2` specify the images to blend. If one of them is in gray scale, the other one will be converted automatically. Antialias resizing is also done behind the curtains. Browser input example:


## Web application
To test the app localy, run `app.py` and navigate to `localhost:5000`. Otherwise, navigate to the live demo.

## License
This API is provided under the MIT license.

## Issues
Report any issue to the GitHub issue tracker.
