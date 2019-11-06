export VAGRANT_GIT_EMAIL=$(shell git config --get user.email)
export VAGRANT_GIT_NAME=$(shell git config --get user.name)

spinup:
	echo "192.168.50.48  joshproject.local" | sudo tee -a /etc/hosts
	cp ~/.ssh/id_rsa git_ssh_key
	vagrant up
	sleep 5s
	open -a "Google Chrome" http://joshproject.local
update:
	vagrant ssh -c "sudo sudo -u josh_project git -C /webapps/josh_project/src/josh_project pull"
	vagrant ssh -c "sudo sudo -u josh_project HOME=/home/josh_project /webapps/josh_project/bin/pip install -r /webapps/josh_project/src/josh_project/requirements.pip --upgrade"
	vagrant ssh -c "sudo sudo -u josh_project /webapps/josh_project/bin/python /webapps/josh_project/bin/manage.py migrate"