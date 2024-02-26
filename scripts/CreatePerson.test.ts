

import { ethers } from "hardhat";


const createPerson = async () => {
    const identityAddress = "0x54160942A6855123FCd75B87a88a6a695124b78a";
    const iPerson = await ethers.getContractAt("Identities",identityAddress);

    console.log("Before calling the function");
    const result = await iPerson.createPerson("Jaybee", 3);

    console.log("function execution");
    await result.wait();

    console.log("after")


}


createPerson().catch((error) =>{
    console.log(error);
    process.exitCode = 1;
})