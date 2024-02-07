<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body class="text-center">
    <div class="row">
        <div class="col-lg-6 container">
            <h1>Registration Form</h1>
            <form method="post" class="form-signin">
                <div class="form-group">
                    <label for="fname">First Name:</label>
                    <input type="text" id="fname" name="fname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="lname">Last Name:</label>
                    <input type="text" id="lname" name="lname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="middleName">Middle Name:</label>
                    <input type="text" id="middleName" name="middleName" class="form-control">
                </div>
                <div class="form-group">
                    <label for="dobDate">Date:</label>
                    <input type="date" id="dobDate" name="dobDate" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Gender:</label><br>
                    <div class="form-check form-check-inline">
                        <input type="radio" id="male" name="gender" value="male" class="form-check-input">
                        <label for="male" class="form-check-label">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input type="radio" id="female" name="gender" value="female" class="form-check-input">
                        <label for="female" class="form-check-label">Female</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="course">Course:</label>
                    <select id="course" name="course" class="form-control">
                        <option value="BCA">BCA</option>
                        <option value="MCA">MCA</option>
                        <option value="MBA">MBA</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <select id="city" name="city" class="form-control">
                        <option value="RAJKOT">RAJKOT</option>
                        <option value="PUNE">PUNE</option>
                        <option value="MUMBAI">MUMBAI</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="college">College:</label>
                    <input type="text" id="college" name="college" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="button" class="btn btn-secondary">Inquiry</button>
            </form>
        </div>
        <div class="col-lg-4 p-4">
            <?php
            if (isset($_POST)) {
                $fname = isset($_POST['fname']) ? $_POST['fname'] : '';
                $lname = isset($_POST['lname']) ? $_POST['lname'] : '';
                $middleName = isset($_POST['middleName']) ? $_POST['middleName'] : '';
                $date = isset($_POST['dobDate']) ? $_POST['dobDate'] : '';
                $email = isset($_POST['email']) ? $_POST['email'] : '';
                $gender = isset($_POST['gender']) ? $_POST['gender'] : '';
                $course = isset($_POST['course']) ? $_POST['course'] : '';
                $city = isset($_POST['city']) ? $_POST['city'] : '';    
                $college = isset($_POST['college']) ? $_POST['college'] : '';

                echo "
                    <h2>First Name: $fname</h2>
                    <h2>Last Name: $lname</h2>
                    <h2>Middle Name: $middleName</h2>
                    <h2>Date: $date</h2>
                    <h2>Email: $email</h2>
                    <h2>Gender: $gender</h2>
                    <h2>Course: $course</h2>
                    <h2>City: $city</h2>
                    <h2>College: $college</h2>";
            }
            ?>
        </div>
    </div>



</body>

</html>