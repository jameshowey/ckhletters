param (
    [string]$customLevel = "20%,100%,0.3"
)
# Define the input and output directories
$inputDirectory = ".\inputs"
$outputDirectory = ".\outputs"

# Get all files in the input directory
$inputFiles = Get-ChildItem $inputDirectory

# Loop through each input file and apply the command
foreach ($file in $inputFiles) {
    # Build the input and output paths
    $inputPath = Join-Path $inputDirectory $file.Name
    $outputPath = Join-Path $outputDirectory $file.Name

    # Build the command
    $command = "magick convert `"$inputPath`" -level $customLevel `"$outputPath`""
    
    # Log the command to the console
    Write-Host $command

    # Execute the command
    Invoke-Expression $command
}
