#syntax=docker/dockerfile:1.2

# 1. STAGE
# Responsible for .NET packages restoration a caching this packages
FROM mcr.microsoft.com/dotnet/sdk:6.0.300-alpine3.15 AS restore
WORKDIR /src

COPY ["services/Calculator.Api/Calculator.Api.csproj", "services/Calculator.Api/"]

RUN --mount=type=cache,id=nuget-packages,target=/root/.nuget/packages \
  dotnet restore \
  "services/Calculator.Api/Calculator.Api.csproj"


# 2. STAGE
# Responsible for building aplication
FROM restore AS publish

COPY ["services/Calculator.Api", "services/Calculator.Api"]

RUN --mount=type=cache,id=nuget-packages,target=/root/.nuget/packages \
  dotnet publish \
  "services/Calculator.Api/Calculator.Api.csproj" \
  --nologo \
  --no-restore \
  /maxcpucount:1 \
  --no-self-contained \
  --configuration Release \
  --output /app/publish


# 3. STAGE
# Responsible for creation of final image
FROM mcr.microsoft.com/dotnet/aspnet:6.0.5-alpine3.15 AS final
WORKDIR /app
EXPOSE 80
ENTRYPOINT ["dotnet", "Calculator.Api.dll"]
COPY --from=publish /app/publish .
