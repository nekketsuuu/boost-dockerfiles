FROM ubuntu:16.04

LABEL version="1.65.0_gcc-7_ubuntu-16.04" \
      maintainer="nekketsuuu <nekketsuuu+docker@gmail.com>"

# Note: This image does not contain Boost.Python library

ENV BOOST_PREFIX=/usr/local \
    BOOST_VERSION=1.65.0 \
    BOOST_TOOLSET=gcc \
    WORK_DIR=/root

RUN echo 'deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main'      > /etc/apt/sources.list.d/ubuntu-toolchain-r_test.list \
 && echo 'deb-src http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main' >> /etc/apt/sources.list.d/ubuntu-toolchain-r_test.list \
 && apt-key adv --keyserver keyserver.ubuntu.com \
                --recv-keys 60C317803A41BA51845E371A1E9377A2BA9EF27F \
 && apt-get update -y \
 && apt-get install --no-install-recommends -y \
      ca-certificates \
      g++-7 \
      gcc-7 \
      wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && ln -s /usr/bin/g++-7 /usr/bin/g++ \
 && ln -s /usr/bin/gcc-7 /usr/bin/gcc \
 && cd ${WORK_DIR} \
 && export BOOST_VERSION_TAR=$(echo ${BOOST_VERSION} | sed 's/\./_/g') \
 && wget https://dl.bintray.com/boostorg/release/${BOOST_VERSION}/source/boost_${BOOST_VERSION_TAR}.tar.gz \
 && tar xf ./boost_${BOOST_VERSION_TAR}.tar.gz \
 && cd ./boost_${BOOST_VERSION_TAR} \
 && ./bootstrap.sh --prefix=${BOOST_PREFIX} --with-toolset=${BOOST_TOOLSET} --without-libraries=python \
 && ./b2 -j2 --prefix=${BOOST_PREFIX} --without-python toolset=${BOOST_TOOLSET} install \
 && rm -rf ${WORK_DIR}/*
