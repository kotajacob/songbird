# Object Events

Below is a listing and description of all the usable events for your objects categorized by type.


## Main game events

### start
Called exactly once when the game starts.

### quit
Called when the game is closed.

### create
Called exactly once when the listening instance is created.

### pre-step
Called at the beggining of a new frame update.

### step
Called at each new frame update.

### post-step
Called at the end of a new frame update.

### pre-draw
Called at the beggining of a new frame to draw graphics.

### draw
Called at each new frame to draw graphics.

### post-draw
Called at the end of a new frame to draw graphics.

### lowmemory
Called when the system is running out of memory on mobile devices. 


## Window events

### directorydropped
Called when a directory is dropped onto the game window.

### filedropped
Called when a file is dropepd onto the game window.

### windowvisible
Called when the game window gains or looses visibility.

### focus
Called when the game window gains or looses focus.

### mousefocus
Called when the game window gains or looses focus from the mouse.


## Input events

### keypressed
Called when a key is being pressed down.

### keyreleased
Called when a key has been released.

### mousemoved
Called when the mouse moves.

### mousewheel
Called when the mousewheel moves.

### mousepressed
Called when a mouse button is pressed.

### mousereleased
Called when a mouse button is released.

### textinput
Called each time "text" is input. 
(Similar to keypressed but Shift+2 would return @ for example)

### touchpressed
Called when the touchscreen is touched.

### touchreleased
Called when a touchscreen press is released.

### touchmoved
Called when a touchscreen press is moved.
