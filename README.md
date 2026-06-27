# Exulus
## Discontinued until further notice (The script may still work but I won't be providing any updates/fixes for now), main discord server has been deleted. Will probably make another later

### Update (27/6/2026): Will begin a complete rework this year. Maybe in November idk

### Ro Ghoul Autofarm

<p align="center">
<img width="900" height="200" src="https://backiee.com/static/wallpapers/456x257/365661.jpg">
</p>

> **Warning**\
> Kindly review this information prior to running the script in order to prevent any unnecessary inquiries.

### Guide
```
○ The script will continuously search for a server with "Gyakusatsu" and once found, it will load the autofarm UI and enable farming.

○ You can then select your desired stage and skills.

○ By default, no webhook is stored, so you will need to input your own in the settings section.

○ To change the wallpaper, navigate to the "workspace" folder of your executor and find the "Exulus" folder, then the "Wallpaper Folder" and place your desired image there.

○ Reference the image in the settings section of the UI.

○ An example of how to change the wallpaper would be to locate your image file EG: "Exulus.png" and input the exact file name into the designated textbox within the user interface.
```

> **Note**\
> Your webhook will be automatically saved so no need to re-enter it.\
> Your wallpaper will be automatically saved so no need to re-enter it.\
> Your selected stage and skills will be saved so no need for toggling them over and over again.

# Welcome to Exulus!

> **Note**\
> Please put this in your "autoexecute" folder.

```lua
--[[

📞[Discord] https://dsc.gg/SaintX

-----------------------------------------------------------------------------------------------------------------------------

🧟‍♂️[Side]

[-] Choices = "CCG" or "Ghoul"

-----------------------------------------------------------------------------------------------------------------------------

🔔[Ping]

[-] Choices = true or false

(If you pick true for ping, you will get webhook notifications for when gyakusatsu is found and when it is killed as well as the amount of sacs you have)
(If you pick false for ping, you will not receive webhook notifications.)

-----------------------------------------------------------------------------------------------------------------------------

👹[Gyakusatsu Finder]

[-] Choices = true or false

(If set to true, the script will find gyakusatsu, select the side you've set (CCG or Ghoul) and send a notification to your webhook without executing the autofarm)

-----------------------------------------------------------------------------------------------------------------------------
]]

getgenv().Side = "CCG"
getgenv().Ping = true
getgenv().Gyakusatsu_Finder = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/Saint0-0/Ro_Ghoul_Autofarm/main/Main.lua"))()
```
# Additional information

### Discord
[Discord Server](https://dsc.gg/SaintX)
