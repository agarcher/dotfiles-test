# dotfiles

## ubuntu
Tested only in an ubuntu docker container.

```bash
docker run -t -i --rm ubuntu bash
```

Use this script to install.

```bash
apt update
apt install --assume-yes git
git clone https://github.com/agarcher/dotfiles
./install.sh
```
