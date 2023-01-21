# Exulus
### Ro Ghoul Autofarm

<p align="center">
  <img width="400" height="150" src="https://cdn.discordapp.com/attachments/1051808795355005029/1062049790961131530/image.png">
</p>

> **Warning**
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

> **Note**
> Please put this in your "autoexecute" folder.

```lua
--[[
-----------------------------------------------------------------------------------------------------------------------------

🧟‍♂️[Side]

-Choices = "CCG" or "Ghoul"

-----------------------------------------------------------------------------------------------------------------------------

🔔[Ping] = true or false

(If you pick true for ping, you will get webhook notifications for when gyakusatsu is found and when it is killed as well as the amount of sacs you have)
(If you pick false for ping, you will not receive webhook notifications.)

-----------------------------------------------------------------------------------------------------------------------------
]]

getgenv().Side = "CCG"
getgenv().Ping = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/Saint0-0/Ro_Ghoul_Autofarm/main/Main.lua"))()
```
# Additional information

### Discord
[Discord Server](https://dsc.gg/SaintX)

### Credits
> **Note**
> Some of the code from this repository was used to make this work

[z4gs](https://github.com/z4gs/scripts)
