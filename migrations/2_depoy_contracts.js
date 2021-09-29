const familyAus1155 = artifacts.require("familyAus1155")

module.exports = async function(deployer) {
    await deployer.deploy(familyAus1155);
    const famAus = familyAus1155.deployed();
}