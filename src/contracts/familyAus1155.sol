// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract familyAus1155 is ERC1155 {

    constructor() ERC1155("IPFS URI") {}

    uint256 public constant Blue_xs = 0;
    uint256 public constant Blue_s = 1;
    uint256 public constant Blue_m = 2;
    uint256 public constant Blue_l = 3;
    uint256 public constant Blue_xl = 4;
    uint256 public constant Choc_xs = 5;
    uint256 public constant Choc_s = 6;
    uint256 public constant Choc_m = 7;
    uint256 public constant Choc_l = 8;
    uint256 public constant Choc_xl = 9;
    uint256 public constant Grn_xs = 10;
    uint256 public constant Grn_s = 11;
    uint256 public constant Grn_m = 12;
    uint256 public constant Grn_l = 13;
    uint256 public constant Grn_xl = 14;
    uint256 public constant Olve_xs = 15;
    uint256 public constant Olve_s = 16;
    uint256 public constant Olve_m = 17;
    uint256 public constant Olve_l = 18;
    uint256 public constant Olve_xl = 19;
    uint256 public constant Sand_xs = 20;
    uint256 public constant Sand_s = 21;
    uint256 public constant Sand_m = 22;
    uint256 public constant Sand_l = 23;
    uint256 public constant Sand_xl = 24;
}