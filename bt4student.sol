// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title StudentManagement
 * @dev Manages student data
 * @custom:dev-run-script scripts/deploy_with_ethers.ts
 */
contract StudentManagement {
    struct Student {
        int256 stud_id;
        string name;
        string department;
    }

    Student[] public students;

    function addStudent(
        int256 stud_id,
        string memory name,
        string memory department
    ) public {
        Student memory stud = Student(stud_id, name, department);
        students.push(stud);
    }

    function getStudent(int256 stud_id)
        public
        view
        returns (string memory, string memory)
    {
        for (uint256 i = 0; i < students.length; i++) {
            Student memory stud = students[i];
            if (stud.stud_id == stud_id) {
                return (stud.name, stud.department);
            }
        }
        return ("Not Found", "Not Found");
    }
}
