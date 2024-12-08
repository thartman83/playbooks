ANSIBLE=ansible-playbook
HOSTS=inventory/hosts.ini
EMACS=emacs

.PHONY: tangle archiso

tangle: README.org
	${EMACS} $< --batch --eval '(org-babel-tangle-file "README.org")'

archiso: tangle
	${ANSIBLE} -i ${HOSTS} main.yml
