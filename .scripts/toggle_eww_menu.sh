#!/bin/sh

if eww active-windows 2>/dev/null | grep -q "menu: menu"; then
  eww close menu
else
  eww open menu
fi
