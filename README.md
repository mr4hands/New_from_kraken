### Information regarding States and States machine:
 https://www.gdquest.com/tutorial/godot/design-patterns/finite-state-machine/#:~:text=Split%20an%20object's%20finite%20number,often%20represented%20as%20a%20graph.

This is the tutorial i followed.

This tutorial explain the design pattern of state_machine.
basically, it creates a new Node called StateMachine which is responsible of the management of the states and transition between the states.
another new node is State that handles the logic of the transition between states.

That way, the developer can control the states (run, idle, attack) of a scene (say player).

all that is needed to do is add a StateMachine to the player and the States wanted as children of the StateMachine node.

```
Player
|_StateMachine
  |_Run
  |_Idle
  |_Move
  |_Attack
```
