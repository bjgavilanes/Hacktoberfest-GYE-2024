BUILD=out
CRONOGRAMA_DIR=cronograma
CRONOGRAMA_FILE=${CRONOGRAMA_DIR}/cronograma.ods

media: espónsores init crono

espónsores: bin/generar_documento_patrocinio.sh recursos/espónsores.csv
	bin/generar_documento_patrocinio.sh

init:
	mkdir -p "${BUILD}"

crono: ${CRONOGRAMA_FILE}
	bin/ods2csv.sh ${CRONOGRAMA_FILE}

clean: ${BUILD}
	find "${BUILD}" -mindepth 1 -exec rm {} \+
