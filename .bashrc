#########

# Aliases

#########


alias ll="ls -laa"
alias histg="history | grep"
alias ..="cd .."
alias gs="git status"
alias gcm="git checkout master"
alias gc-="git checkout -"
alias gp-="git pull-"

# Start SSH Agent
#----------------------------

SSH_ENV="$HOME/.ssh/environment"

function run_ssh_env {
  . "${SSH_ENV}" > /dev/null
}

function start_ssh_agent {
  echo "Initializing new SSH agent..."
  ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo "succeeded"
  chmod 600 "${SSH_ENV}"

  run_ssh_env;

  ssh-add ~/.ssh/KEY; #TODO
}

if [ -f "${SSH_ENV}" ]; then
  run_ssh_env;
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_ssh_agent;
  }
else
  start_ssh_agent;
fi

# PROMPT
#----------------------------

eval "$(oh-my-posh --init --shell bash --config $POSH_THEMES_PATH\\1_shell.omp.json)"
