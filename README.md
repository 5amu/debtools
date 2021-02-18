This is my own PPA hosted on Github (better that launchpad anyway). The idea is to make the installation of certain tools, developed by me, faster.

## install (add ppa to apt sources)

```bash
curl -s --compressed "https://ppa.casali.no/key.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/5amu-debtools.list "https://ppa.casali.no/5amu-debtools.list"
sudo apt update
```

*TODO*: create install-ppa.sh to automate.

## packages

```
{% include_relative Packages %}
```
