#!/bin/sh

USR=recursos
DB=${USR}/espónsores.csv
MAILTEXT=${USR}/hacktoberfest_mail_espónsores.txt
BUILD=out
TITLE="¡Tu involucramiento es importante | Hacktoberfest 2024"
SPONSOR_EXECUTIVE="consultoraux.otd@gmail.com"

tmp="$(mktemp)"
sed 1d <"${DB}" >"${tmp}"
while IFS= read -r sponsor; do
	remitente="$(echo "${sponsor}" | awk -F";" '{ print $3}')"
	adjunto="$(find ${BUILD} -mindepth 1 -type f -name '*.pdf' | grep "${remitente}")"
	neomutt -a "${adjunto}" -s "${TITLE}" -- "${remitente}" "${SPONSOR_EXECUTIVE}" <"${MAILTEXT}"
done <"${tmp}"
