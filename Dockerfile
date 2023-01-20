FROM postgres:15.1-alpine3.17

HEALTHCHECK --start-period=5s --timeout=5s --interval=5s --retries=5 CMD pg_isready --username="${POSTGRES_USER:-postgres}" || exit -1

