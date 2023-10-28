FROM docker:24.0.7

LABEL "maintainer"="whoan <juaneabadie@gmail.com>"
LABEL "repository"="https://github.com/whoan/docker-build-with-cache-action"

COPY docker-build.sh /docker-build.sh
COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache bash grep jq yq

ENTRYPOINT ["/entrypoint.sh"]
