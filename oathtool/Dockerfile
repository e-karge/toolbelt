FROM alpine

RUN wget http://download.savannah.gnu.org/releases/oath-toolkit/oath-toolkit-2.6.2.tar.gz -O- | tar -xz \
 && cd oath-toolkit-2.6.2/ \
 && apk add --no-cache build-base file \
 && ./configure --disable-pam --prefix=/usr/local \
 && make \
 && cd liboath/ && make install && cd .. \
 && cd oathtool/ && make install && cd .. \
 && cd .. && rm -r oath-toolkit-2.6.2 \
 && apk del --no-cache build-base file \
 && oathtool

ENTRYPOINT [ "/usr/local/bin/oathtool" ]
