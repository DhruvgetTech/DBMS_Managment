<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 20px;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            opacity: 0; /* Start hidden for fade-in effect */
            animation: fadeIn 1s forwards; /* Fade-in animation */
        }

        @keyframes fadeIn {
            to {
                opacity: 1; /* Fully visible */
            }
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
            transform: translateY(-20px); /* Start slightly above */
            animation: slideIn 0.5s forwards; /* Slide-in animation */
        }

        @keyframes slideIn {
            to {
                transform: translateY(0); /* End at original position */
            }
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
            transition: border-color 0.3s, box-shadow 0.3s, transform 0.3s; /* Added transform transition */
        }

        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #FF6F61; /* Lighter orange */
            box-shadow: 0 0 5px rgba(255, 111, 97, 0.5);
            outline: none;
            transform: scale(1.02); /* Slightly enlarge on focus */
        }

        .form-buttons {
            display: flex;
            justify-content: space-between;
        }

        input[type="submit"], input[type="button"] {
            background-color: #FF5733; /* Bright orange background */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
            width: 48%;
        }

        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: #FF6F61; /* Lighter orange */
            transform: scale(1.05); /* Slightly enlarge on hover */
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }
        nput[type="update"]:hover, input[type="button"]
    </style>
</head>
<body>

<h2>Employee Form 👨‍💼📝</h2>
<form id="employeeForm" action="Servlettt">
    <label for="employeeId">Employee ID:</label>
    <input type="text" id="employeeId" name="employeeId" required>

    <label for="employeeName">Employee Name:</label>
    <input type="text" id="employeeName" name="employeeName" required>

    <label for="employeeSalary">Salary:</label>
    <input type="number" id="employeeSalary" name="employeeSalary" required>
