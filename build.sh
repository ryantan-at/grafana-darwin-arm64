set -eux

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ls /home/linuxbrew/.linuxbrew/bin
/home/linuxbrew/.linuxbrew/bin/brew fetch --verbose --os sonoma --arch arm grafana 
tar -xf /home/runner/.cache/Homebrew/downloads/aa45e071206c88353b93cebeb1c9f0314d208c27f0329cbd04f98ade7b8094e4--grafana--11.2.0.arm64_sonoma.bottle.tar.gz

mkdir -p grafana-v11.2.0/bin
mv grafana/11.2.0/bin/grafana grafana-v11.2.0/bin/
mv grafana/11.2.0/share/grafana/{public,conf} grafana-v11.2.0/
tar -czf grafana_11.2.0_darwin_arm64.tar.gz grafana-v11.2.0
