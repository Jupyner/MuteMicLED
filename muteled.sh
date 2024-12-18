#!/bin/sh
    case "$2" in
        MICMUTE) /usr/bin/mutemicled ;;
        *)    logger "ACPI action undefined: $2" ;;
    esac
    ;;

