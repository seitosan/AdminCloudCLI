FROM microsoft/powershell
LABEL maintainer="seitoworld@gmail.com"
LABEL version="0.1"
FROM azuresdk/azure-powershell-core
RUN pwsh -c "Save-module -Name AWSPowerShell -Path /opt/microsoft/powershell/6.0.0-beta.9/Modules/ "&& \
    pwsh -c "Install-Module -Name AWSPowershell"
FROM vmware/powerclicore
COPY config/Microsoft.PowerShell_profile.ps1 /root/.config/powershell/
CMD ["powershell"]