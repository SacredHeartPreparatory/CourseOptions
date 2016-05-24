<!-- Include Header -->
<?php include 'sources/php/head.php';?>

<body>
	<!-- Designed by SHP Tech Ambassadors -->
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
				<!-- Content -->
				<?php 
					include 'sources/php/model.php';

					$courseOptions = array();
					// Create connection
					$conn = new mysqli($servername, $username, $password, $dbname);
					// die if connection fails
					if ($conn->connect_error) {
						die("Connection failed: " . $conn->connect_error);
					}

					// get a query of all the deparments 
					$departmentQuery = "SELECT department_name FROM department ORDER BY department_name";
					$departmentResult = $conn->query($departmentQuery);
					while($departmentRow = $departmentResult->fetch_assoc()) {

						$departmentName = $departmentRow['department_name'];
						$subDepartmentName = null;
						$courseGiven = $_POST[str_replace(' ', '',$departmentName)];

						$newCourseIndex = 0;
						$oldCourseIndex = -1;

						if($courseGiven != 'none') {
							$currentCourseQuery = "SELECT course_name, sub_department, course_index, index_increase_upon_course_completion FROM course WHERE course_name='$courseGiven'";
						    $currentCourseresult = $conn->query($currentCourseQuery);
							while($currentCourse = $currentCourseresult->fetch_assoc()) {
								$subDepartmentName = $currentCourse['sub_department'];
								$oldCourseIndex = $currentCourse['course_index'];
								$newCourseIndex = $currentCourse['course_index'] + $currentCourse['index_increase_upon_course_completion'];
							}
						}
						

						$avaliableCoursesQuery;

						echo "<h3>$departmentName:</h3>";

						if(is_null($subDepartmentName)) {
							$avaliableCoursesQuery = "SELECT * FROM course WHERE department='$departmentName' AND (course_index=$newCourseIndex OR (alternate_course_index=$newCourseIndex AND course_index >= $oldCourseIndex)  OR (alternate_course_index = -2 AND $newCourseIndex > course_index))";
						} else {
							$avaliableCoursesQuery = "SELECT * FROM course WHERE (department='$departmentName' AND (sub_department='$subDepartmentName' OR sub_department IS NULL)) AND (course_index=$newCourseIndex OR (alternate_course_index=$newCourseIndex AND course_index >= $oldCourseIndex)  OR (alternate_course_index = -2 AND $newCourseIndex > course_index))";

							// echo message about sub departments eliminating other introductory course options
							echo "<p> Note: These suggestsions assume you wish to remain in the sub-department of <i>$subDepartmentName</i> in <i>$departmentName</i>. If you would like to switch sub-departments consult the <a href='https://shschools.myschoolapp.com/app/student#resourceboarddetail/9142'>official course handbook</a> for the upcoming school year. Keep in mind such a switch's affect on graduation requirements.<br><br></p>";

						}
						$avaliableCoursesResult = $conn->query($avaliableCoursesQuery);
				
						while($course = $avaliableCoursesResult->fetch_assoc()) {
							echo($course['course_name']."<br>");
						}
						echo("<br><br>");

					}


				?> 
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