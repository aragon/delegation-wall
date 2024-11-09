// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.25 <0.9.0;

import { Test } from "forge-std/src/Test.sol";
import { console2 } from "forge-std/src/console2.sol";

import { DelegationWall } from "../src/DelegationWall.sol";

interface IERC20 {
  function balanceOf(address account) external view returns (uint256);
}

/// @dev If this is your first time with Forge, read this tutorial in the Foundry Book:
/// https://book.getfoundry.sh/forge/writing-tests
contract DelegationWallTest is Test {
  DelegationWall internal delegationWall;

  /// @dev A function invoked before each test case is run.
  function setUp() public virtual {
    // Instantiate the contract-under-test.
    delegationWall = new DelegationWall();
  }
}
