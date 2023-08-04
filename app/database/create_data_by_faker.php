<?php
require '../vendor/autoload.php';

use Faker\Factory;

$db = new DBConnection();
$conn = $db->getConnection();

// Sử dụng Faker
$faker = Factory::create('vi_VN'); // Sử dụng tiếng Việt cho dữ liệu giả lập

// Tạo 50 bản ghi dữ liệu
for ($i = 0; $i < 50; $i++) {
    $name = $faker->name;
    $address = $faker->address;
    $salary = $faker->numberBetween(1000, 5000); // Lương giả lập từ 1000 đến 5000

    $employee = new Employee(null, $name, $address, $salary);
    
    // Thêm dữ liệu vào bảng employees
    $sql = "INSERT INTO employees(name, address, salary) VALUES(?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bindValue(1,$employee->getName());
    $stmt->bindValue(2,$employee->getAddress());
    $stmt->bindValue(3,$employee->getSalary());
    $stmt->execute();
}
?>