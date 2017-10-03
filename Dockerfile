FROM microsoft/aspnetcore:1.1
ARG source
WORKDIR /app
EXPOSE 8000
COPY ${source:-obj/Docker/publish} .
ENTRYPOINT ["dotnet", "aspnet-core-api-example.dll"]
