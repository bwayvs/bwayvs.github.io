# This line imports or includes the library we will need
from PIL import Image
background = input("What kind of background do you want? Type FIELD or BEACH:  ")
foreground = input("What do you want to be in the picture? Type CAT or PENGUIN: ")


beach_original = Image.open(f"{background}.jpg")
cat_original = Image.open(f"{foreground}.jpg")

width, height = beach_original.size

beach_original_pixels = beach_original.load()
cat_original_pixels = cat_original.load()

cat_original.save("foreground.jpg")
beach_original.save("background.jpg")

#creates new image beach image in RGB format in the same size as original image and assigns variable
cat_at_beach = Image.new("RGB", beach_original.size)

cat_at_beach_pixel = cat_at_beach.load()

#cat_at_beach.save("cat_at_beach.jpg")

for y in range(0, 600):
    for x in range(0, width):
        (r, g, b) = cat_original_pixels[x,y]
        if (g > 200 and r < 180 and b < 200):
            r, g, b = beach_original_pixels[x,y]
            cat_at_beach_pixel[x,y] = (r, g, b)
        else:
            r, g, b = cat_original_pixels[x,y]
            cat_at_beach_pixel[x,y] = (r, b, g)

cat_at_beach.save("new_photo.jpg")
cat_at_beach.show()

