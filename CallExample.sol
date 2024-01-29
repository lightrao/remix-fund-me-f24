// The interface of the Greeter contract
interface IGreeter {
    function greet(string calldata name) external payable returns (string memory);
}

// The address of the Greeter contract
address greeter = 0x123456789abcdef0123456789abcdef0123456789;

// The amount of Ether to send in wei
uint256 amount = 1 ether;

// The data to send, which is the encoded function call to greet
bytes memory data = abi.encodeWithSelector(IGreeter.greet.selector, "Alice");

// The call method returns a boolean and a bytes array
(bool success, bytes memory returnData) = payable(greeter).call{value: amount}(data);

// Check the result of the call
if (success) {
    // Decode the return data as a string
    string memory message = abi.decode(returnData, (string));
    // Print the message
    console.log(message); // "Hello, Alice!"
} else {
    // Handle the failure case
    revert("Call failed");
}
