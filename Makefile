infra:
	git pull
	terraform init
	terraform apply -auto-approve -var ssh_username=manoj -var ssh_password=Manu@19jn5a0508

ansible:
	git pull
	ansible-playbook -i $(tool_name)-internal.azdevopsb82.online, tool-setup.yaml -e ansible_user=manoj -e ansible_password=Manu@19jn5a0508 -e tool_name=$(tool_name)