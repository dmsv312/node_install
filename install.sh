sudo apt-get update
sudo apt-get install -y gnupg2 curl software-properties-common
curl -o - https://releases.algorand.com/key.pub | sudo tee /etc/apt/trusted.gpg.d/algorand.asc
sudo add-apt-repository "deb [arch=amd64] https://releases.algorand.com/deb/ stable main"
sudo apt-get update
sudo apt-get install -y algorand-devtools
cd /var/lib/algorand/genesis/testnet
sudo cp genesis.json /var/lib/algorand/
systemctl restart algorand
