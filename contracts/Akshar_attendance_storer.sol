pragma solidity ^0.4.0;

import './lib_actor.sol';
import './date_time.sol';

contract attendance_storer{
    //0x92CFe27e165a2C15958fc75e98c6599c5627436F
    
    DateTime query_date_time_for = DateTime(0x04cfd954351f97B8bFb13E1f0525ccB2d794215a);
    
    // Because the minimal efficient model depends on these 2 mappings.
    mapping(uint => address) address_of_teacher_from_uint_of_date;
    mapping(address => address[]) addresses_of_students_from_address_of_teacher;
    
    event attendance_stored(
        address[5]  indexed     of_students,
        uint        indexed     time
    );
            
    function store_attendance(address[5] of_students) 
    public{
        uint today = query_date_time_for.getDay(now);
        addresses_of_students_from_address_of_teacher[
            address_of_teacher_from_uint_of_date[today]
        ] = of_students;
        emit attendance_stored(of_students,today);
    }
    
}