# car-controls
A Standalone FiveM Script that adds Car Controls using NUI functionality.

**Features**:
- Adds turning off/on the vehicle's engine
- Opening all sorts of doors in the vehicle
- Adds opening windows mechanism
- Adds turning off/on the vehicle's interior lights
- Allowing the player the move between seats in vehicle
- Adds signal lights functionality using the arrow keys ←↑→
- Disables GTA5 default HUDs

**Usage**:
- Press `Config.OpenKey` while inside a vehicle to open the car control's menu.
- In order to change the key opening the menu, open `client/config.lua` and set `Config.OpenKey` to a key from this [Key Mappings List](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/)
- You can decide whether to disable the GTA5 default HUDs in the `client/config.lua` by setting `Config.DisableGTA5Defaults` accordingly.
- Also you can decide which GTA5 HUD elements you want to disable, in `client/gta5_hud.lua` you'll find the `HUD_ELEMENTS` local table. You can modify the `hidden` value in the tables accordingly.

**Preview**:

![unknown](https://i.ibb.co/6ytPxRS/image.png)

**Contact Me**:
- **__Discord__**: finalLy#1138
