from web3 import Web3

infura_url = "https://mainnet.infura.io/v3/YOUR_INFURA_API_KEY_GOES_HERE"
web3 = Web3(Web3.HTTPProvider(infura_url))
print(web3.isConnected())
print(web3.eth.blockNumber)
account = "ACCOUNT_ADDRESS"
balance = web3.eth.getBalance(account)