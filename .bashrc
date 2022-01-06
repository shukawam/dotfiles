# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
[ -f /home/opc/.bash_history ] || rm -f /home/opc/.bash_history && touch /home/opc/.bash_history 

# some more ls aliases
alias ll='ls -alF'

# Python
alias python='python3'
alias pip='pip3'

# OCI CLI settings
# export OCI_CLI_AUTH=instance_principal
export OCI_CLI_AUTH=api_key
export C=ocid1.compartment.oc1..aaaaaaaanjtbllhqxcg67dq7em3vto2mvsbc6pbgk4pw6cx37afzk3tngmoa
export OCI_CLI_PROFILE=TOKYO

# Kubernetes settings
export KUBECONFIG=$HOME/.kube/config
source <(kubectl completion bash)
export EDITOR=vim
alias k="kubectl"
complete -F __start_kubectl k

# Java Build Tools settings
export MAVEN_HOME=/opt/apache-maven

export PATH=$PATH:$KAFKA_HOME/bin:$MAVEN_HOME/bin
export PATH=/home/opc/bin:$PATH

[[ -e "/home/opc/lib/oracle-cli/lib/python3.6/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "/home/opc/lib/oracle-cli/lib/python3.6/site-packages/oci_cli/bin/oci_autocomplete.sh"
