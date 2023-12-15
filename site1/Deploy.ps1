npm run build

$buildOutputFolder = "dist"
$publishFolder = Join-Path $buildOutputFolder "public"
$imagesFolder = Join-Path $buildOutputFolder "images"

if (-not (Test-Path $publishFolder)) {
    New-Item -ItemType Directory -Path $publishFolder
}

if (Test-Path $imagesFolder) {
    Move-Item -Path $imagesFolder -Destination $publishFolder
} else {
    Write-Host "The 'images' folder does not exist in the specified location."
}

start dist/index.html
