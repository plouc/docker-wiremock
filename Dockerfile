# --- WIREMOCK ---

FROM java:8
MAINTAINER fronton@ekino.com

ENV WM_PACKAGE wiremock
ARG WM_VERSION=2.1.11

RUN mkdir /$WM_PACKAGE
WORKDIR /$WM_PACKAGE
RUN curl -sSL -o $WM_PACKAGE.jar https://repo1.maven.org/maven2/com/github/tomakehurst/$WM_PACKAGE-standalone/$WM_VERSION/$WM_PACKAGE-standalone-$WM_VERSION.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","wiremock.jar"]