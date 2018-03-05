# `songbird`

A [love2D](https://love2d.org/) game engine extender 🕊️

**Currently songbird is in the early development stages and the first pre-release version is yet to be released.**


## Introduction

[Love2D](https://love2d.org/) describes itself by saying "LÖVE is an \*awesome\* framework you can use to make 2D games in Lua." 

It provides you with simple graphical rendering bindings in [Lua](https://www.lua.org/) for rendering graphics, playing audio, video, and all the other basic
tools needed to make a game. 

Songbird comes into the picture by providing a basic setup for a games code 
and various functions to design object oriented games with love. In addition to providing base code there are 
also guidelines and examples in the docs folder showing the typical method of development with songbird.


## General Usage

There are a few different types of resources provided in songbird to create your game or project with.
A detailed description of each can be found in docs/resources.md or for each resource a guide on using it 
can be found in that same directory named after the resource in question.

 * Rooms
 * Objects
 * Sprites
 * Sounds
 * Images
 * Scripts
 * Fonts
 * Videos
 * Particles


## Versioning

Songbird uses [the standard semantic versioning system](https://semver.org/) described below.
 
The version numbers are in the format of **MAJOR.MINOR.PATCH**

A **MAJOR** version is increased whenever a system is changed in songbird that breaks backward compatibility or removes a feature.
Each time songbird updates to use a new version of love the major version will likely need updated.

A **MINOR** version is increased when new functionality is added but that will not break compatibility.

A **PATCH** is added for bug fixes and other minor changes that don't break compatibility.

In other words updating or using anything in the same **MAJOR** version number wont change anything. 
That said it's usually suggested to pick one version per game and update only if needed.


## License

Songbird is licensed under the very permissive MIT license so feel free to use it for commercial and non-commercial projects alike. The legal text of the license is stored in the LICENSE file with the project. It's a very short and simple license although an even easier to read version can be found here on [TLDRlegal.](https://tldrlegal.com/license/mit-license)

For third-party libraries included with songbird look in the libs folder for the files ending with `license.txt`. They will only be included if they are licensed under the MIT or a more permissive license. Below is a list of all the third-party libraries included.

 * [classic (modified)](https://github.com/rxi/classic) - by rxi - MIT
 * [autobatch](https://github.com/rxi/autobatch) - by rxi - MIT

