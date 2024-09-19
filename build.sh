set -eux

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ls /home/linuxbrew/.linuxbrew/bin
/home/linuxbrew/.linuxbrew/bin/brew fetch --verbose --os sonoma --arch arm grafana 
tar -xf /home/runner/.cache/Homebrew/downloads/c02e4cf0855eb9a45d1b15dd1775e52847e7467a5da0f96ae4a3a4275a201493--grafana--11.2.0.arm64_sonoma.bottle.tar.gz

mkdir -p grafana-v11.2.0/bin
mv grafana/11.2.0/bin/grafana grafana-v11.2.0/bin/
mv grafana/11.2.0/share/grafana/{public,conf} grafana-v11.2.0/
tar -czf grafana_11.2.0_darwin_arm64.tar.gz grafana-v11.2.0
