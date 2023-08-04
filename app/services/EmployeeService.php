<?php
class EmployeeService {
    public function getConn() {
        $dbConnection = new DBConnection();
        $conn = $dbConnection->getConnection();
        return $conn;
    }

    public function getAllEmployee(){
        $conn = $this->getConn();
        $sql = "SELECT id, name, address, salary FROM employees ";
        $stmt = $conn->query($sql);
        $employees = [];
        while($row = $stmt->fetch()){
            $employee = new Employee(
                $row[0],
                $row[1],
                $row[2],
                $row[3]
            );
            $employees[] = $employee;
        }
        return $employees;
    }

    public function getEmployeeById($id){
        $conn = $this->getConn();
        $sql = "SELECT id, name, address, salary FROM employees WHERE id = $id";
        $stmt = $conn->query($sql);
        if($row = $stmt->fetch()){
            $employee = new Employee(
                $row[0],
                $row[1],
                $row[2],
                $row[3]
            );
            return $employee;
        } else {
            return null;
        }
    }

    public function delete($id){
        $conn = $this->getConn();
        $sql = "DELETE FROM employees WHERE id = $id";
        $stmt = $conn->prepare($sql);
        return $stmt->execute();
    }

    public function create(Employee $employee){
        $conn = $this->getConn();
        $sql = "INSERT INTO employees(name, address, salary) VALUES(?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(1,$employee->getName());
        $stmt->bindValue(2,$employee->getAddress());
        $stmt->bindValue(3,$employee->getSalary());
        return $stmt->execute();
    }

    public function update(Employee $employee){
        $conn = $this->getConn();
        $sql = "UPDATE employees SET name = ? , address = ? , salary = ? WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(1, $employee->getName());
        $stmt->bindValue(2, $employee->getAddress());
        $stmt->bindValue(3, $employee->getSalary());
        $stmt->bindValue(4, $employee->getId());
        return $stmt->execute();
    }
}