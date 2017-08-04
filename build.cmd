set Configuration=Release
set "PackageOutputPath=%~dp0\artifacts\nupkgs"

dotnet restore "%~dp0\src\Sln\Sln.csproj"
@if ERRORLEVEL 1 exit /b 1

dotnet pack "%~dp0\src\Sln\Sln.csproj"
@if ERRORLEVEL 1 exit /b 1

exit /b 0
