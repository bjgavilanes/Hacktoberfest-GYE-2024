BUILD=out
DOC_SPACE=media/solicitud_espacio.adoc
DOC_SPONSOR=espónsores/solicitud_patrocinio.adoc
HACKTOBER_THEME=espónsores/hacktoberfest_theme.yml
GREETINGS=Saludos
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
UARTES_SENDER=Brayen Gavilanes
UARTES_SENDER_POSITION=Consultor Estrategia y Operaciones
UARTES_SENDER_INSTITUTION=LUGER
UARTES_SENDER_CONTACT=+593 98 309 6005
UARTES_INVITATION_FILENAME=invitación_uartes_hacktoberfest2024.pdf
GLOBANT=Globant
GLOBANT_RECEIVER=Lorena Delgado
GLOBANT_INVITATION_FILENAME=solicitud_patrocinio_globant_hacktoberfest2024.pdf
XTRIM=XTRIM
XTRIM_RECEIVER=Gabriela Barquet
XTRIM_INVITATION_FILENAME=solicitud_patrocinio_xtrim_hacktoberfest2024.pdf
TELCONET=TELCONET
TELCONET_RECEIVER=Lcda. Silvia Crespo
TELCONET_INVITATION_FILENAME=solicitud_patrocinio_telconet_hacktoberfest2024.pdf
AURORA=Aurora Soluciones
AURORA_RECEIVER=Giancarlo Molina
AURORA_INVITATION_FILENAME=solicitud_patrocinio_aurora_hacktoberfest2024.pdf
TIPTI=Tipti
TIPTI_RECEIVER=Sara Maldonado, Johana  Beltrán
TIPTI_INVITATION_FILENAME=solicitud_patrocinio_tipti_hacktoberfest2024.pdf

media: espónsores init

espónsores: bin/generar_documento_patrocinio.sh recursos/espónsores.csv
	bin/generar_documento_patrocinio.sh

init:
	mkdir -p "${BUILD}"

clean: ${BUILD}
	find "${BUILD}" -mindepth 1 -exec rm {} \;
