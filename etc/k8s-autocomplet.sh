#!/bin/bash
alias k=kubectl
complete -F __start_kubectl k
source <(kubectl completion zsh)  # 현재 셸에 zsh의 자동 완성 설정
echo "[[ $commands[kubectl] ]] && source <(kubectl completion zsh)" >> ~/.zshrc
