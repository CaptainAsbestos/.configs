#!/bin/sh
 
#MIT License Copyright (c) 2020 Parsiad Azimzadeh

alpha='dd'
base03='#002b36'
base02='#073642'
base01='#586e75'
base00='#657b83'
base0='#839496'
base1='#93a1a1'
base2='#eee8d5'
base3='#fdf6e3'
yellow='#b58900'
orange='#cb4b16'
red='#dc322f'
magenta='#d33682'
violet='#6c71c4'
blue='#268bd2'
cyan='#2aa198'
green='#859900'

i3lock \
  --insidevercolor=$base02$alpha \
  --insidewrongcolor=$base02$alpha \
  --insidecolor=$base02$alpha \
  --ringvercolor=$green \
  --ringwrongcolor=$red \
  --ringvercolor=$green \
  --ringwrongcolor=$red \
  --ringcolor='#00000000' \
  --line-uses-ring \
  --keyhlcolor=$yellow \
  --bshlcolor=$orange \
  --separatorcolor='#00000000' \
  --verifcolor=$green \
  --wrongcolor=$red \
  --layoutcolor=$yellow \
  --datecolor=$yellow \
  --timecolor=$yellow \
  --screen 1 \
  --blur 1 \
  --clock \
  --indicator \
  --timestr="%H:%M" \
  --datestr="%a %b%e, %Y" \
  --veriftext="Verifying..." \
  --wrongtext="Auth Failed" \
  --noinput="No Input" \
  --locktext="Locking..." \
  --lockfailed="Lock Failed" \
  --time-font="Hack" \
  --date-font="Hack" \
  --layout-font="Hack" \
  --verif-font="Hack" \
  --wrong-font="Hack" \
  --radius=150 \
  --ring-width=20 \
  --pass-media-keys \
  --pass-screen-keys \
  --pass-volume-keys \

