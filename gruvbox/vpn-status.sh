#!/bin/sh

STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    echo "%{F#689d6a}%{A1:notify-send -u low -t 3000 "vpn disconnecting..." && nordvpn d:}%{A3:rofi-nordvpn:}$(nordvpn status | grep City | cut -d ':' -f2)%{A}%{A}%{F-}"
#    echo "%{F#2aa198}%{A1:nordvpn d:}   %{F-}$(nordvpn status | grep City | cut -d ':' -f2)%{A}"
else
    echo "%{F#d79921}%{A1:notify-send -u low -t 3000 "vpn connecting..." && nordvpn c:}%{A3:rofi-nordvpn:}no vpn%{A}%{A}%{F-}"
#    echo "%{F#b58900}%{A1:rofi-nordvpn:}   %{F-}no vpn%{A}"
fi
