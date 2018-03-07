# Resources

In songbird every game you make is put together and run using a few different simple resources. Below is a listing of the standard resources and breifly what they are used for.

## Rooms

Rooms are used to store all stuff you want to show to the player. They store all the actively loaded resources and at least one room is needed to run a game. Rooms are loaded from .sroom files, a custom file type introduced by songbird, they then create all the objects and draw the background as specified.

For example a typical pong game might have three rooms. A main menu, a game room, and finally a score board room.

More information on rooms can be found in rooms.md or for information about .sroom files there is sroom_files.md.

## Objects

Objects are the heart of your game. They contain a number of different events which can trigger a number of different actions when a certain thing in the game happens. They are also used to draw sprites and images, play sounds, and keep score of any and all variables needed in your game world. When an object is loaded into a room the object itself isn't actually loaded. Instead an instance of that object is loaded in which allows for having many of the same object on the screen in different places doing different things at the same time. Bullets from a character's gun is a good example of why instances are important.

For example a typical pong game might have an object for player one's paddle, one for player two's paddle, one for the ball, and possibly another one simply to keep score and decide who won.

More information on objects can be found in objects.md. For a listing of all the events and actions available to objects check out events.md and actions.md respectively.
