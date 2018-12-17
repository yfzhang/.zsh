# .zsh
## 安装
- 安装oh my zsh
  - `sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`
- 安装插件
  - `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
  - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`
  - `git clone https://github.com/chrissicool/zsh-256color.git $ZSH_CUSTOM/plugins/zsh-256color`
- clone配置文件
  - `cd ~; git clone git@github.com:yfzhang/.zsh.git`
- 创建symbolic link
  - `ln -s .zsh/.zshrc .zshrc`
