# MuteMicLED

This is an edited version of @username227's MuteLED script to work with my F8 Mute Mic LED. It works on my HP Envy x360 with Arch Linux, but results may vary.

# Instructions:

First, check and see if the following command will turn on your mute mic LED:
```
sudo hda-verb /dev/snd/hwC1D0 0x1 0x717 0x4 && sudo hda-verb /dev/snd/hwC1D0 0x1 0x715 0x0

```
and that this command turns off your LED:
```
sudo hda-verb /dev/snd/hwC1D0 0x1 0x717 0x1 && sudo hda-verb /dev/snd/hwC1D0 0x1 0x715 0x0

```

If this works, then you should be able to use this hack.

Place the files as follows:
```
/usr/bin/mutemicled
/etc/acpi/actions/mutemicled.sh
/etc/acpi/events/mute-mic-led
```
The first two files should have execute rights (755).

Then, make sure that the acpid service is started:
```
sudo systemctl enable --now acpid.service
```

Dependencies: alsa-tools, pamixer, acpid
