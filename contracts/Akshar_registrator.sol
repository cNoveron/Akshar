pragma solidity ^0.4.0;

import './lib_actor.sol';

contract registrator{
    
    mapping(address => lib_actor.role) role_of_actor_type_from_address;
    
    event registration_successful(
        address         indexed     of_account, 
        lib_actor.role  indexed     of_actor_type
    );
    
    function register(address of_account, lib_actor.role of_actor_type) 
    public{
        role_of_actor_type_from_address[of_account] = of_actor_type;
        emit registration_successful(of_account, of_actor_type);
    }
    
    function actor_type_of(address of_account) 
    public view returns(uint8){
        return uint8(role_of_actor_type_from_address[of_account]);
    }
    
}