# mtxTextUI [FREE][STANDALONE]

Hello! I created this **FiveM script** a few years ago and have decided to publish it since it no longer serves a purpose for me. While the code isn’t my best work, I’ve made it available for free.

## Features
* Lightweight
* 0.00ms idle time (0.01ms during activity)
* Close with a key
* Easy-to-understand code
* Standalone
* Simple to use with pre-made colors, exports, and trigger events
* Supports HTML with pre-written styles
* Includes features for tables, lists, progress, etc.
* Discord logs via webhooks

## Preview
![UI Showcase](https://forum-cfx-re.akamaized.net/original/5X/e/8/e/1/e8e1a30b593223eb8f6ed383de3924914003c0f8.jpeg)
![Progress](https://forum-cfx-re.akamaized.net/original/5X/6/3/1/3/6313978d9328a6fac524d9631c828f84a88c83ad.png)
![resmon active](https://forum-cfx-re.akamaized.net/original/5X/3/7/7/b/377b3f094bff5645ab2e8ff3e3898f5a9b451439.png)
![resmon idle](https://forum-cfx-re.akamaized.net/original/5X/1/6/4/a/164af43b9fd86d22411572345cc155ed026675f6.png)
![List](https://forum-cfx-re.akamaized.net/original/5X/e/e/6/2/ee62bdda246b73ebc92ee85123eb054ef7ef0d55.png)
![Table](https://forum-cfx-re.akamaized.net/original/5X/e/3/6/4/e364b4bc0e04f72c0277ca1d0e679efdd6feeb61.png)

## How to install
* Put the script into your `resources` folder (or make a new folder `[mtx]` in your resources).
* Ensure the script is in `server.cfg`.
```
ensure mtxTextUI
```
or
```
ensure [mtx]
```

## Usage
* Usage with exports
```lua
-- Opening the UI
exports.mtxTextUI.Open("Title", "Message<br>With HTML Support", "color")

-- Closing the UI
exports.mtxTextUI.Close()
```
* Server-side usage
```lua
-- Opening the UI
TriggerClientEvent("mtxTextUI:Open", ID, "Title", "Message<br>With HTML Support", "color")

-- Closing the UI
TriggerClientEvent("mtxTextUI:Close", ID)
```
* Client-side usage
```lua
-- Opening the UI
TriggerEvent("mtxTextUI:Open", "ID", "Title", "Message<br>With HTML Support", "color")

-- Closing the UI
TriggerEvent("mtxTextUI:Close", "ID")
```
## Default Color Values

* Blue
* Grey
* Green
* Red

## Using the HTML
There are showcases in client.lua to demonstrate the HTML usage.

### Preview showcases with command
There are multiple commands to test the UI; just enable debug in the config.
```lua
Config = {
    CloseKey = 194,
    Debug = true
}
```
Sure, here are the commands:

* /uitext
* /uilist
* /uitable
* /uiprogress

You can use these commands in the chat to test the UI.
## Code Customization

Feel free to modify the code to suit your needs. If you decide to publish an edited version, please credit me in the `fxmanifest` and your post or repository.

## Need Assistance?

If you’re stuck in the code, feel free to DM me on Discord: `mathex_`
---

I hope this helps! If you have any further questions or need additional assistance, don’t hesitate to ask. 😊
