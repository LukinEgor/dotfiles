install_fish:
	ansible-playbook playbook.yml -i hosts/local -vv

install_ansible:
	sudo apt-get install -y software-properties-common
	sudo apt-add-repository -y ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install -y ansible
