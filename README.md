Files for fast setup

```bash
# Run the following commands in the terminal
curl -s https://raw.githubusercontent.com/JavaliMZ/setup_kali/main/setup.sh | sh
```

Cli Prompt:

```bash
export PS1='%F{%(#.blue.green)}[%B%F{white}$(date -u +"%d$(echo $(date -u +%b) | tr '[:lower:]' '[:upper:]')%Y - %HH%M UTC")%b%F{%(#.blue.green)}]▶%B%(#.%F{red}#.%F{blue}$)%b%F{reset}'
echo "export PS1='%F{%(#.blue.green)}[%B%F{white}$(date -u +\"%d$(echo $(date -u +%b) | tr '[:lower:]' '[:upper:]')%Y - %HH%M UTC\")%b%F{%(#.blue.green)}]▶%B%(#.%F{red}#.%F{blue}$)%b%F{reset}'" >> .zshrc
```
