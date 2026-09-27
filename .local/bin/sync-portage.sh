#!/bin/sh

USER=$(whoami)
DEST="$HOME"/Proyectos/Gentoo/portage/
mkdir -p "$DEST"
doas cp -r /etc/portage/make.conf "$DEST"
doas cp -r /etc/portage/package.accept_keywords "$DEST"
doas cp -r /etc/portage/package.use "$DEST"
doas cp -r /etc/portage/package.license "$DEST"

doas chown -R "$USER":"$USER" "$DEST"
rsync -av "$DEST"/* "$HOME"/Proyectos/Gentoo/
rm -rf "$DEST"

