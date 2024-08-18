// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MyPortfolio{
    struct Project{
        uint id;
        string Name;
        string Description;
        string image;
        string githubLInk;
    }
    struct Education{
        uint id;
        string Date;
        string Degree;
        string KnowledgeAcquired;
        string InstitutionName;
    }
    Education [3] public educationDetails;
    Project [3] public projects;

    // 0x95e9d25E396F7e611B7E8371ffa6e42418e9be08

    string public  ImageLink = "QmNdsSq86cQZHAheQjATWdfdLmDpsLwLm7LofGepe4QVHS";
    string public discription = "I Have 1.5 years of experience in blockchain";
    string public ResumeLink= "QmTtnuxuX33CypqgzQtP8VvVNbvnenUWfihMd7CnpjTnLu";

    uint projectCount;
    uint educationCount;
    address public manager;
    
    constructor (){
        manager = msg.sender;
    }

    modifier onlymanager(){
        require(manager==msg.sender, "you are not manager");
        _;
    }
    
    function InsertProject(string calldata _name, string calldata _description, string calldata _image, string calldata _githublink) external {
        require(projectCount<3, "only 3 project allowed");
        projects[projectCount] = Project(projectCount,_name,_description,_image,_githublink);
        projectCount++;
    }

    function ChangeProject(string calldata _name, string calldata _description, string calldata _image, string calldata _githublink, uint _projectCount) external {
        require(_projectCount<3, "only 3 project allowed");
        projects[projectCount] = Project(_projectCount,_name,_description,_image,_githublink);
    }

    function allProjects() external view returns  (Project[3] memory){
        return projects;
    }



    function InsertEducation(string calldata _date, string calldata _degree, string calldata _KnowledgeAcquired, string calldata _InstitutionName) external {
        require(educationCount<3, "only 3 Degrees allowed");
        educationDetails[educationCount] = Education(educationCount,_date,_degree,_KnowledgeAcquired,_InstitutionName);
        educationCount++;
    }

    function ChangeEducation(string calldata _date, string calldata _degree, string calldata _KnowledgeAcquired, string calldata _InstitutionName, uint _educationCount) external {
        require(_educationCount<3, "only 3 project allowed");
        educationDetails[_educationCount] = Education(_educationCount,_date,_degree,_KnowledgeAcquired,_InstitutionName);
    }
    
    function allEducations() external view returns  (Education[3] memory){
        return educationDetails;
    }
 



    function ChangeDescription(string calldata _ChangeDescription)external {
        discription= _ChangeDescription;
    }
    function ChangeResume(string calldata _ChangeResume)external onlymanager{
        ResumeLink = _ChangeResume;
    }
    function ChangeImageLink(string calldata _ChangeImageLink)external onlymanager{
        ImageLink = _ChangeImageLink;
    }
    function Donate() public payable  {
        payable(manager).transfer(msg.value);
    }
    




 }
