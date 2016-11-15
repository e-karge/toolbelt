FROM ekarge/toolbelt:nodejs

RUN apk --no-cache add nodejs && npm install xml-json -g

ENTRYPOINT [ "/usr/bin/xml-json" ]
