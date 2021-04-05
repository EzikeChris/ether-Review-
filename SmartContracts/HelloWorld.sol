pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) returns (bool);
    function loan() returns(bool);
}


contract Bank is Regulator {
    uint private value;
    
    function Bank(uint amount) {
        value = amount;
    }
    function deposite(uint amount) {
        value += amount;
    }
    function withdrawal(uint amount) {
        if (checkValue( amount)) {
            value -= amount;
        }
        
    }
    function balance() returns(uint) {
        return value;
    }
    function checkValue(uint amount) {
        return value >= amount;
    }
    function loan() returns (bool){
        return value > 0;
    }
}
contract FirstContract is Bank(10000) {
    string private name;
    uint private age;
     
    function setName(string newName){
        name = newName;
    }
    function getName() returns(string) {
        return name;
    }
    function setAage(uint newAge) {
        age = newAge;
    }
    function getAge() returns(uint) {
        return age;
    }
}

interface Regulator {
    function checkValue(uint amount) returns (bool);
    function loan() returns (bool);
}


contract Bank {
    uint public value;

    function deposite(uint amount) {
        value += amount;
    }
    function withdrawal(uint amount) {
        if (checkValue(amount)) {
            value -= amount;
        }
        
    }
    function balance() returns(uint) {
        return value;
    } function checkValue(uint amount) {
        return value >= amount;

    function loan() returns (bool) {
        return value > 0;
    }
}
contract Profile is Bank(10000){
    string public name;
    string public username;
    uint public age;

    function setName(string newName) {
        name = newName;
    }
    function getName() returns(string) {
        return name;
    }
    function setUserName(string newUserName){
        username = newUserName;
    }
    function getUserName() returns(string) {
        return username;
    }
    function setAge(uint newAge) {
        age = newAge;
    }
    function getAge() returns(uint) {
        return age;
    }
}

interface Regulator {
    function checkValue(uint amount) returns (bool);
    function loan() returns (bool);
}

contract Bank is Regulator{
    uint public value;
  
    function deposite(uint amount) {
        value += amount;
    }
    function withdrawal(uint amount) {
        value -= amount;
    }
    fucntions balance() returns(uint) {
       return value;
    }
}

contract Profile is Bank(10000){
    string public name;
    uint public age;
    string public username;
    function setName(string newName) {
        name = newName;
    }
    function getName() returns(string) {
        return name;
    }
    function getAge(uint newAge) {
        age = newAge;
    }
    function getAge() returns(uint) {
        return age;
    }

    function setUserName(string newUserName) {
        username = newUserName;
    }
    function getUserName() returns(string) {
        return username;
    }
}