# mtxTextUI [FREE][STANDALONE]

Hello! I created this script a few years ago and have decided to publish it since it no longer serves a purpose for me. While the code isn’t my best work, I’ve made it available for free.

## Features

* Lightweight
* 0.00ms idle time (0.01ms during activity)
* Close with a key
* Easy-to-understand code
* Standalone
* Simple to use with pre-made colors, exports, and trigger events
* Supports HTML with pre-written styles
* Includes features for tables, lists, progress, etc.

## Preview
![uishowcase|690x388, 100%](upload://xeacgWm3D5eNFfzDcMwSlA3J8SY.jpeg)
![uiprogress|419x300, 100%](upload://e8tfcJOpCyKvzKeQXyrbfYUVmbP.png)
![uiresmonactive|401x433](upload://7UOjvLNvufnvTjgyXDwkaMsp2E9.png)
![uiresmonidle|391x169](upload://3bd5K42l3V5jGvb59Khs5dTUKJ8.png)
![uilist|288x318](upload://y0RbPMuTgZziI9k6MxXVnz0uuwJ.png)
![uitable|505x311](upload://wrC98zaO6csUEIMrjUAZu8lOxWh.png)

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
TriggerClientEvent("mtxTextUI:Open", "ID", "Title", "Message<br>With HTML Support", "color")

-- Closing the UI
TriggerClientEvent("mtxTextUI:Close", "ID")
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

## Code Customization

Feel free to modify the code to suit your needs. If you decide to publish an edited version, please credit me in the `fxmanifest` and your post or repository.

## Need Assistance?

If you’re stuck in the code, feel free to DM me on Discord: `mathex_`
---

I hope this helps! If you have any further questions or need additional assistance, don’t hesitate to ask. 😊
