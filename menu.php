
<nav class="navbar navbar-default" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Kanban Board, Version 0.1</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Planning <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Orders</a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Notifications</a></li>
          </ul>
        </li>
        <li><a href="#">Production</a></li>
        <li><a href="product_show_record.php">Management</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <p class="navbar-text"><?php echo $_SESSION["userName"] ?></p>
      </ul>
    </div>
  </div>
</nav>
