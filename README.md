# MuteMicLED

This is an edited version of @username227's MuteLED script to work with my F8 Mute Mic LED. It works on my HP Envy x360 with Arch Linux, but results may vary.

# Instructions:

First, check and see if the following command will turn on your mute mic LED:
```
udo hda-verb /dev/snd/hwC1D0 0x1 0x716 0x4 && sudo hda-verb /dev/snd/hwC1D0 0x1 0x717 0x4

```
and that this command turns off your LED:
```
udo hda-verb /dev/snd/hwC1D0 0x1 0x716 0x4 && sudo hda-verb /dev/snd/hwC1D0 0x1 0x717 0x1


```

If this works, then you should be able to use this hack.

Clone into the repository and move the files to these locations:
```
/usr/bin/mutemicled
/etc/acpi/actions/mutemicled.sh
/etc/acpi/events/mute-mic-led
```

You can use these commands:
```
cd MuteMicLed
chmod +x mutemicled
chmod +x mutemicled.sh
mv mutemicled /usr/bin/mutemicled
mv mutemicled.sh /etc/acpi/actions/mutemicled.sh
mv mute-mic-led /etc/acpi/events/mute-mic-led

```
The first two files should have execute rights (755).

Then, make sure that the acpid service is started:
```
sudo systemctl enable --now acpid.service
```

Dependencies: alsa-tools, pamixer, acpid
