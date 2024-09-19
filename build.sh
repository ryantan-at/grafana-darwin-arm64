set -eux

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ls /home/linuxbrew/.linuxbrew/bin
/home/linuxbrew/.linuxbrew/bin/brew fetch --verbose --os sonoma --arch arm grafana 
tar -xf /home/runner/.cache/Homebrew/downloads/284947cbafa943186e6119c1c1fb8747e934d7ab892be1b2db472d5ba9f5310e--grafana--11.2.0.arm64_sonoma.bottle.tar.gz

mkdir -p grafana-v11.2.0/bin
mv grafana/11.2.0/bin/grafana grafana-v11.2.0/bin/
mv grafana/11.2.0/share/grafana/{public,conf} grafana-v11.2.0/
tar -czf grafana_11.2.0_darwin_arm64.tar.gz grafana-v11.2.0
