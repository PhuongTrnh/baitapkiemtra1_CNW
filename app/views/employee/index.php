<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Manager</title>
    <!--    CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>

<body>
    <header>
        <h1 class="text-center">Employee Manager</h1>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-6">
                <h4 class="text-success text-bold text-uppercase">List Of Employees</h4>
            </div>
            <div class="col-6 text-right">
                <a class="btn btn-primary" href="<?= DOMAIN . "/public/index.php?action=add" ?>">Add New Employee</a>
            </div>
        </div>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">Salary</th>
                <th scope="col" colspan="3" class="text-center">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $i = 1;
            foreach ($employees as $employee) {
            ?>
                <tr>
                    <th scope="row"><?= $i++; ?></th>
                    <td><?= $employee->getName(); ?></td>
                    <td><?= $employee->getAddress(); ?></td>
                    <td><?= $employee->getSalary(); ?></td>
                    <td>
                        <a href="<?= DOMAIN . "/public/index.php?action=show&id=" . $employee->getId() ?>">
                            <i class="bi bi-eye-fill"></i>
                        </a>
                        <a href="<?= DOMAIN . "/public/index.php?action=edit&id=" . $employee->getId() ?>">
                            <i class="bi bi-pencil-square"></i>
                        </a>
                        <a href="<?= DOMAIN . "/public/index.php?action=delete&id=" . $employee->getId() ?>">
                            <i class="bi bi-trash3-fill"></i>
                        </a>
                    </td>
                </tr>
            <?php
            }
            ?>

        </tbody>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>