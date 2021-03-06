FROM ubuntu:18.04
LABEL maintainer="Francisco Lercari flercari@lertech.com.ve"

RUN apt-get update \
    && apt-get install locales language-pack-es -y \
    && locale-gen "en_US.UTF-8" "fr_FR.UTF-8" "es_MX.UTF-8" \
    "es_PA.UTF-8" "es_VE.UTF-8" "es_GT.UTF-8" "es_PE.UTF-8" \
    "es_ES.UTF-8"

ENV LANG="es_VE.UTF-8" LANGUAGE="es_VE.UTF-8" LC_ALL="es_VE.UTF-8" LC_COLLATE="C" \
    PYTHONIOENCODING="UTF-8" TERM="xterm" DEBIAN_FRONTEND="noninteractive"