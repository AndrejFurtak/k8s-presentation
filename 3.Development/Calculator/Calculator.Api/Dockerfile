#syntax=docker/dockerfile:1.2


# 1. STAGE
# Responsible for .NET packages restoration a caching this packages
FROM mcr.microsoft.com/dotnet/sdk:5.0.400-focal AS restore
WORKDIR /src

COPY ["Calculator/Calculator.Services/Calculator.Services.csproj", "Calculator/Calculator.Services/"]
COPY ["Calculator/Calculator.Api/Calculator.Api.csproj", "Calculator/Calculator.Api/"]

RUN --mount=type=cache,id=nuget-packages,target=/root/.nuget/packages \
  dotnet restore \
  "Calculator/Calculator.Api/Calculator.Api.csproj"


# 2. STAGE
# Responsible for building aplication
FROM restore AS publish

COPY ["Calculator", "Calculator"]

RUN --mount=type=cache,id=nuget-packages,target=/root/.nuget/packages \
  dotnet publish \
  "Calculator/Calculator.Api/Calculator.Api.csproj" \
  --nologo \
  --no-restore \
  /maxcpucount:1 \
  --no-self-contained \
  --configuration Release \
  --output /app/publish


# 3. STAGE
# Responsible for creation of final image
FROM mcr.microsoft.com/dotnet/aspnet:5.0.9-focal AS final
WORKDIR /app
EXPOSE 80
ENTRYPOINT ["dotnet", "Calculator.Api.dll"]
COPY --from=publish /app/publish .
