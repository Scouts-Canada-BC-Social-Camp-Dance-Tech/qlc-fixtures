# qlc-fixtures
Custom QLC+ fixture definitions (and gobo images) for the lights that we use.

## Usage notes
### File paths
Because QLC+ doesn't like anything that isn't absolute addresses for custom images in fixtures files, you will need to manually fix the file paths before you use the fixtures. If you don't, the fixtures will still work, you will just be missing a bunch of images. The easiest way to do this is to open the fixtures files in a text editor and find and replace `/home/aboreddev/.qlcplus` with the path to your QLC+ user folder. This will vary depending on your operating system.

 - Windows: `C:\\Users\{Username}\QLC+`
 - Linux: `/home/{Username}/.qlcplus`

If anyone knows of a better way of doing this, please let me know.
