ANSIBLE= ansible-playbook
HOSTS=inventory/hosts.ini
EMACS=emacs

.PHONY: provision

tangle: README.org
	emacs $< --batch --eval '(org-babel-tangle-file "README.org")'

provision: tangle
	${ANSIBLE} -i ${HOSTS} provision-wiki-js.yml
