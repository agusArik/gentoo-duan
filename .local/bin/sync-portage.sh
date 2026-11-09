#!/bin/sh

USER=$(whoami)
DEST="$HOME"/Proyectos/Gentoo/portage/
mkdir -p "$DEST"

doas cp -r /etc/portage/make.conf "$DEST"
doas cp -r /etc/portage/package.accept_keywords "$DEST"
doas rsync -av --delete /etc/portage/package.license /etc/portage/package.use "$DEST"

doas chown -R "$USER":"$USER" "$DEST"
