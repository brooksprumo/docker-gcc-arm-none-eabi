FROM ubuntu:18.04
LABEL maintainer="Brooks Prumo <brooks@prumo.org>"

RUN apt-get update && apt-get install -q -y --no-install-recommends \
	bzip2 \
	ca-certificates \
	curl \
	tar

ENV GCC_ARM_VERSION=gcc-arm-none-eabi-9-2020-q2-update
RUN curl https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2 | tar -xjC /opt
ENV PATH=/opt/${GCC_ARM_VERSION}/bin:$PATH
