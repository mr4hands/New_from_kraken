# KinematicCharacter2D
The KinematicCharacter2D is a custom class that i created, it extends the basic KinematicBody2D but adds the following functionalities.

```func move(right = "move_right", left="move_left", up="move_up", down="move_down"):```
the function takes the directions input by default. you can pass on what ever names you used.
it calculates the direction as we always do, by taking into account the speed which is instantiated at the beginning.

``func aim():``
Calculates the angle to the mouse position and rotates the character accordingly, this can be turned off with from the editor by exported var ``is_ai,m_at_mouse`` 

``func attack():``

``func process_character()``:
right now it is used to kill player when health reaches zero or below. but will be used to calculate character's changed throughout the game process

there are different vars for this new Node, all can be override but allows the developer to extend from this class and get the basic functionality of a player.

Just create ``other node`` and look for KinematicCharacter2D in the node tree. than right click on the node in the editor and choose ``extend script``, that will give you a new script that extends KinematicCharacter2D. 
you can run your gave without anything else and your player will be able to move and aim with the mouse. all you need to do now is build on top of it.
