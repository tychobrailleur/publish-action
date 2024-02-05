FROM alpine:3.19.1
COPY entrypoint.sh /entrypoint.sh
RUN apk add --no-cache curl bash
ENTRYPOINT ["/entrypoint.sh"]
