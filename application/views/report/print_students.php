<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="<?= base_url('images/'); ?>LIBRARY.png" type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Library Seat Reservation History</title>

    <style>
        body {
            font-size: 12px;
            padding: 10px;
            background-color: #f8f9fa; /* Light gray background */
        }

        .container {
            max-width: 900px;
        }

        .student-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            padding: 20px;
        }

        .student-record {
            width: 2.0in;
            height: 1.5in;
            border: 1px dashed black; /* Cutting guide */
            padding: 10px;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-size: 10px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
        }

        .student-record p {
            margin: 2px 0;
        }

        @media print {

            body {
                background-color: white;
            }

            #printButton {
                display: none;
            }

            .student-container {
                justify-content: flex-start;
                padding: 0;
            }

            .student-record {
                box-shadow: none;
                page-break-inside: avoid;
            }
        }
    </style>
</head>
<a id="printButton" class="btn btn-success my-3" href="<?= base_url('master/student')?>">Back</a>

<body>
    <div class="student-container">
        <?php foreach ($students as $student): ?>
        <div class="student-record">
            <p><strong>Student ID:</strong> <?= $student['srcode'] ?></p>
            <p><strong>Name:</strong> <?= $student['first_name'] ?> <?= $student['middle_name'] ?> <?= $student['last_name'] ?></p>
            <p><strong>RFID:</strong> <?= $student['rfid'] ?></p>
            <p><strong>Course:</strong> <?= $student['course'] ?></p>
            <p><strong>College:</strong> <?= $student['college'] ?></p>
        </div>
        <?php endforeach; ?>
    </div>

    <script>
        window.print();
    </script>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>

</html>
