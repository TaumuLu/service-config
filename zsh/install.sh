# yum install -y zsh
sudo apt-get install zsh   # Debian系列，Ubuntu

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "-------------"
echo "replace zshrc"
echo "-------------"

curl -s https://raw.githubusercontent.com/TaumuLu/service-config/refs/heads/master/zsh/.zshrc -o ~/.zshrc

zsh

echo "-------------"
echo "source ~/.zshrc"
echo "-------------"

# 修改配置后执行
