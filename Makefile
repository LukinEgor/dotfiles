prepare:
	sudo apt install ansible
	ansible-galaxy install angstwad.docker_ubuntu

setup:
	ansible-playbook -i hosts setup.yml --ask-become-pass -vvvv
