# GMAppImager
Graphically Converts GameMaker Studio 2 Linux Games to AppImage Bundles.

![wsl.png](https://github.com/time-killer-games/GMAppImager/blob/main/wsl.png?raw=true)

Convert your GameMaker Studio 2 Linux games into single runtime executables that don't need installation and will run on any modern Linux distribution out of the box. As this tool converts your game to an AppImage file, it will run on any Linux distribution that supports the AppImage format and you're thus no longer limited to Ubuntu 22.04 LTS. 

Comes with complete "Key to Success" platformer game, (source code [here](https://samuel-venable.itch.io/key-to-success)), for demoing purposes. Source code included for everything. Made with GameMaker Studio 2 and the libraries were written in C++. 

AppImageKit's source is available separately on [GitHub](https://github.com/AppImage/AppImageKit).

This works with games and software not created with GameMaker as well if you know what you are doing. 

## Downloads
Click the "[Releases](https://github.com/time-killer-games/GMAppImager/releases)" link on this page to download pre-built binaries, (in AppImage format). 

- `GMAppImager-aarch64.AppImage` is the file to download for 64-bit ARM distro's, (like [Manjaro ARM](https://manjaro.org/download/#ARM)).
- `GMAppImager-armhf.AppImage` is the file you want for targeting 32-bit ARM, (such as [RPi OS](https://www.raspberrypi.com/software/)).
- `GMAppImager-x86_64.AppImage` is for 64-bit-only Intel and AMD based platforms, (non-ARM).
- `Key.to.Success-*.AppImage` is an example game compiled for the architecture listed in its name.

## Compiling
GMAppImager requires being run on Ubuntu 22.04 LTS while converting your executable. 

The output AppImage will run on most distro's that support AppImage format.
