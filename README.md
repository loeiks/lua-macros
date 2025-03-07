## How to Configure?

It's really easy to start with LuaMacros just make sure you install the necessary tools:

- [AHK](https://www.autohotkey.com/)
- [LuaMacros](https://73fb76f9-addf-4969-8e12-3d5bb9494ae6.usrfiles.com/archives/73fb76_2e7c52a159b441a3a848900bde2b6cea.zip)

If you have clonned this repo (or downloaded it) and installed AHK you are kinda ready. But before everything unzip the [downloaded `luamacros.zip` file](https://73fb76f9-addf-4969-8e12-3d5bb9494ae6.usrfiles.com/archives/73fb76_2e7c52a159b441a3a848900bde2b6cea.zip) to use `LuaMacros.exe` when unzipping, extract all files directly in `lua` folder don't create a new folder for extracted files, or later cut and paste files to `lua` folder.

> You can just open the .zip file and copy everything (or cut with CTRL+X) inside and paste directly inside /lua/ folder then delete the downlaoded .zip file.

---

### Step 1: Setup LuaMacros.exe and LuaMacros.lua

Go to this directory on your Windows installation: `C:\Users\%USERNAME%\.ahk` 

**OR**

1. Go to `Users` folder.
2. Then find your own user folder. (named as your username)
3. Create a folder named `.ahk` in your user folder.

Then create a new `TXT` file here named as `keypresses.txt`. You don't need to write anything inside just leave it empty.

> This TXT file will be used by both your AHK scripts and LuaMacros to read keypresses from your secondary keyboard.

Now you need to launch LuaMacros. Navigate to `lua` folder inside of this repo (`/lua/`) then run the `LuaMacros.exe`. After you launch the LuaMacros click to __printer like__ icon on the top left of the window. Then select the `LuaMacros.lua` file which is in the same directory as the `LuaMacros.exe`. This will load the `Lua` script, now you need to run this click to __play__ icon to run the script, after you run it you need to press **any** key on the keyboard you want to use for `AHK` macros/scripts.

When you click any key on the desired keyboard you will see an ID which will be around 7-8 characters long, it might be directly shown you just like this: `0000AAA` or it might be something like this: `\\\\?\\HID#VID_3151&PID_3005&MI_00#9&3ABDDC5D&0&0000#{884B96C3-56EF-11D1-BC8C-00A0C91405DD}` if you see the long version it's because script was not able to detect the ID directly and instead shows the full version of `SystemId` which means you need to find it manually.

But probably you will have the short basic version which is ready to **copy and paste**. Copy the selected keyboard ID and paste it to here:

```lua
clear()
local keyboardIdentifier = '0000AAA';
local yourKeyboard = '3ABDDC5D';
```

Before everything close the LuaMacros.exe and exit it to avoid conflicts then replace the content/string in `yourKeyboard` variable and paste your own keyboard ID that you copied in LuaMacros.lua file (you can use text editor to launch that file) then save that file and close it.

Now follow the step 2 to complete the required setup.

### Step 2: Setup AHK Macros

You can already see the example `AHK` scripts I created in `scripts` folder, you can read the scripts and understand how your main file should start. `luamacros_engine.ahk` is the key file which shows you how your scripts should start, in `macros.ahk` file you can see how I get the keypresses from the txt file we have created before. You also need this to actually understand which key is pressed. And this is the last part that you need to make a change.

Find the path of your keypresses.txt file which should be in `C:\Users\%USERNAME%\.ahk\keypresses.txt` (you can copy paste this into file explorer) and you need to replace that %USERNAME% part with the actual username in your PC. You also need to change the same text in `LuaMacros.lua` file:

```lua
local file = io.open("C:\\Users\\%USERNAME%\\.ahk\\keypresses.txt", "w") -- replace me!!!
```

**to**

```lua
local file = io.open("C:\\Users\\loeiks\\.ahk\\keypresses.txt", "w") -- replace me!!!
```

After you change that path in both files you are ready.

### Step 2: Setup Autolaunch (Optional)

If you want to launch `LuaMacros.exe` and your AHK scripts automatically when Windows starts follow this step. You will see another file in the `lua` folder which is `LuaMacrosAutoRunner.ahk` (yes an AHK script) required to automatically launch the `LuaMacros.exe` with `LuaMacros.lua` file, run it and then minimize the application. Open that AHK script in the editor you use and replace the file paths for the `LuaMacros.exe` and `LuaMacros.lua` you will see my paths first.

To find the paths select the `LuaMacros.exe` file and run `CTRL+SHIFT+C` which will copy the path of the file. Do the same for `Lua` script.

After you replaced the paths now run `WindowsKey+R` to launch `Run` on Windows then run this: `shell:startup` which will launch the folder of startup apps in Windows. While pressing `ALT` key drag the `LuaMacrosAutoRunner.ahk` script into that folder to create a shortcut for that `AHK` script.

In this way when you start Windows LuaMacros.exe will start just how you need it in minimized mode.

> It may not start it in minimized mode because it's doing it with a delay of 2sec which might not be enough always, I'm looking for a solution to this but for now just let you know. If your PC fast enough it should work without any problem tho.

### Step 3: Setup Autolaunch for AHK Scripts (Optional)

You can also manually launch any AHK script you need but if you also want to automatically launch the scripts you can press `ALT` key and while holding `ALT` key drag and drop the any `AHK` script file you want to the startup apps folder in Windows.

> To launch startup apps folder press `WindowsKey+R` on Windows and launch `Run` then run this command: `shell:startup`.

---

Now you are ready to create your own custom scripts/macros and use them with LuaMacros. You can see some example macros/examples to see how I handle it, my files are in `scripts` folder.