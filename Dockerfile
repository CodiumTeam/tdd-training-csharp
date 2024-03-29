FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine

RUN apk add --no-cache make

WORKDIR /code

COPY .config .config
RUN dotnet tool restore

VOLUME [ "/code" ]