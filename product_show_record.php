
<?php
include('KB_header.php');
include('KB_library.php');
include('menu.php');
?>

	<div class="container">
	  <div class="row">
	    <div class="col-sm-3">
	      <h3>To Do <span class="glyphicon glyphicon-bullhorn"></span></h3>

				<?php
					$conn = Connect2Database();
					$sql = "SELECT OrderId, OrderCode, OrderName, OrderTo, OrderDate, Order4Date, OrderPriority, OrderStatus FROM Orders WHERE OrderStatus = 1";
					$results = mysqli_query($conn, $sql);
					if (mysqli_num_rows($results) > 0) {
						echo "<div class='panel-group'>";
						while($row = mysqli_fetch_assoc($results)) {
							switch ($row["OrderPriority"]) {
							    case 1:
							        echo "<div class='panel panel-primary'>";
							        break;
							    case 2:
							        echo "<div class='panel panel-success'>";
							        break;
							    case 3:
							        echo "<div class='panel panel-info'>";
							        break;
									case 4:
											echo "<div class='panel panel-warning'>";
											break;
									case 5:
											echo "<div class='panel panel-danger'>";
											break;
							    default:
											echo "<div class='panel panel-default'>";
							}
							//echo "<div class='panel panel-default'>";
								echo "<div class='panel-heading'>" . $row["OrderId"] . "</div>";
								echo "<div class='panel-body'>" . $row["OrderCode"] . "/" . $row["OrderName"] . $row["OrderStatus"] . "<br>" . "delivery: " . $row["Order4Date"] . "</div>";
								echo "<div class='panel-footer'>" . $row["OrderDate"] . "</div>";
							echo "</div>";
						}
						echo "</div>";
					}
					mysqli_close($conn);
				?>
			</div>


			<div class="col-sm-3">
				<h3>WIP <span class="glyphicon glyphicon-cog"></span></h3>
				<?php
					$conn = Connect2Database();
					$sql = "SELECT OrderId, OrderCode, OrderName, OrderTo, OrderDate, Order4Date, OrderPriority, OrderStatus FROM Orders WHERE OrderStatus = 2";
					$results = mysqli_query($conn, $sql);
					if (mysqli_num_rows($results) > 0) {
						echo "<div class='panel-group'>";
						while($row = mysqli_fetch_assoc($results)) {
							switch ($row["OrderPriority"]) {
									case 1:
											echo "<div class='panel panel-primary'>";
											break;
									case 2:
											echo "<div class='panel panel-success'>";
											break;
									case 3:
											echo "<div class='panel panel-info'>";
											break;
									case 4:
											echo "<div class='panel panel-warning'>";
											break;
									case 5:
											echo "<div class='panel panel-danger'>";
											break;
									default:
											echo "<div class='panel panel-default'>";
							}
							//echo "<div class='panel panel-default'>";
								echo "<div class='panel-heading'>" . $row["OrderId"] . "</div>";
								echo "<div class='panel-body'>" . $row["OrderCode"] . "/" . $row["OrderName"] . $row["OrderStatus"] . "<br>" . "delivery: " . $row["Order4Date"] . "</div>";
								echo "<div class='panel-footer'>" . $row["OrderDate"] . "</div>";
							echo "</div>";
						}
						echo "</div>";
					}
					mysqli_close($conn);
				?>
			</div>

			<div class="col-sm-3">
				<h3>Done <span class="glyphicon glyphicon-ok"></span></h3>
				<?php
					$conn = Connect2Database();
					$sql = "SELECT OrderId, OrderCode, OrderName, OrderTo, OrderDate, Order4Date, OrderPriority, OrderStatus FROM Orders WHERE OrderStatus = 3";
					$results = mysqli_query($conn, $sql);
					if (mysqli_num_rows($results) > 0) {
						echo "<div class='panel-group'>";
						while($row = mysqli_fetch_assoc($results)) {
							switch ($row["OrderPriority"]) {
									case 1:
											echo "<div class='panel panel-primary'>";
											break;
									case 2:
											echo "<div class='panel panel-success'>";
											break;
									case 3:
											echo "<div class='panel panel-info'>";
											break;
									case 4:
											echo "<div class='panel panel-warning'>";
											break;
									case 5:
											echo "<div class='panel panel-danger'>";
											break;
									default:
											echo "<div class='panel panel-default'>";
							}
							//echo "<div class='panel panel-default'>";
								echo "<div class='panel-heading'>" . $row["OrderId"] . "</div>";
								echo "<div class='panel-body'>" . $row["OrderCode"] . "/" . $row["OrderName"] . $row["OrderStatus"] . "<br>" . "delivery: " . $row["Order4Date"] . "</div>";
								echo "<div class='panel-footer'>" . $row["OrderDate"] . "</div>";
							echo "</div>";
						}
						echo "</div>";
					}
					mysqli_close($conn);
				?>
			</div>

			<div class="col-sm-3">
				<h3>Notifications</h3>
				<div class="panel panel-primary">
					<div class="panel-heading">Panel with panel-primary class</div>
					<div class="panel-body">Electrodes replacement in Hungary WH - to be followed</div>
					<div class="panel-footer">20180524</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">Panel with panel-primary class</div>
					<div class="panel-body">T8+ preproduction w/o packing - EA released to WH</div>
					<div class="panel-footer">20180524</div>
				</div>
			</div>


		</div>
	</div>

<footer class="container-fluid text-center">
  <h1>KANBAN BOARD</h1>
  <p>for HANNA INSTRUMENTS</p>
</footer>

</body>
</html>
