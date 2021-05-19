## polybar-caffeine

Polybar module that disable the screensaver and auto suspend using `xset`. 

required `xorg-xset`

## Usage

To use this module, put the following module in your Polybar config. `PATH_TO_SCRIPT` is path to the mic-volume.sh script.

    [module/caffeine-mode]
    type = custom/script
    interval = 1
    format = Caffeine: <label>
    exec = bash PATH_TO_SCRIPT show-mode
    click-left = bash PATH_TO_SCRIPT toggle-mode
