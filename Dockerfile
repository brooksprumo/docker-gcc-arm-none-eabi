FROM ubuntu:20.04
LABEL maintainer="Brooks Prumo <brooks@prumo.org>"

RUN apt-get update && apt-get install -qq --no-install-recommends \
	bzip2 \
	ca-certificates \
	curl \
	tar

ENV GCC_ARM_VERSION=gcc-arm-none-eabi-10-2020-q4-major
RUN curl --silent https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2 | tar -xjC /opt
ENV PATH=/opt/${GCC_ARM_VERSION}/bin:$PATH
