From:

https://stackoverflow.com/questions/67208384/unable-to-install-go-tools-on-wsl

Summing other answers made a script, it works for Ubuntu (wsl2 for Windows)

#!/bin/sh
sudo mkdir -p /usr/local/share/ca-certificates/extra
true | openssl s_client -connect $1:443 2>/dev/null | openssl x509 > $1.pem
mv $1.pem $1.crt
sudo mv $1.crt /usr/local/share/ca-certificates/extra/$1.crt
sudo update-ca-certificates
Usage

sudo ./ca_resolver.sh proxy.golang.org

If you add script path to .profile or .bashrc or .zshrc

export PATH=~/scripts/:$PATH

It is easier

sudo ca_resolver.sh proxy.golang.org
