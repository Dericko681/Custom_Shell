# Customise_Shell Environment
Creating a customized shell environment involves configuring various aspects of your shell to make it more personalized and functional. 
## Quidesteps
- **Choose Your Shell**

Common shell options include:

    Bash: Default for many Linux systems.
    Zsh: Highly customizable with plugins (via oh-my-zsh).
    
- **Edit Configuration Files**

Configuration files store shell settings. Depending on the shell:

    Bash:~/.bashrc or ~/.bash_profile
    Zsh: ~/.zshrc
Edit these files using a text editor like ``nano``, ``vim``, or ``code (VSCode)``.
 
 - **Customize Prompt**

Modify the prompt to include information like the username, hostname, working directory, or Git status.

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
alias gc=``git clone``
alias ll=``ls -la``

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


