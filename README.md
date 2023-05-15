# PortfolioSmartContract
I have developed a smart contract for my decentralized portfolio 
The provided code is a Solidity smart contract called `MyPortfolio`, which allows the management and display of project and education details for a portfolio. It consists of various structs, including `Project` and `Education`, to store project and education information, respectively.

The contract includes an array `educationDetails` to store education details and another array `projects` to store project details. These arrays have a fixed length of 3, allowing up to 3 entries for both projects and education.

The contract has a few state variables, such as `projectCount` and `educationCount`, to keep track of the number of projects and education entries added. There's also a `manager` address variable to store the address of the contract manager.

The contract provides functions to insert and modify project and education details, with appropriate checks to limit the number of entries and ensure only the manager can modify certain fields.

Additionally, the contract allows for updating the overall description, resume link, and image link associated with the portfolio. There is a `Donate` function that enables anyone to send funds to the contract manager.

Overall, the contract provides a basic structure to manage and showcase project and education details within a portfolio, along with the ability to update relevant information and accept donations.
