// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract familyAus1155 is ERC1155, Ownable {

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

    mapping (uint => uint) stock;


    constructor() ERC1155("ipfs://QmQmq6PiLRzp74F1njzRgMrXpC3TH2jUH4E3qi2EMKqcZ7/{id}.json") {
            
        stock[0] = 4;
        stock[1] = 9;
        stock[2] = 2;
        stock[3] = 4;
        stock[4] = 4;
        stock[5] = 3;
        stock[6] = 8;
        stock[7] = 3;
        stock[8] = 3;
        stock[9] = 3;
        stock[10] = 3;
        stock[11] = 5;
        stock[12] = 2;
        stock[13] = 2;
        stock[14] = 3;
        stock[15] = 4;
        stock[16] = 8;
        stock[17] = 5;
        stock[18] = 4;
        stock[19] = 3;
        stock[20] = 4;
        stock[21] = 6;
        stock[22] = 4;
        stock[23] = 4;
        stock[24] = 4;
    }


    function mintBatch(
        address _to,
        uint256[] memory _ids,
        uint256[] memory _amounts,
        bytes memory _data
    ) public {
        
        for (uint i=0; i<_ids.length; i++) {
            uint id = _ids[i];
            uint amount = _amounts[i];
            require(stock[id] > 0, "Out of Stock");
        
            _mint(_to, id, amount, _data);
        
            stock[id] -= amount;
        }
    }
    

}