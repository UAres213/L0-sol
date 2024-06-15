// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    //serveral ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1,2,3];
    //fixed sized array, all elements initialize to 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256){
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function push(uint256 i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLenth() public view returns (uint256){
        return arr.length;
    }

    function remove(uint256 index) public {
         // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    // function examples() external {
    //     // create array in memory, only fixed size can be created
    //     uint[] memory a = new uint[](5);
    // }

}