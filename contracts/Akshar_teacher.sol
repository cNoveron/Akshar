pragma solidity ^0.4.0;

import './Akshar_institution_helper.sol';

contract teacher_helper{
    // 
    
    institution_helper 
    use_institution_helper_to = institution_helper(0x3c1BE22725878b1e689b76F8be9868A86915b008);
    
    function request_institution_to_acknowledge_attendance_of_me()
    public{
        use_institution_helper_to.acknowledge_teacher_attendance(msg.sender);
    }
    
    function request_institution_to_acknowledge_attendance_of_student(address of_account) 
    public{
        use_institution_helper_to.acknowledge_student_attendance(of_account,msg.sender);
    }
    
}