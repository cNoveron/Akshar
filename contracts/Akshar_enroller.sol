pragma solidity ^0.4.0;

import './lib_actor.sol';
import './Akshar_registrator.sol';

contract enroller{
    //0xeFCe13765B7B26c226c522336BE72039F5ED7105
    
    address address_of_registrator = 0xB11741A7C22C8e2eF7cC9B3A108EE58Eb3A14DaB;
    registrator inquiry_registrator_for = registrator(address_of_registrator);
    
    using lib_actor for lib_actor.role;
    
    mapping(address => address[]) addresses_of_students_from_teacher_adress;
    
    event enrollation_successful(
        address     indexed     of_student, 
        address     indexed     of_teacher
    );
    
    function enroll(address of_student)
    public{
        addresses_of_students_from_teacher_adress[msg.sender].push(of_student);
        emit enrollation_successful(of_student,msg.sender);
    }
    
    function addresses_of_students_of_teacher(address of_account) 
    public view returns(address[]){
        return addresses_of_students_from_teacher_adress[of_account];
    }
    
}