

How to edit settings.json in Visual Studio Code?

LINK:
https://supunkavinda.blog/vscode-editing-settings-json


How to edit settings.json in Visual Studio Code?
I got stuck yesterday when I was trying to change the settings.json in Visual Studio Code becuase of not understanding there are different ways for different situations.

As I figured out, there are three ways to edit settings.json

in User Preferences (Global)
in Folder
in Workspace
in User Preferences (Global)

You can change the settings.json from your user preferences. This changes are global. Therefore it will affect all of your projects. Here are 2 ways to reach that global settings.json file.

File -> Preferences -> Settings -> Extensions -> Scroll down and find "Edit in settings.json"
Or in these paths in your OS
Windows %APPDATA%\Code\User\settings.json
macOS $HOME/Library/Application Support/Code/User/settings.json
Linux $HOME/.config/Code/User/settings.json
You can add the settings to this file (may be given by a extension) and make all of these settings global.

in Folder
If you have opened a folder (File -> Open Folder), hereis the way to add settings.json in the folder. This will affect only the current folder

Create a folder named .vscode in the root folder
Create a file named settings.json in that folder and add your settings there.
{    
     "settings-key": {
        "setting-1":  true,
        "setting-2":  "../css/",
        "setting-3": "> 0.2%, last 1 version"
    }
}
in Workspace
If you have opened a workspace (File -> Open Workspace to open or saved using File -> Save Workspace As...), here are the steps to change settings of the workspace. Note that in this way, you dont have a settings.json. But, you can do everything done by it in another way.

When you save the workspace, it creates a file called yourworkspace.code-workspace
Open that file in Visual Studio Code. Then you will see something like this.
{
	"folders": [
		{
			"path": "F:\\Projects\\Unknown\\stable"
		}
	]
}
You can add the settings by adding a key named "settings" in JSON.
{
	"folders": [
		{
			"path": "F:\\Projects\\Groups\\groups"
		}
	],
	"settings": {    
	    "settings-key": {
        	"setting-1":  true,
        	"setting-2":  "../css/",
        	"setting-3": "> 0.2%, last 1 version"
    	}
	}
}
When you add settings into yourwokspace.code-workspace file, the settings will only be available for the current workspace.

Thank you for reading!

Tagged: Visual Studio Code