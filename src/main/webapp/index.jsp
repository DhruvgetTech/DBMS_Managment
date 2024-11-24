<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('image/emp.jpg');
            background-size : cover;
            background-position :  center ;
            background-repeat : no-repeat ;
            margin: 0;
            padding: 20px;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }
        h2 {
            text-align: center;
            color: #FF5733; /* Bright orange color */
            margin-bottom: 20px;
            animation: flash 1.5s infinite alternate;
        }
        @keyframes flash {
            0% { opacity: 1; }
            100% { opacity: 0.5; }
        }
        form {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 2px solid #FF5733; /* Bright orange border */
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
        }
        form:hover {
            transform: scale(1.02); /* Slightly enlarge on hover */
        }
        label {
            margin-bottom: 10px;
            display: block;
            font-weight: bold;
            color: #555;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #FF5733; /* Bright orange border */
            border-radius: 5px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #FF6F61; /* Lighter orange */
            box-shadow: 0 0 5px rgba(255, 111, 97, 0.5);
            outline: none;
        }
        input[type="submit"] {
            background-color: #FF5733; /* Bright orange background */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #FF6F61; /* Lighter orange */
            transform: scale(1.05); /* Slightly enlarge on hover */
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>

<h2>Employee Form</h2>
<form  action="Servlettt">

    <label for="employeeId">Employee ID:</label>
    <input type="text" id="employeeId" name="employeeId" required>

    <label for="employeeName">Employee Name:</label>
    <input type="text" id="employeeName" name="employeeName" required>

    <label for="employeeSalary">Salary:</label>
    <input type="number" id="employeeSalary" name="employeeSalary" required>

    <input type="submit" value="Submit">
</form>

<div class="footer">
    &copy; 2024 DUBEY PVT.LTD. All rights reserved.
</div>

<script>
    document.getElementById('employeeForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent the form from submitting the traditional way
        const id = document.getElementById('employeeId').value;
        const name = document.getElementById('employeeName').value;
        const salary = document.getElementById('employeeSalary').value;

        // You can handle the form data here (e.g., send it to a server)
        console.log(`Employee ID: ${id}, Name: ${name}, Salary: ${salary}`);
        
        // Optionally, you can clear the form after submission
        this.reset();
    });
</script>

</body>
</html>