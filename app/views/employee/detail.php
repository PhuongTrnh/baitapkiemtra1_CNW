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
    <div class="container">
        <h3 class="text-center">Edit Employee</h3>
        <a class="btn btn-primary float-end" href="<?= DOMAIN . "/public/index.php" ?>">Back</a>
        <form action="<?= DOMAIN . "/public/index.php?action=update" ?>" method="post">
            <input type="hidden" name="id" value="<?=$employee->getId()?>">
            <div class="mt-3">
                <label for="">Name</label>
                <input type="text" name="name" id="" class="form-control" value="<?=$employee->getName()?>">
            </div>
            <div class="mt-3">
                <label for="">Address</label>
                <input type="text" name="address" id="" class="form-control" value="<?=$employee->getAddress()?>">
            </div>
            <div class="mt-3">
                <label for="">Salary</label>
                <input type="float" name="salary" id="" class="form-control" value="<?=$employee->getSalary()?>">
            </div>
            <div class="mt-3">
                <button type="submit" name="submit" class="btn btn-success">Save</button>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>