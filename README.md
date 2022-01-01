# GMAppImager
Graphically Converts GameMaker Studio 2 Linux Games to AppImage Bundles.

Convert your GameMaker Studio 2 Linux games into single runtime executables that don't need installation and will run on any modern Linux distribution out of the box. As this tool converts your game to an AppImage file, it will run on any Linux distribution that supports the AppImage format and you're thus no longer limited to Ubuntu 20.04 LTS.  
Comes with complete "Key to Success" platformer game (source code [here](https://samuel-venable.itch.io/key-to-success)) for demoing purposes. Source code included for everything. Made with GameMaker Studio 2 and the libraries were written in C++. This technically works with games and software not created with GameMaker as well if you know what you are doing. AppImageKit's source is available separately on [GitHub](https://github.com/AppImage/AppImageKit).  

## Downloads
Click the "[Releases](https://github.com/time-killer-games/GMAppImager/releases)" link on this page to download pre-built binaries, (in AppImage format).  
A free online video tutorial is available on [YouTube](https://www.youtube.com/watch?v=csFavUl1pAA).
- `GMAppImager-aarch64.AppImage` is the file to download for 64-bit ARM distro's, (like [Manjaro ARM](https://manjaro.org/download/#ARM)).
- `GMAppImager-armhf.AppImage` is the file you want for targeting 32-bit ARM, (such as [RPi OS](https://www.raspberrypi.com/software/)).
- `GMAppImager-x86_64.AppImage` is for 64-bit-only Intel and AMD based platforms.
- `Key.to.Success-*.AppImage` is an example game compiled for the architecture listed in its name.

## Compiling
Requires being built with GameMaker Studio 2 on Ubuntu 20.04 LTS and having `zenity` installed. On Ubuntu based distros, you can install it with `sudo apt install zenity`. While you can run GameMaker Studio 2 on other Linux distros, it's not supported. Donations can be made by purchasing this from [itch.io](https://samuel-venable.itch.io/gmappimager).
