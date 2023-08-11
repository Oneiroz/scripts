#powershell script to remove mock data from PCs before live deployment

#check to see if any mock data is on the PC
$folder = 'C:\ProgramData\Alogent\Branch\Alogent10\XMLData\002832'

if (Test-Path -Path $folder) {
    Write-Host "Mock data exists. Continuing..."
    
    #delete all mock data
    Remove-Item 'C:\ProgramData\Alogent\Branch\Alogent10\XMLData\002832' -Recurse

    Write-Host "All mock data was deleted!"
}
 else {
     Write-Host "This PC does not contain any mock data."
     exit 1
 }