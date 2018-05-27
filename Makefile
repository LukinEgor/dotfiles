prepare:
	brew install ansible

setup:
	ansible-playbook -i hosts setup.yml -vvvv
