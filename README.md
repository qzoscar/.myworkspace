# .myworkspace


## init

```shell
git submodule init
git submodule update
```

## (Optional) Install zsh

Ubuntu install zsh

```
sudo apt update
sudo apt install zsh -y

chsh -s /bin/zsh
```

## Install oh-my-zsh
install tools

```
sudo apt install autojump
```

```
ln -sf ~/.myworkspace/.zshrc ~/.zshrc
```


## develop environment

### go
```
sh install_go.sh
```

### k8s

1. install kubectl

- Ubuntu
```
sudo snap install kubectl --classic
kubectl version --client
```
- Mac
```
brew install kubectl
```

2. install krew
```
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
```

3. install switch-config plugin


## Python
1. anaconda config
make a soft link
```
sudo ln -s /usr/bin/conda path/to/anaconda/bin/conda
```
