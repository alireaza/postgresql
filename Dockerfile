FROM postgres:15.1-alpine3.17

ARG UNAME=udocker
ARG UID=1000
ARG GNAME=$UNAME
ARG GID=1000
ARG GROUPS=$GNAME

RUN addgroup -S $GNAME --gid $GID \
&& adduser -S $UNAME -G $GNAME --uid $UID \
&& chown -R $UNAME:$GNAME /var/lib/postgresql
USER $UNAME

HEALTHCHECK --start-period=5s --timeout=5s --interval=5s --retries=5 CMD pg_isready --username="${POSTGRES_USER:-postgres}" || exit -1

