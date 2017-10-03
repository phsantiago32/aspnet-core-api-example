FROM microsoft/dotnet

ARG distFolder=aspnet-core-api-example/bin/Release/netcoreapp1.1
ARG configuration=Release
ARG apiProtocol=https
ARG apiPort=8000
ARG appFile=aspnet-core-api-example.dll

RUN dotnet publish -c ${configuration}
RUN mv ${distFolder} /app

WORKDIR /app
EXPOSE ${apiPort}
ENTRYPOINT ["dotnet", $appFile]
