pragma solidity ^0.4.0;

import './lib_actor.sol';
import './Akshar_attendance_storer.sol';

contract teacher{
    //0x672a39D1Ea4df51378988518021dBE8F8f690181
    
    attendance_storer 
    use_attendance_storer_to = attendance_storer(0x92CFe27e165a2C15958fc75e98c6599c5627436F);
    
    function acknowledge_attendance_of_student(address[5] of_students) 
    public{
        return use_attendance_storer_to.store_attendance(of_students);
    }
    
}