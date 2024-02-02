set -eux

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/home/linuxbrew/.linuxbrew/bin fetch --verbose --os sonoma --arch arm grafana 
/Users/david.zbarsky/Library/Caches/Homebrew/downloads/65e4d7e58696b3362cb45039f825177ca2d2d5918d62d76d9fd016a10a8b9540--grafana--10.3.1.arm64_sonoma.bottle.tar.gz
