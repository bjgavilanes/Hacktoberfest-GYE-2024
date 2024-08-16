BUILD=out
DOC_SPACE=media/solicitud_espacio.adoc
DOC_SPONSOR=espónsores/solicitud_apoyo.adoc
HACKTOBER_THEME=espónsores/hacktoberfest_theme.yml
UCSG=Universidad Católica de Santiago de Guayaquil
UCSG_RECEIVER=Ing. José Miguel Erazo Ayón, MBA.
UCSG_RECEIVER_NAME=Estimado
UCSG_SENDER=Olga Tohabanda
UCSG_SENDER_POSITION=Fundadora
UCSG_SENDER_INSTITUTION=HerUX
UCSG_SENDER_CONTACT=+593 96 259 1249
UCSG_INVITATION_FILENAME=invitación_ucsg_hacktoberfest2024.pdf
UARTES=Universidad de las Artes
UARTES_RECEIVER=Jonathan Pilay
UARTES_RECEIVER_NAME=Estimado
UARTES_SENDER=Brayen Gavilanes
UARTES_SENDER_POSITION=Consultor Estrategia y Operaciones
UARTES_SENDER_INSTITUTION=LUGER
UARTES_SENDER_CONTACT=+593 98 309 6005
UARTES_INVITATION_FILENAME=invitación_uartes_hacktoberfest2024.pdf
GLOBANT=Globant
GLOBANT_RECEIVER=Lorena Delgado
GLOBANT_INVITATION_FILENAME=solicitud_apoyo_globant_hacktoberfest2024.pdf
XTRIM=XTRIM
XTRIM_RECEIVER=Gabriela Barquet
XTRIM_INVITATION_FILENAME=solicitud_apoyo_xtrim_hacktoberfest2024.pdf
GREETINGS=Saludos

media: ucsg uartes globant xtrim
	
ucsg: ${DOC_SPACE} init
	asciidoctor-pdf "${DOC_SPACE}" -a destinatario_institución="${UCSG}" -a destinatario="${UCSG_RECEIVER}" -a destinatario_nombre="${UCSG_RECEIVER_NAME}" -a remitente="${UCSG_SENDER}" -a remitente_cargo="${UCSG_SENDER_POSITION}" -a remitente_institución="${UCSG_SENDER_INSTITUTION}" -a remitente_contacto="${UCSG_SENDER_CONTACT}" -o "${UCSG_INVITATION_FILENAME}" -D "${BUILD}"

uartes: ${DOC_SPACE} init
	asciidoctor-pdf "${DOC_SPACE}" -a destinatario_institución="${UARTES}" -a destinatario="${UARTES_RECEIVER}" -a destinatario_nombre="${UARTES_RECEIVER_NAME}" -a remitente="${UARTES_SENDER}" -a remitente_cargo="${UARTES_SENDER_POSITION}" -a remitente_institución="${UARTES_SENDER_INSTITUTION}" -a remitente_contacto="${UARTES_SENDER_CONTACT}" -o "${UARTES_INVITATION_FILENAME}" -D "${BUILD}"

globant: ${DOC_SPONSOR} init
	asciidoctor-pdf "${DOC_SPONSOR}" -d book -a destinatario_institución="${GLOBANT}" -a destinatario="${GLOBANT_RECEIVER}" -a saludo="${GREETINGS}" -o "${GLOBANT_INVITATION_FILENAME}" -D "${BUILD}" --theme "${HACKTOBER_THEME}"

xtrim: ${DOC_SPONSOR} init
	asciidoctor-pdf "${DOC_SPONSOR}" -d book -a destinatario_institución="${XTRIM}" -a destinatario="${XTRIM_RECEIVER}" -a saludo="${GREETINGS}" -o "${XTRIM_INVITATION_FILENAME}" -D "${BUILD}" --theme "${HACKTOBER_THEME}"

init:
	mkdir -p "${BUILD}"
