# Customise_Shell Environment
Creating a customized shell environment involves configuring various aspects of your shell to make it more personalized and functional. 
## Quidesteps
- **Choose Your Shell**

Common shell options include:

    Bash: Default for many Linux systems.
    Zsh: Highly customizable with plugins (via oh-my-zsh).

**Install Your Shell**:
On most Unix-based systems, bash or zsh is pre-installed. To install a new shell:

On Ubuntu: ``sudo apt update && sudo apt install zsh``

- **Edit Configuration Files**

Configuration files store shell settings. Depending on the shell:

    Bash:~/.bashrc or ~/.bash_profile
    Zsh: ~/.zshrc
For the purpose of this project we will work with zsh.
Edit this files using a text editor like ``nano``, ``vim``, or ``code (VSCode)``.
```sh
nano .zshrc



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
in bash you can use the command   ``export PS1="\u@\h:\w$ "``

Variables:

    ``\u:`` Username

    ``\h``: Hostname
    
    ``\w``: Working directory

-**Zsh**: Use ``PROMPT`` or themes from ``oh-my-zsh``.
using the command ``PROMPT='%n@%m:%~%# '``

-  **Install Plugins**

    For Bash: Use tools like ``bash-it`` or write custom scripts.

    For Zsh: Install ``oh-my-zsh`` and enable plugins.

- **Set Environment Variables** 

Define environment variables in your shell configuration file:``export PATH=$PATH:/your/custom/path``

- **Add Aliases**

Create shortcuts for frequently used commands.e.g; 

. alias gc=``git clone``: primarily used to point to an existing repo and make a clone or copy of that repo at in a new directory, at another location

. alias ll=``ls -la`` :lists directory contents in a long format, including hidden files

. alias docker = ``multipass exec myvm -- docker`` :allows you to execute Docker commands within a Multipass virtual machine named myvm directly from your host machine’s command line

. alias gm=``git commit -s -m`` :command in Git is used to commit changes to the local repository with a signed-off message and a commit message

. alias update=``sudo apt update`` :updates the package information from the configured repositories on a Debian-based system like Ubuntu


- **Install Themes**

    For Zsh: Use oh-my-zsh themes like ``Robby Russell``.
    For Bash: Customize using ``PS1``

- **Use Shell Scripts**

Add useful custom scripts to automate tasks:

Save scripts in a directory like ``~/scripts``.
    Add the directory to your PATH:export ``PATH=$PATH:~/scripts``

- **Enable Syntax Highlighting and Auto-Suggestions**

    Bash: Use the ``bash-git-prompt`` or install ``bash-completion``.
    Zsh: Install plugins like ``zsh-syntax-highlighting`` and ``zsh-autosuggestions``.

- **Test and Reload**

After making changes to configuration files, reload the shell:

For Bash/Zsh:``source ~/.bashrc``  # or ``~/.zshrc``


