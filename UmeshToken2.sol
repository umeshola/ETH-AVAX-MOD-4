// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 

contract UmeshToken2 {

    uint256 public totalSupply;
    address public owner;
    string public name = "UMESH";
    string public symbol = "INR";
    uint8 public decimals = 0;

    constructor() {
        owner = msg.sender;
    }

    mapping(address => uint256) public balances;

    // Mint function
    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only the contract owner can mint tokens.");
        require(amount > 0, "Amount must be greater than 0.");

        balances[to] += amount;
        totalSupply += amount;
    }

    // Burn function
    function burn(address from, uint256 amount) public {
        require(amount <= balances[from], "Low balance!!");

        balances[from] -= amount;
        totalSupply -= amount;
    }

    // Transfer function
    function transfer(address to, uint256 amount) public {
        require(amount <= balances[msg.sender], "Low balance!!");
        require(to != address(0), "Zero address");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    // Redeem function
    function redeem(address to, uint256 amount, uint256 rewardType) public { 
        require(amount <= balances[to], "Low balance!!");

        if (rewardType == 1) {
            require(amount >= 50, "Insufficient tokens for Reward 1: VIP Access to CU Events");
            burn(to, amount);

            emit RewardRedeemed(to, "VIP Access to CU Events");
        } else if (rewardType == 2) {
            require(amount >= 100, "Insufficient tokens for Reward 2: Customized Graduation Robe");
            burn(to, amount);

            emit RewardRedeemed(to, "Customized Graduation Robe");
        } else if (rewardType == 3) {
            require(amount >= 200, "Insufficient tokens for Reward 3: Research Assistant Position");
            burn(to, amount);

            emit RewardRedeemed(to, "Research Assistant Position");
        } else if (rewardType == 4) {
            require(amount >= 300, "Insufficient tokens for Reward 4: Semester Tuition Waiver");
            burn(to, amount);

            emit RewardRedeemed(to, "Semester Tuition Waiver");
        } else {
            revert("Invalid reward type");
        }
    }

    event RewardRedeemed(address indexed recipient, string reward);
}