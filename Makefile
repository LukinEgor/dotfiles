prepare:
	sudo apt install ansible

setup:
	ansible-playbook -i hosts setup.yml --ask-become-pass -vvvv
