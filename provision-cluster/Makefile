ANSIBLE= ansible-playbook
HOSTS=inventory/hosts.ini
EMACS=emacs

.PHONY: provision unprovision tangle

tangle: README.org
	emacs $< --batch --eval '(org-babel-tangle-file "README.org")'

provision: tangle
	${ANSIBLE} -i ${HOSTS} provision-cluster.yml

unprovision: tangle
	${ANSIBLE} -i ${HOSTS} unprovision-cluster.yml
