FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine

RUN apk add --update nodejs npm bash git make

RUN curl -L -o /tmp/dotnet-install.sh https://dot.net/v1/dotnet-install.sh
RUN chmod +x /tmp/dotnet-install.sh

RUN /tmp/dotnet-install.sh -c 2.1 --install-dir /usr/share/dotnet
RUN /tmp/dotnet-install.sh -c 3.0 --install-dir /usr/share/dotnet
RUN /tmp/dotnet-install.sh -c 3.1 --install-dir /usr/share/dotnet

