set -eux

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ls /home/linuxbrew/.linuxbrew/bin
/home/linuxbrew/.linuxbrew/bin/brew fetch --verbose --os sonoma --arch arm grafana 
tar -xf /home/runner/.cache/Homebrew/downloads/65e4d7e58696b3362cb45039f825177ca2d2d5918d62d76d9fd016a10a8b9540--grafana--10.3.1.arm64_sonoma.bottle.tar.gz

mkdir -p grafana-v10.3.1/bin
mv grafana/10.3.1/bin/grafana grafana-v10.3.1/bin/
mv grafana/10.3.1/share/grafana/{public,conf,plugins-bundled} grafana-v10.3.1/
ls grafana-v10.3.1/
tar -czf grafana_10.3.1_darwin_arm64.tar.gz grafana-v10.3.1
