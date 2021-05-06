# FROM kanishkaw/patched-ballerina-sl-alpha2
# FROM ballerina/ballerina:swan-lake-alpha4
FROM kanishkaw/sl-alpha5-openapi-snapshot
ADD entrypoint.sh /entrypoint.sh
RUN apk add --no-cache su-exec
RUN set -ex && apk --no-cache add sudo
ENV DOCKER_API_VERSION "v1.38"

USER root

ENTRYPOINT ["/entrypoint.sh"]
