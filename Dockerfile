FROM alpine

ARG BUILDARCH
WORKDIR /app
RUN apk add --no-cache tzdata
COPY ./${BUILDARCH}/release /app/
VOLUME /app/data

EXPOSE 31114
CMD ["./apimain"]
