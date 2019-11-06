cd -- "$(dirname "$BASH_SOURCE")/.."
echo "Your email: "
read email
echo "Your name: "
read name
vagrant ssh -c "sudo sudo -u josh_project HOME=/home/josh_project git -C /webapps/josh_project/src/josh_project config --global user.email $email"
vagrant ssh -c "sudo sudo -u josh_project HOME=/home/josh_project git -C /webapps/josh_project/src/josh_project config --global user.name '$name'"
echo "Git config update complete!"