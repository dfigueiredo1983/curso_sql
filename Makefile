# Makefile para inicializar o ssh-agent e adicionar a chave

start-ssh-agent:
	@echo "Inicializando o ssh-agent..."
	@eval $(ssh-agent -s) && ssh-add ~/.ssh/id_sql_github && ssh-add -l

# Comando para fazer o pull com o Git
git-pull: start-ssh-agent
	@git pull
