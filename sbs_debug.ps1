
# Stupid Build System

Write-Host ""
Write-Host "--------------------------------------------" -ForegroundColor green
Write-Host "   Stupid Build System (SBS) - v0.1.0" -ForegroundColor green
Write-Host "   Building PRLABL v0.1.0 (in debug mode)" -ForegroundColor green
Write-Host "--------------------------------------------" -ForegroundColor green
Write-Host ""

# Create directories
$null = New-Item -ItemType Directory -Force -Path bin
$null = New-Item -ItemType Directory -Force -Path objs

# Function to check last exit code
function CheckLastExitCode {
  if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "AN ERROR OCCURED! Stopping build script." -ForegroundColor red
    Write-Host "Build unsuccessful." -ForegroundColor red
    Write-Host ""    

    exit
  }
}

# Compile

Write-Host "Compiling src/main.cpp..." -ForegroundColor blue
g++ -c src/main.cpp -o objs/main.o
CheckLastExitCode

Write-Host "Compiling src/util.cpp..." -ForegroundColor blue
g++ -c src/util.cpp -o objs/util.o
CheckLastExitCode

# Link

Write-Host "Linking bin/prlabl.exe..." -ForegroundColor darkblue
g++ objs/*.o -o bin/prlabl.exe
CheckLastExitCode

# Finish up

Write-Host ""
Write-Host "Build successful! You can find the executable in bin/prlabl.exe." -ForegroundColor green
Write-Host ""
