# car-controls
A Standalone FiveM Script that adds Car Controls using NUI functionality.

## Support

<table>
    <tr>
        <th>Personal Account</th>
        <td><img src="https://dcbadge.limes.pink/api/shield/311897788206153730" alt="" /></td>
    </tr>
        <th>Discord Server</th>
        <td><a target="_blank" href="https://discord.gg/W8msjQaev4"><img src="https://dcbadge.limes.pink/api/server/W8msjQaev4" alt="" /></a></td>
    </tr>
</table>

## Features
- Adds turning off/on the vehicle's engine
- Opening all sorts of doors in the vehicle
- Adds opening windows mechanism
- Adds turning off/on the vehicle's interior lights
- Allowing the player the move between seats in vehicle
- Adds signal lights functionality using the arrow keys ←↑→
- Disables GTA5 default HUDs

## Usage
- Press `Config.OpenKey` while inside a vehicle to open the car control's menu.
- In order to change the key opening the menu, open `client/config.lua` and set `Config.OpenKey` to a key from this [Key Mappings List](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/)
- You can decide whether to disable the GTA5 default HUDs in the `client/config.lua` by setting `Config.DisableGTA5Defaults` accordingly.
- Also you can decide which GTA5 HUD elements you want to disable, in `client/gta5_hud.lua` you'll find the `HUD_ELEMENTS` local table. You can modify the `hidden` value in the tables accordingly.

## Preview

![unknown](https://i.ibb.co/6ytPxRS/image.png)

## License

This project is under MIT license. See the file [LICENSE](LICENSE) for more details.

