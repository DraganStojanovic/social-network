<?php
ini_set("display_errors", "1");
error_reporting(E_ALL);
$conn = mysqli_connect("draganstojanovic.in.rs", 'draganst_dragan', 'dragan123') or die(mysql_error());
mysqli_select_db($conn, "draganst_social") or die(mysql_error());



$query = "SELECT * FROM user";
$result = mysqli_query($conn, $query);
if (mysqli_num_rows($result) > 0) {
    ?>
  <form class="" action="<?php $_SERVER['PHP_SELF']; ?>" method="post">
    <select name="userId">
      <?php while ($r = mysqli_fetch_array($result)): ?>
        <option value="<?php echo $r['id'] ?>"><?php echo $r['firstName'] . ' ' . $r['surname'] ?></option>
      <?php endwhile; ?>
    </select>
    <input type="submit" name="f1" value="Friends">
    <input type="submit" name="f2" value="Friends of friedns">
    <input type="submit" name="f3" value="Suggested friends">
  </form>
<?php

}

if (isset($_REQUEST['f1'])) {
    $id = $_REQUEST['userId'];
    $query1 = "SELECT friend.firstName, friend.surname, friend.age, gender.name FROM user INNER JOIN connected ON user.id = connected.userId INNER JOIN user as friend ON
           connected.friendId = friend.id  INNER JOIN gender ON friend.genderId = gender.id WHERE user.id = $id";
} elseif (isset($_REQUEST['f2'])) {
    $id = $_REQUEST['userId'];
    $query1 = "SELECT DISTINCT fof.firstName, fof.surname, fof.age, gender.name FROM user INNER JOIN connected ON user.id = connected.userId INNER JOIN user as friend ON
            connected.friendId = friend.id INNER JOIN connected as fconnected ON friend.id = fconnected.userId INNER JOIN user as fof
            ON fconnected.friendId = fof.id INNER JOIN gender ON fof.genderId = gender.id WHERE user.id =$id";
} elseif (isset($_REQUEST['f3'])) {
    $id = $_REQUEST['userId'];
    $query1 = "SELECT fof.firstName, fof.surname, fof.age, gender.name FROM user INNER JOIN connected ON user.id = connected.userId INNER JOIN user as friend ON connected.friendId = friend.id INNER JOIN connected as fconnected ON friend.id = fconnected.userId INNER JOIN user as fof ON fconnected.friendId = fof.id
            INNER JOIN gender ON fof.genderId = gender.id WHERE user.id = $id GROUP BY fof.firstName,fof.surname,fof.age, gender.name HAVING COUNT(*) > 2 ";
}
if (isset($query1)) {
    $result = mysqli_query($conn, $query1) or die (mysqli_error($conn));

    if (mysqli_num_rows($result)) {
      ?>
      <table border='1'>
        <tr>
          <th>First Name</th><th>Surname</th><th>Age</th><th>Gender</th>
        </tr>
        <?php
        while($r = mysqli_fetch_array($result)):
        ?>
        <tr>
          <td><?php echo $r['firstName']; ?></td>
          <td><?php echo $r['surname']; ?></td>
          <td><?php echo $r['age']; ?></td>
          <td><?php echo $r['name']; ?></td>
        </tr>
        <?php
        endwhile;
        ?>
      </table>
      <?php
    }

}
