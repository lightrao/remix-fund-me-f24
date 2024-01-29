// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {
    address public immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }
}

contract FundMe2 {
    address public immutable i_owner = msg.sender;
}
