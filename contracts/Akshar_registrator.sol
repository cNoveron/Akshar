pragma solidity ^0.4.0;

import './Akshar.sol';

contract registrator{
    // 0x6e169021c8863425a2470a8fe01c8827e218ab5b
    
    mapping(address => Akshar.role) role_of_actor_type_from_address;
    
    event registration_successful(
        address         indexed     of_account, 
        Akshar.role     indexed     of_actor_type
    );
    
    function register(address of_account, Akshar.role of_actor_type) 
    public{
        role_of_actor_type_from_address[of_account] = of_actor_type;
        emit registration_successful(of_account, of_actor_type);
    }
    
    function get_actor_role(address of_account) 
    public view returns(uint8){
        return uint8(role_of_actor_type_from_address[of_account]);
    }
    
}