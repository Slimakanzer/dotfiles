# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# some git aliases
alias ga="git add"
alias gs="git status"
alias gr="git reset"
alias gc="git commit"
alias gcm="git commit -m"
alias gch="git checkout"
alias gp="git push"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# some docker aliases
alias dimages='docker image list --format "table {{.ID}}\t{{.Repository}}\t{{.Tag}}\t{{.Size}}" | more'
alias dcontainers='docker container ls -a | more'
alias dexec='docker exec -it'
# Usage: drun-amdgpu image
#        ./bootstrap.sh

# AMD docker aliases
alias drun-amdgpu='sudo docker run -it --network=host --device=/dev/kfd --device=/dev/dri --ipc=host --group-add video --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v $HOME/git:/git -w /git'
alias drun-amdgpu-rocm5='sudo docker run -it --network=host --device=/dev/kfd --device=/dev/dri --ipc=host --group-add video --group-add render --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v $HOME/git:/git -w /git'

# NVIDIA docker aliases
alias drun-cuda='sudo docker run -it --network=host --gpus=all --ipc=host -v $HOME/git:/git -w /git '

# MIOpen aliases
alias mi-format='clang-format-10 -style=file -i'
alias mi-build-debug='cmake -DCMAKE_BUILD_TYPE=Debug -MIOPEN_BACKEND=OpenCL -DBUILD_DEV=On .. && make -j32'
