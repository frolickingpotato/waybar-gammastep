# waybar-gammastep
A gammastep control module for waybar

TO-DO:
Remove need for writing absolute path to files referenced in the shell scripts
Make waybar's "format-icons" work correctly

This is a custom waybar module that lets you control gammastep, a program that adjusts
the gamma values for wayland displays and lets you set display temperature for
reduced eyestrain and blue light exposure.

This module requires that you install gammastep, as well as modify the paths in
gammastep.sh as well as gammastep_get_info.sh to point to wherever you install
this directory (personally I have it in my .config/waybar/ directory).

Below is an example block from my waybar config.


	"custom/gammastep": {
		"format": "{}",
		"return-type":"json",
		"exec": "~/.config/waybar/gammastep/gammastep_get_info.sh",
		"on-scroll-up": "~/.config/waybar/gammastep;./gammastep.sh 10)",
		"on-scroll-down": "~/.config/waybar/gammastep;./gammastep.sh -10)"
	},
