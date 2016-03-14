<!-- Include Header -->
<?php include 'sources/php/head.php';?>

<body>
	<!-- Designed by Dylan Modesitt -->
	<section id="hero">
		<div class="container">
			<div class="row col-xs-12">
				<div class="page-header">
					<h1>Course Options <small>SHP</small></h1>
				</div>
			</div>
		</div>
	</section><!-- /#hero -->

	<section id="content">
		<div class="container">
			<div class="row col-xs-12">
				<div class="blurb">
					<p> 
					This is a devoper system in alpha. A student will select the highest or most current course that they have taken so far. More detailed information will follow too: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum lacinia mi et blandit aliquam. Aliquam porta maximus nunc quis iaculis. Nam lacinia nunc vitae vehicula dignissim. Maecenas ac mi velit. Suspendisse sed fringilla nisi, sit amet venenatis felis. Etiam malesuada tempor mauris, a ornare nulla commodo ut. Quisque iaculis iaculis vulputate. Aliquam varius ligula eget pellentesque pharetra. Praesent vitae fermentum est. 
					<br><br></p>
				</div>

				<form action="./courseOptions.php" method="POST" class="form-horizontal col-xs-12">
						<?php
						include 'sources/php/model.php';
						 

						// Create connection
						$conn = new mysqli($servername, $username, $password, $dbname);
						// Check connection
						if ($conn->connect_error) {
							die("Connection failed: " . $conn->connect_error);
						} 

						// get a query of all the deparments 
						$departmentQuery = "SELECT department_name FROM department ORDER BY department_name";
						$departmentResult = $conn->query($departmentQuery);
						// add a selector for every course in that department
						$i = 0;
						while($departmentRow = $departmentResult->fetch_assoc()) {
							$departmentName = $departmentRow['department_name'];
							echo"<div class='form-group'>";
							echo "<label for='department$i' class='control-label'>".$departmentName.": </label>";
							echo "<select id='department$i' class='form-control' name='".str_replace(' ', '',$departmentName)."'>";
							$coursesQuery = "SELECT course_name, department, sub_department FROM course WHERE department='".$departmentName."' ORDER BY sub_department, course_index ASC";
							$coursesResult = $conn->query($coursesQuery);
							echo "<option value='none'>None</option>";
							while($coureseRow = $coursesResult->fetch_assoc()) {
								echo "<option value='".$coureseRow['course_name']."'>".$coureseRow['course_name']."</option>";
							}

							echo "</select>";
							echo"</div>";
							$i++;
						}

						$conn->close();

						?>
						<div class="form-group">
							<input type="submit" value="Submit" class="btn btn-primary">
						</div>	
				</form> 
			</div>
		</div>
	</section><!-- /#content -->




		<!-- Javascript files -->

		<!-- Javascript Libraries -->
		<script src="sources/js/modernizr.custom.js"></script>

		<!-- Javascript Custom -->
		<script src="sources/js/the.js"></script>


	</body>
	</html>