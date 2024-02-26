import { ethers } from "hardhat";

const main = async () => {

    const ident = await ethers.deployContract("Identities", [], {});
    await ident.waitForDeployment();


    console.log(`address of deployed ident contract is ${ident.target}`);
}


main().catch((error) => {
    console.log(error);
    process.exitCode = 1;
})

// 0x5FbDB2315678afecb367f032d93F642f64180aa3