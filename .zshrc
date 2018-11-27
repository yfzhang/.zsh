# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    export ZSH=/Users/yf/.oh-my-zsh
else
    export ZSH=/home/yf/.oh-my-zsh
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    # for mac
    ZSH_THEME="agnoster"
    export PATH="/Users/yf/miniconda3/bin:$PATH"
else
    # for linux
    setxkbmap -option caps:swapescape
    export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
    export PATH=/home/yf/download/cling/tools/packaging/cling-build/builddir/bin${PATH:+:${PATH}}
    #export PATH="/home/yf/anaconda3/bin:$PATH"
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/yf/Downloads/mjpro131/bin"
    export CUDA_HOME=/usr/local/cuda
    export PYTHONPATH=/home/yf/download/tensorflow_models:$PYTHONPATH
    export PYTHONPATH=/home/yf/git_repo/ros_tf_utils:$PYTHONPATH

    #export ROS_MASTER_URI=http://tegra-ubuntu:11311
    export ROS_MASTER_URI=http://yf:11311
    export ROS_HOSTNAME=yf

    # ssh
    alias sshmanifold='ssh ubuntu@192.168.0.170'
    alias sshtx2='ssh nvidia@192.168.0.171'
    alias sshhummingbird='ssh nvidia@192.168.0.113'
    alias sshodroid='ssh odroid@192.168.0.111'

    # filming drone
    alias takeoff='rosservice call /sm/takeoffSrv'
    alias opt='roslaunch filming_optimizer drone_opt_node.launch'
    alias tracking='roslaunch filming_object_tracking detection_tracking_test.launch'
    alias fakeactor='roslaunch filming_motion_prediction fake_actor.launch'
    alias vc='roslaunch filming_vehicle_control vehicle_control_test.launch'

    # catkin
    alias explore='source ~/explore_ws/devel/setup.zsh'
    alias source_catkin='source ~/catkin_ws/devel/setup.zsh'
    alias ros='source /opt/ros/kinetic/setup.zsh; source ~/catkin_ws/devel/setup.zsh'
    alias airsim='source /opt/ros/kinetic/setup.zsh; source ~/airsim_ws/devel/setup.zsh'
    alias main='source /opt/ros/kinetic/setup.zsh; source ~/main_ws/devel/setup.zsh'
    alias c="catkin build --this"
    alias s="source ~/catkin_ws/devel/setup.zsh; source ~/.zshrc"

    # conda
    alias useconda='export PATH="/home/yf/anaconda3/bin:$PATH"'
    alias py36base='source activate py36_base'

    # network
    alias scan='sudo arp-scan --interface=enp0s31f6 --localnet' # scan hosts in local network

    # system
    alias clearcache='echo 3 | sudo tee /proc/sys/vm/drop_caches'
    alias clearswap='sudo swapoff -a'

    # docker
    alias dockerubuntu='docker run -v /data/datasets/yanfu:/data/datasets/yanfu -it zyf7284563/ubuntu:16.04'
    alias docker_rm_existed='docker rm $(docker ps -q -f status=exited)'

    # others
    alias unreal='/home/yf/download/UnrealEngine/Engine/Binaries/Linux/UE4Editor'
    alias clion='/usr/local/bin/clion'
    alias charm='/usr/local/bin/charm'
    alias open='xdg-open'
    alias gpu='watch -n 0.5 nvidia-smi'
fi

# others
alias zshrc='vim ~/.zshrc'

# filesystem
alias gascola='cd ~/data/0r3h/gascola17_fall'
alias ca='cd ~/catkin_ws/src/ca'
alias yanfu='cd /data/datasets/yanfu/'
alias paper='cd ~/Dropbox/论文'
alias sch='cd ~/git_repo/schweizer_messer'
alias yanfu='cd /data/datasets/yanfu'

alias fanqiang='ssh -NfD 7777 yf@128.2.176.221 -p 4545'
alias sshvisdom='ssh -f -N -L 8097:localhost:8097 yf@aeroscout2.frc.ri.cmu.edu -p 4545'
alias sshhummingbird='ssh nvidia@10.5.1.1'
alias sshskydio='ssh root@192.168.10.1'
alias sshjupyter='ssh -L localhost:8888:localhost:8888 yf@aeroscout2.frc.ri.cmu.edu -p 4545'
alias sshperceptron='ssh zyanfu@perceptron.ri.cmu.edu'
alias sshyf='ssh yf@aeroscout2.frc.ri.cmu.edu -p 4545'
alias sshmanifold='ssh ubuntu@192.168.5.170'

# git
alias gitpullall='for i in */.git; do ( echo $i; cd $i/..; git pull; ); done' # pull all git repos in current directory
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gl="git log"
alias ga="git add ."
alias gitupdate="git add .; git commit -m 'update'; git push origin"
