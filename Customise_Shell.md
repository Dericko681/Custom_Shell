# Customise_Shell Environment
Creating a customized shell environment involves configuring various aspects of your shell to make it more personalized and functional. 
## Quidesteps
- **Choose Your Shell**

Common shell options include:

    Bash: Default for many Linux systems.
    Zsh: Highly customizable with plugins (via oh-my-zsh).

**Install Your Shell**:
On most Unix-based systems, bash or zsh is pre-installed. To install a new shell:

On Ubuntu: 
```sh 
sudo apt update && sudo apt install zsh
```

- **Edit Configuration Files**

Configuration files store shell settings. Depending on the shell:

Bash:~/.bashrc or ~/.bash_profile
Zsh: ~/.zshrc


Edit this files using a text editor like ``nano``, ``vim``, or ``code (VSCode)``.
```sh
nano .zshrc
```
or
```sh
code .zshrc
```
 
 - **Customize Prompt**

Modify the prompt to include information like the username, hostname, working directory, or Git status.
prompt

This adds version control to your shell
```she
autoload -Uz vcs_info
precmd() { vcs_info }
```
setup git branch details:
```sh

zstyle ':vcs_info:git:*' formats '%b '
```
That %b is the branch name variable

add these two lines to put your prompt toget
```sh
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
```

```sh
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
var=`hostname`
PROMPT='%F{magenta}%$var \h%F{green}%*%f %F{blue}%~%f %F{red}$
{vcs_info_msg_0_}%f$ '

NAME=" BOSS"
figlet "welcome , $NAME"


```


-**Bash**
in bash you can use the command   
```sh
export PS1="\u@\h:\w$ "
```

Variables:

    ``\u:`` Username

    ``\h``: Hostname
    
    ``\w``: Working directory

-**Zsh**: Use ``PROMPT`` or themes from ``oh-my-zsh``.
using the command 
```sh 
PROMPT='%n@%m:%~%# '
```

-  **Install Plugins**

    For Bash: Use tools like ``bash-it`` or write custom scripts.

    For Zsh: Install ``oh-my-zsh`` and enable plugins.

- **Set Environment Variables** 

Define environment variables in your shell configuration file:``export PATH=$PATH:/your/custom/path``

- **Add Aliases**

Create shortcuts for frequently used commands.e.g; 

```sh
alias gc="git clone"
```
primarily used to point to an existing repo and make a clone or copy of that repo at in a new directory, at another location

```sh
 alias ll="ls -la" 
 ```
 it lists directory contents in a long format, including hidden files

 ```sh
alias docker = "multipass exec myvm -- docker" 
```
it allows you to execute Docker commands within a Multipass virtual machine named myvm directly from your host machine’s command line

```sh
 alias gm="git commit -s -m"
```
command in Git is used to commit changes to the local repository with a signed-off message and a commit message

```sh
alias update="sudo apt update" 
```
updates the package information from the configured repositories on a Debian-based system like Ubuntu

so we got:
```sh
alias gc="git clone"
alias ll="ls -la" 
alias docker="multipass exec myvm -- docker" 
 alias gm="git commit -s -m"
alias update="sudo apt update" 
```
**plugins**
To install plugins like autosuggestions and autocompletions, we recommend this:
https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df

- **Install Themes**

    For Zsh: Use oh-my-zsh themes like ``Robby Russell``.
    first of all install
    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
    then 
    ```sh
    nano .zshrc
    ```
    set
    ```sh
    ZSH_THEME="robbyrussell"
    ```
    and source the file
    ```sh
    source .zshrc
    ```

- **Test and Reload**

After making changes to configuration files, reload the shell:

For Bash/Zsh:``source ~/.bashrc``  # or ``~/.zshrc``


