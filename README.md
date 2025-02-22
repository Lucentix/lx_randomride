# lx_randomride

A simple FiveM script that spawns a random vehicle from a predefined list.

## Features
- Spawn a random vehicle from a list with the `/spawnride` command.
- Includes a notification for the player once the vehicle is spawned.
- Easily customizable vehicle list.

## Installation
1. Download and place `lx_randomride` in your FiveM server's resources folder.
2. Add the resource to your `server.cfg` by adding the following line:
   ```
   start lx_randomride
   ```

## Usage
Once the script is installed and the server is running, use the following command in the chat:
```
/spawnride
```

This will spawn a random vehicle from the list. The vehicles available for spawning are:
- Adder
- Zentorno
- Infernus
- Schafter3
- Cogcabrio
- Baller
- Dune

A notification will appear confirming the vehicle has been spawned successfully.

## Script Configuration
The list of vehicles can be modified in the `client.lua` file. Simply add or remove vehicle models from the `vehicleList` table to suit your preferences.

```lua
local vehicleList = {
    "adder",
    "zentorno",
    "infernus",
    "schafter3",
    "cogcabrio",
    "baller",
    "dune",
}
```

## Dependencies
- [ox_lib](https://github.com/overextended/ox_lib) - Required for the notification system and other features.

## License
This script is under the [MIT LICENSE](LICENSE).