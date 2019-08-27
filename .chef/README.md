# generate keys, with blank password/passphrase
#
ssh-keygen -f devhost.pem -P ""
ssh-keygen -f validation.pem -P ""

# Windows Powershell
ssh-keygen --% -f devhost.pem -P ""
ssh-keygen --% -f validation.pem -P ""

# Questions:
1. When is the validation.pem used?
