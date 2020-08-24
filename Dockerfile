FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app
# For other projects 
# COPY ./WebApp001/*.sln    ./WebApp001/
# COPY ./WebApp001/*.csproj ./WebApp001/
# COPY ./WebApp001/*.config ./WebApp001/
# WORKDIR /app/WebApp001/   
# RUN NuGet Restore

COPY ./WebApp001/. ./
#COPY ./WebApp001/. ./WebApp001/
RUN msbuild /p:Configuration=Release

FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8 AS final
WORKDIR /inetpub/wwwroot
COPY --from=build /app/. ./
#COPY --from=build /app/WebApp001/. ./