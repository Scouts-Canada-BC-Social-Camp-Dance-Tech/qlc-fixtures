# qlc-fixtures
Custom QLC+ fixture definitions (and gobo images) for the lights that we use.

## Usage notes
### File paths
Because QLC+ doesn't like anything that isn't absolute paths for custom images in fixtures files, you will need to manually fix the file paths before you use the fixtures. If you don't, the fixtures will still work, you will just be missing a bunch of images. The easiest way to do this is to open the fixtures files in a text editor and find and replace `@SHOW_ROOT@` with the path to your QLC+ user folder. This will vary depending on your operating system.

 - Windows: `C:\\Users\{Username}\QLC+\Fixtures`
 - Linux: `/home/{Username}/.qlcplus/fixtures`

If anyone knows of a better way of doing this, please let me know.

## Fixture validation
Eventually, we want all of our fixtures to pass the [QLC+ fixture validator](https://www.qlcplus.org/fixture_validator.php).

Here are some helpful forum posts that may provide some insight on what can be done, not just to pass the validator, but to make the fixtures better overall.

[Fixture sharing guidelines](https://www.qlcplus.org/forum/viewtopic.php?t=6667) - From the lead developer of QLC+
[Entering channel and capability data](https://www.qlcplus.org/forum/viewtopic.php?t=9204)

[Fixture definitions](https://www.qlcplus.org/forum/viewforum.php?f=3) - Board for all things fixture related

See the [validation](https://github.com/Scouts-Canada-BC-Social-Camp-Dance-Tech/qlc-fixtures/issues?q=is%3Aissue%20state%3Aopen%20label%3Avalidation) label for specific information on what needs to be fixed for each fixture

### Fixtures that have passed validation
- None at this time
