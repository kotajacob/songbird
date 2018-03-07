# `.sroom` Files

These files store all the information needed to for songbird to load your rooms.

## Structure

`.sroom` files are really just simple easily readable and editable CSV style documents. That means each line is a seperate entry like a seperate line in a spreadsheet. Then each value in the line is seperated by a comma making for a basic text only spreadsheet like file.

In fact this csv structure can actually be opened into many spreadsheet editors and makes it simple and easy to make a map editor/generator for songbird.

## ID's

The first value of each line is known as the ID. This is what tells songbird what kind of value you're about to set. One advantage of these ID's is that the order in which the entries are placed in the .sroom file does not matter.

Below is a listing and description of all the ID's which can be used in a .sroom file. (An unknown error will crash the game with and error unless you have ignore errors set. In which case it will ignore the line.)

### size

This value is used to set the size of the room in pixel units.  
*(Note a pixel unit is not nessesarily a physical pixel on your screen. See the doc file screen.md for more info)*

**Example:** `size,640,480`

This example would set the room size to be 640 pixel units wide by 480 tall.

### view_size

This value is used to set the visible area of the room. If you want the full room to be shown either don't include this line or set it to your room's size.  
*(Setting a value larger than your rooms size will crash with an error unless you have ignore errors set. In which case it will truncate the value to the rooms size.)*

**Example:** `view_size,320,240`

This example set the visible area of the room to be 320 pixel units wide by 240 tall.

### follow_object

This value is used to specify and object which the rooms view port will stay centered upon.  
*(Setting follow_object to an object that does not exist will cause a crash unless you have ignore errors set. In which case it will follow no object.)*

**Example:** `follow_object,obj_player`

This example will make the room follow the object called obj_player

### follow_distance

This value is used to specify how far the followed object can be from the center of the screen without the camera moving.

**Example:** `follow_distance,128`

This example will allow the followed object to be up to 128 pixel units in any direction from the center of the visible view area before the camera will move with the object.

### background_color

This value is used to specify a background color for the room. There are three methods for writing the color. The color method is the first item after the ID value. Then the actual color value is next after that.  
*(Note if you place a # symbol before the hex value it is ignored so no worries.)*

**Color methods**

rgb = 0-255,0-255,0-255
rgb2 = 0-1,0-1,0-1
hex = #f4f4f4

Use whichever is most cnvenient for you.

**Example:** `background_color,rgb,46,52,64`
**Example:** `background_color,hex,2E3440`

### background_image

This value is used to specify and image to be drawn over the background. There are a few different draw modes for how you want the image to be rendered.

**Draw modes**

stretch = Stretch the image to cover the full background size. (default)
static = No image manipulation is done. The image is simply drawn from the top left corner.
center = The image is drawn centered in the room.

**Example:** `background_image,stretch,img_main_menu`

This will draw the image named img_main_menu stretched to fit in the room.

### tile

This value is used to render a piece of a tileset as a background of the room.
*(Note tile sets are rendered above the room background but below all objects)*

The first item after the ID is the image being used as a tile set. Then the starting cords in the image, then the width and height. Then the top left cord in the room.

**Example:** `tile,img_grass_tiles,32,0,32,32,0,0`

The above example will load a 32 pixel wide by 32 pixel tall tile from img_grass_tiles starting at the point x = 32, y = 0. Then it will render it into the room at point x = 0, y = 0.

### object

This value is used to load instances of objects into the room. The only required value is the objects name after the ID. Although you'll likely also want to pass some variables to the new instanced object. To pass a variable you simply add another value in the format variable=value.

**Example** `object,obj_player,x=150,y=200`

The above example would create and load an instance of the object named obj_player. Then it would set two variables for this new instance x = 150 and y = 200.

When objects are loaded as instances into a room the order matters. The first object loaded in has an instance ID of 1 and so on increasing by 1 with each object loaded after that.
