# CloudPanel install on Linux
[![Build Status](https://raw.githubusercontent.com/ariadata/ariadata-files/main/public-assets/images/ariadata_logo.png)](https://ariadata.co)

![](https://img.shields.io/github/stars/ariadata/install-cloudpanel.svg)
![](https://img.shields.io/github/watchers/ariadata/install-cloudpanel.svg)
![](https://img.shields.io/github/forks/ariadata/install-cloudpanel.svg)

### This runs on : linux with `root` access (debian-11+,ubuntu-22+)

---
#### 1- After login to ssh via `root` user , [use this link](https://www.cloudpanel.io/docs/v2/getting-started/other/) to install [cloudpanel.io](https://www.cloudpanel.io) basic.

#### 2- Run PostInstall script by using this command :
```sh
bash <(curl -sSL https://github.com/ariadata/install-cloudpanel/raw/main/cloudpanel-post-install.sh)
```

```
according to this :
https://www.cloudpanel.io/docs/v2/getting-started/other/

apt update && apt upgrade -y && apt -y install supervisor
apt remove nodejs -y
apt autoremove -y


curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs
npm install -g npm

#### Install Yarn Package Manager (debian)
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update && apt upgrade -y && apt install -y yarn

reboot
```
---
#### 3- goto https://your-ip:8443


Done!
