cd -- "$(dirname "$BASH_SOURCE")/.."
vagrant ssh -c "sudo sudo -u josh_project HOME=/home/josh_project git -C /webapps/josh_project/src/josh_project add /webapps/josh_project/src/josh_project"
echo "Enter commit message:"
read commitmsg
vagrant ssh -c "sudo sudo -u josh_project HOME=/home/josh_project git -C /webapps/josh_project/src/josh_project commit -am '$commitmsg'"
vagrant ssh -c "sudo sudo -u josh_project HOME=/home/josh_project git -C /webapps/josh_project/src/josh_project push"
echo "Git commit complete!"