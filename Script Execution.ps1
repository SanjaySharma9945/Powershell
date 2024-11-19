<# 
    script execution
        -either you will be allowed to run the script or denied.

    ways to execute a script:
        1. local - infront of the system
        2. remote - different lication

    To check the current execution policy:
        # Get-ExecutionPolicy

    Execution policy 
        - EP is of 4 types"
            1. Unrestricted
                - it will allow local and remote user to run ANY script.
                - the most unsecured policy, not to be used in production.
            
            2. Restricted
                - it will NOT allow local or remote user to run ANY script.

            3. RemoteSigned
                - local user is not required to run script with Digital Certificate, but 
                - remote users must have a Digital Certificate binded with the script.

            4. AllSigned
                - both local and remote users must have a digital certificate.
    
    How to create a Digital Certificate?
        - makecert.exe (depricated)
        - IIS web server
        - Linux --> openssl
        - New-SelfSignedCertificate (PS v5.0)

    To change the ExecutionPolicy: --> administrator
        # Set-ExecutionPolicy <policy-name> 

    To create a digitally signed script:
        - create a script                             --> save it also.
        - create a certificate                        --> New-SelfSignedCertificate
        - export the certificate                      --> cmdlets, GUI
        - import/install the certificate              --> cmdlet, GUI
        - bind the certificate with the script        --> Set-AuthenticodeSignature
#>

# 1. Create a script 
    # path --> ""

# 2. create a certificate 
New-SelfSignedCertificate -CertStoreLocation Cert:\CurrentUser\My `
-Subject "CN=demoCert01" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

# listing the cert
Get-ChildItem Cert:\CurrentUser\My

# cmdlets for the certificate
Get-Command *pfx*

# export the cert
# Export-pfxCertificate
# get-help Export-pfxCertificate -Online
# Win+R --> Certmgr.msc --> 

# import/install certificate 
# Import-pfxCertificate
# to import, go to the location and install the cert by double-clicking on it.

# get-Help Import-PfxCertificate

$file = "C:\Users\Administrator\Downloads\script1.ps1"
$cert = Get-ChildItem Cert:\CurrentUser\My\B4F7E9DF802BBD2024B5F76DC7E0D6D464C9FC5F
Set-AuthenticodeSignature -Certificate $cert -FilePath $file                   # if the status is unknown or invalid then there is something wrong in the script

Get-ExecutionPolicy