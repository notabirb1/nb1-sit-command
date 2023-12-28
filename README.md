# notabirb1's Sit Command (1.18.2)
A simple 1.18.2 datapack that adds a sit command.
## Usage
- Install like a regular datapack - either move to `datapacks` folder or add at world creation.
- To sit, run `/trigger sit` *(This does **not** require operator privileges!)*
- After running the command, a saddle will appear below you. When you sit on it, the saddle will disappear.
- After standing up, the seat will remain until you move 1 block away from it in any direction.

## Why 1.18.2?
Many datapacks exist for versions past 1.19.4 that add a sit command. This is due to the addition of the `/ride` command, making it much simpler.  
I haven't seen any datapacks for 1.18.2 that add sitting in the form of a command, so I made it myself.

## Compatibility
While this datapack was made for 1.18.2, it should (in theory) work on any version past 1.14 (snapshot 18w43a)

<details>
<summary>Technical Info / Potential Performance Issues</summary>

This datapack uses the `trigger` command, meaning it runs a scoreboard to check when the command is run. This is updated every tick. Additionally, the datapack checks for players sitting on seats (to remove the saddle) and for when players walk away from seats (to "despawn" them by teleporting them to y=-256) every tick. This could potentially cause lag, depending on your hardware.

</details>
