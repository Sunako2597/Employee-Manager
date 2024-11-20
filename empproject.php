<?php 
    $id = (isset($_GET['id']) ? $_GET['id'] : '');
    require_once ('process/dbh.php');
    $sql = "SELECT * FROM `project` where eid = '$id'";
    $result = mysqli_query($conn, $sql);    
?>

<html>
<head>
    <title>Employee Panel | Emplo Guru</title>
    <link rel="stylesheet" type="text/css" href="styleview.css">
    <style>
        /* CSS for modal */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.5);
            overflow: auto;
        }
        .modal-content {
            background-color: #fefefe;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
			border-radius: 15px;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
		}
		#modalForm {
    		display: flex;
			margin-top: 10px;
		}
		#modalForm input[type="text"] {
    		flex: 1;
    		margin-right: 10px; /* Adjust as needed */
		}
    </style>
</head>
<body>
    
    <header>
        <nav>
            <h1>Emplo Guru</h1>
            <ul id="navli">
                <li><a class="homeblack" href="eloginwel.php?id=<?php echo $id?>">HOME</a></li>
                <li><a class="homeblack" href="myprofile.php?id=<?php echo $id?>">My Profile</a></li>
                <li><a class="homered" href="empproject.php?id=<?php echo $id?>">My Projects</a></li>
                <li><a class="homeblack" href="applyleave.php?id=<?php echo $id?>">Apply Leave</a></li>
                <li><a class="homeblack" href="elogin.html">Log Out</a></li>
            </ul>
        </nav>
    </header>
     
    <div class="divider"></div>
    <div id="divimg">
        <table>
            <tr>
                <th align = "center">Project ID</th>
                <th align = "center">Project Name</th>
                <th align = "center">Due Date</th>
                <th align = "center">Sub Date</th>
                <th align = "center">Mark</th>
                <th align = "center">Status</th>
				<th align = "center">Link</th>
                <th align = "center">Option</th>
            </tr>
            <?php
                while ($employee = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>".$employee['pid']."</td>";
                    echo "<td>".$employee['pname']."</td>";
                    echo "<td>".$employee['duedate']."</td>";
                    echo "<td>".$employee['subdate']."</td>";
                    echo "<td>".$employee['mark']."</td>";
                    echo "<td>".$employee['status']."</td>";
					echo "<td class='link' prjlink=".$employee['prjlink']."></td>";
                    echo "<td><button class='modalOpen' data-pid='".$employee['pid']."' data-eid='".$employee['eid']."' data-pname='".$employee['pname']."' data-ddate='".$employee['duedate']."'>Submit</button></td>";
                    echo "</tr>";
                }
            ?>
        </table>
    </div>
    
    <!-- Modal HTML structure outside the loop -->
    <div id='myModal' class='modal'>
        <div class='modal-content'>
            <span class='close'>&times;</span>
			<div id='prjInfo'>

			</div>
            <form id="modalForm" action='psubmit.php' method='post' name='urlForm'>
                <input class='input--style-1' type='text' placeholder='https://exampleurl.xyz....' name='prjlink' pattern='https://.*' required='required' ></br>
                <button type='submit' id="submitBtn">Submit</button>
            </form>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
			var prjlinks =document.getElementsByClassName('link');
			console.log(prjlinks);

			for (var j = 0; j < prjlinks.length; j++) {
			var link=prjlinks[j].getAttribute('prjlink');

			if (link){
				prjlinks[j].innerHTML=`<a href="${link}" target="_blank">Your Project Link</a>`;
			}
			else{
				prjlinks[j].innerHTML=`Not Submitted Yet`;

			}
		    }


            var modal = document.getElementById('myModal');
            var modalForm = document.getElementById('modalForm');
            var modalOpenButtons = document.getElementsByClassName("modalOpen");
            var span = document.getElementsByClassName("close")[0];
			var prjInfo=document.getElementById('prjInfo');
			console.log(prjInfo);
            // Loop through each button with class modalOpen
            for (var i = 0; i < modalOpenButtons.length; i++) {
                modalOpenButtons[i].onclick = function() {
                    modal.style.display = "block";
                    // Set the form action dynamically based on data attributes
                    var pid = this.getAttribute('data-pid');
                    var eid = this.getAttribute('data-eid');
					var pname =this.getAttribute('data-pname');
					var ddate = this.getAttribute('data-ddate');
					prjInfo.innerHTML=`<h2>Please provide link to project brief of Github repo if possible for your project 
					<span style="color: red;">${pname}</span></h2>
					Please Submit your project before :<span style="color: red;">${ddate}</span></br>`;
                    modalForm.action = 'psubmit.php?pid=' + pid + '&id=' + eid;
                }
            }          

            span.onclick = function() {
                modal.style.display = "none";
                }

            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                    }
                }
            })
    </script>
</body>
</html>
