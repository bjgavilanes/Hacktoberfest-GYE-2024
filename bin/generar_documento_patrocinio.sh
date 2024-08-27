#!/bin/sh

SRC=espónsores/solicitud_patrocinio.adoc
USR=recursos
DB=${USR}/espónsores.csv
HACKTOBER_THEME=${USR}/hacktoberfest_theme.yml
GREETINGS="Saludos"
BUILD=out

tmp="$(mktemp)"
sed 1d < "${DB}" > "${tmp}"
while IFS= read -r coordinador; do
	correo="$(echo "${coordinador}" | awk -F";" '{ print $3}')"
	nombre_archivo="solicitud_patrocinio_${correo}.pdf"
	asciidoctor-pdf "${SRC}" -d book \
	-a destinatario_institución="" -a destinatario="" \
	-a saludo="${GREETINGS}" -o "${nombre_archivo}" -D "${BUILD}" \
	--theme "${HACKTOBER_THEME}"
done <"${tmp}"
