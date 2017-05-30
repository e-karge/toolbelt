FROM ekarge/toolbelt:nodejs

RUN apk --no-cache add nodejs-npm \
 && npm install xml-json -g

ENTRYPOINT [ "/usr/bin/xml-json" ]
