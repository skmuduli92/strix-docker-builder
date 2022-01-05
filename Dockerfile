
FROM amd64/alpine

RUN apk --no-cache add alpine-sdk bash bash-completion

# make bash prettier
COPY ./bash_config /root/.bashrc

# Get and install glibc for alpine
COPY sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
ARG APK_GLIBC_VERSION=2.34-r0
ARG APK_GLIBC_FILE="glibc-${APK_GLIBC_VERSION}.apk"
ARG APK_GLIBC_BIN_FILE="glibc-bin-${APK_GLIBC_VERSION}.apk"
ARG APK_GLIBC_BASE_URL="https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${APK_GLIBC_VERSION}"
RUN wget "${APK_GLIBC_BASE_URL}/${APK_GLIBC_FILE}"          \
    && apk --no-cache add "${APK_GLIBC_FILE}"               \
    && wget "${APK_GLIBC_BASE_URL}/${APK_GLIBC_BIN_FILE}"   \
    && apk --no-cache add "${APK_GLIBC_BIN_FILE}"           \
    && rm glibc-*

COPY ./bin /bin
COPY ./lib /lib
