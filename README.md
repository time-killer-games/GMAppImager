# GMAppImager
Graphically Converts GameMaker Studio 2 Linux Games to AppImage Bundles.

Convert your GameMaker Studio 2 Linux games into single runtime executables that don't need installation and will run on any modern Linux distribution out of the box. No longer are you limited to Ubuntu 20.04 LTS. Works on any Linux distribution that supports the AppImage format, as this tool converts your game to an AppImage file. Comes with complete "Key to Success" platformer game for demoing purposes. Source code included for everything. Made with GameMaker Studio 2 and the libraries were written in C++. AppImageKit's source available separately from GitHub officially: https://github.com/AppImage/AppImageKit 

Requires being built on Ubuntu 20.04 LTS and zenity needs to be installed with: `sudo apt-get install zenity`

- `GMAppImager-aarch64.AppImage` is the file to download for 64-bit ARM distro's, (like Manjaro).
- `GMAppImager-armhf.AppImage` is the file you want for targeting 32-bit ARM, (such as RPi OS).
- `GMAppImager-x86_64.AppImage` is for 64-bit-only Intel and AMD based platforms (non-ARM).
- `Key.to.Success-*.AppImage` is an example game compiled for the architecture listed in its name.
- Technically works with non-GM games and software as well if you know what you are doing.
- Click the "releases" link on this page to download pre-built binaries, (in AppImage format).
- Free online video tutorial available on YouTube: https://www.youtube.com/watch?v=csFavUl1pAA
- Donations can be made by purchasing from itch.io: https://samuel-venable.itch.io/gmappimager
- Example game's source code available here: https://samuel-venable.itch.io/key-to-success
