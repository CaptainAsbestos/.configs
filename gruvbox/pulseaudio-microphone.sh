#!/bin/sh

status() {
  MUTED=$(pacmd list-sources | awk '/\*/,EOF {print}' | awk '/muted/ {print $2; exit}')
  volume=$(pacmd list-sources | grep "\* index:" -A 7 | grep "volume" | awk -F/ '{print $2}')

  if [ "$MUTED" = "yes" ]; then
    echo "%{A1:pactl set-source-mute @DEFAULT_SOURCE@ toggle:}\
			%{A4:pactl set-source-volume @DEFAULT_SOURCE@ +5%:}\
			%{A5:pactl set-source-volume @DEFAULT_SOURCE@ -5%:}\
			%{A3:pavucontrol -t 4:}\
			%{F#d79921} $volume%{F-}%{A}%{A}%{A}%{A}"
  else
    #echo "%{F#dc322f}%{F-} $volume"
    echo "%{A1:pactl set-source-mute @DEFAULT_SOURCE@ toggle:}\
			%{A4:pactl set-source-volume @DEFAULT_SOURCE@ +5%:}\
			%{A5:pactl set-source-volume @DEFAULT_SOURCE@ -5%:}\
			%{A3:pavucontrol -t 4:}\
			%{F#cc241d}%{F-} $volume%{A}%{A}%{A}%{A}"
  fi
}

listen() {
    status

    LANG=EN; pactl subscribe | while read -r event; do
        if echo "$event" | grep -q "source" || echo "$event" | grep -q "server"; then
            status
        fi
    done
}

toggle() {
  MUTED=$(pacmd list-sources | awk '/\*/,EOF {print}' | awk '/muted/ {print $2; exit}')
  DEFAULT_SOURCE=$(pacmd list-sources | awk '/\*/,EOF {print $3; exit}')

  if [ "$MUTED" = "yes" ]; then
      pacmd set-source-mute "$DEFAULT_SOURCE" 0
  else
      pacmd set-source-mute "$DEFAULT_SOURCE" 1
  fi
}

case "$1" in
    --toggle)
        toggle
        ;;
    *)
        listen
        ;;
esac
