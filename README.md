**GML Instantiable Constructors** is a framework created in GameMaker Language managing GameMaker object instances and overarching application loop through constructors.

Please visit the project [Wiki](https://github.com/Mtax-Development/GML-Instantiable-Constructors/wiki) for more information and examples.

# Initialization

This project can be imported into other GameMaker projects by creating an importable package from the latest code in the [master](https://github.com/Mtax-Development/GML-Instantiable-Constructors/tree/master) branch and including its dependencies.

### Creating a package and importing it
1. Clone this repository.
2. Open the project of the cloned repository in GameMaker.
3. In the `Tools` toolbar, open the `Create Local Package` menu.
4. In `Package Details`, fill `Display name` and `Package ID (Filename)` fields with any name, also select `Add All` in the resource selection. Then select `OK`.
5. Select where the package file should be saved on the device.
6. Open the project in GameMaker into which the package will be imported.
7. In the `Tools` toolbar, open the `Import Local Package` menu.
8. Choose the previously saved package file and open it.
9. Choose `Add All` and then `Import`. The release should now be imported and appear in the `Asset Browser`, unless files with the same name have already existed in the project, in which case they can be replaced or skipped.
10. Confirm that each individual file was imported successfully.

### Including the dependencies
This project uses the following script files from other free and open-source libraries:
* [`struct_merge()`](https://raw.githubusercontent.com/Mtax-Development/GML-Development-Toolbox/refs/heads/master/scripts/struct_merge/struct_merge.gml) and [`null()`](https://raw.githubusercontent.com/Mtax-Development/GML-Development-Toolbox/refs/heads/master/scripts/null/null.gml) from [GML Development Toolbox](https://github.com/Mtax-Development/GML-Development-Toolbox).
* Entirety of [GML-OOP](https://github.com/Mtax-Development/GML-OOP).

1. Visit the link of each raw script file linked from [GML Development Toolbox](https://github.com/Mtax-Development/GML-Development-Toolbox). Then perform following steps for each of them:    
 1.1. Select and copy the entire file. (Keyboard shortcuts: `Ctrl+A` to select the entire content, `Ctrl+C` to copy it.)    
 1.2. In GameMaker with opened project that **GML Instantiable Constructors** was included to, create a script asset with the name of currently copied script and edit it to paste into its content. (Keyboard shortcuts: `Alt+C` to create a script asset, `F2` to rename the created asset, `Ctrl+V` to paste the content.)    
2. Visit the [GML-OOP](https://github.com/Mtax-Development/GML-OOP) repository and follow initialization instructions found there.

# Credits
Created, documented and maintained by [Mtax](https://github.com/Mtax-Development).

GameMaker and GameMaker Language are properties of YoYo Games.    
This is a third-party project not affiliated with YoYo Games.
