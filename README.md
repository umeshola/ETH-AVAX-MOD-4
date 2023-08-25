# Degen Token (ERC-20): Unlocking the Future of Gaming

This is my smart contract repository for Metacrafters AVAX Course Module 4. In this Solidity contract implements a basic token management system that allows minting, burning, transferring, and redeeming rewards using the DEGEN token.

## Features

- **Minting:** Only the contract owner can mint new DEGEN tokens, increasing the total supply.
- **Burning:** Tokens can be burned, reducing the total supply.
- **Transferring:** DEGEN tokens can be transferred between addresses.
- **Redeeming Rewards:** Users can redeem various rewards using their DEGEN tokens.

## Functions

- `mint(address to, uint256 amount)`: Mint new DEGEN tokens to a specified address. Only the contract owner can execute this function.
- `burn(address from, uint256 amount)`: Burn a specific amount of DEGEN tokens from a specified address.
- `transfer(address to, uint256 amount)`: Transfer a certain amount of DEGEN tokens from the sender's address to the specified address.
- `redeem(address to, uint256 amount, uint256 rewardType)`: Redeem rewards using DEGEN tokens. Different rewards have different types (rewardType) and token requirements.

## How to Use

1. Open the contract in Remix IDE using the following link: [Remix IDE](https://remix.ethereum.org/)
2. Deploy the contract by selecting the appropriate Solidity compiler version (0.8.18 or higher) and clicking the "Deploy" button.

3. Interact with the contract using the provided functions in Remix IDE.

4. To mint tokens, make sure you're logged into Remix with the contract owner's address and execute the `mint` function with the recipient's address and the desired amount.

5. To redeem rewards, execute the `redeem` function with the recipient's address, the amount of tokens to spend, and the corresponding reward type (1 to 4).

6. Explore other functions like `burn` and `transfer` for managing DEGEN tokens.

## Event

The contract emits a `RewardRedeemed` event when a reward is successfully redeemed. The event provides information about the recipient's address and the type of reward redeemed.

## Owner Name
**Umesh Ola - 21BCS10670**

