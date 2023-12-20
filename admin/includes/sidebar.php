<div id="sidebar"><a href="#" class="visible-phone"><i class="fas fa-home"></i> Dashboard</a>
  <ul>
    <li class="<?php if($page=='dashboard'){ echo 'active'; }?>"><a href="index.php"><i class="fas fa-tachometer-alt"></i> <span>Dashboard</span></a> </li>
    <li class="submenu"> <a href="#"><i class="fas fa-users"></i> <span>Manage Members</span> <span class="label label-important"><?php include 'dashboard-usercount.php';?> </span></a>
      <ul>
        <li class="<?php if($page=='members'){ echo 'active'; }?>"><a href="members.php"><i class="fas fa-arrow-right"></i> List All Members</a></li>
        <li class="<?php if($page=='members-entry'){ echo 'active'; }?>"><a href="member-entry.php"><i class="fas fa-arrow-right"></i> Member Entry Form</a></li>
        <li class="<?php if($page=='members-remove'){ echo 'active'; }?>"><a href="remove-member.php"><i class="fas fa-arrow-right"></i> Remove Member</a></li>
       <!-- <li class="<?php if($page=='members-update'){ echo 'active'; }?>"><a href="edit-member.php"><i class="fas fa-arrow-right"></i> Update Member Details</a></li> -->
      </ul>

      <li class="submenu"> <a href="#"><i class="fas fa-users"></i> <span>Manage Parents</span> <span class="label label-important"><?php include 'dashboard-parentscount.php';?> </span></a>
      <ul>
        <li class="<?php if($page=='parents'){ echo 'active'; }?>"><a href="parents.php"><i class="fas fa-arrow-right"></i> List All Parents</a></li>
        <li class="<?php if($page=='parents-entry'){ echo 'active'; }?>"><a href="parents-entry.php"><i class="fas fa-arrow-right"></i> Parents Entry Form</a></li>
        <li class="<?php if($page=='parents-remove'){ echo 'active'; }?>"><a href="remove-parents.php"><i class="fas fa-arrow-right"></i> Remove Parents</a></li>
       <!-- <li class="<?php if($page=='parents-update'){ echo 'active'; }?>"><a href="edit-parents.php"><i class="fas fa-arrow-right"></i> Update Parents Details</a></li> -->
      </ul>

      <li class="submenu"> <a href="#"><i class="fas fa-users"></i> <span>Manage Academy</span> <span class="label label-important"><?php include 'dashboard-kidscount.php';?> </span></a>
      <ul>
        <li class="<?php if($page=='kids'){ echo 'active'; }?>"><a href="kids.php"><i class="fas fa-arrow-right"></i> List All Kids</a></li>
        <li class="<?php if($page=='kids-entry'){ echo 'active'; }?>"><a href="kids-entry.php"><i class="fas fa-arrow-right"></i> Kids Entry Form</a></li>
        <li class="<?php if($page=='kids-remove'){ echo 'active'; }?>"><a href="remove-kids.php"><i class="fas fa-arrow-right"></i> Remove Kids</a></li>
        <!-- <li class="<?php if($page=='kids-update'){ echo 'active'; }?>"><a href="edit-kids.php"><i class="fas fa-arrow-right"></i> Update Kids Details</a></li> -->
      </ul>
      
    </li>

    <li class="submenu"> <a href="#"><i class="fas fa-dumbbell"></i> <span>Gym Equipment</span> <span class="label label-important"><?php include 'dashboard-equipcount.php';?> </span></a>
    <ul>
        <li class="<?php if($page=='list-equip'){ echo 'active'; }?>"><a href="equipment.php"><i class="fas fa-arrow-right"></i> List Gym Equipment</a></li>
        <li class="<?php if($page=='add-equip'){ echo 'active'; }?>"><a href="equipment-entry.php"><i class="fas fa-arrow-right"></i> Add Equipment</a></li>
        <li class="<?php if($page=='remove-equip'){ echo 'active'; }?>"><a href="remove-equipment.php"><i class="fas fa-arrow-right"></i> Remove Equipment</a></li>
        <li class="<?php if($page=='update-equip'){ echo 'active'; }?>"><a href="edit-equipment.php"><i class="fas fa-arrow-right"></i> Update Equipment Details</a></li>
      </ul>
    </li>
    <li class="<?php if($page=='attendance'){ echo 'submenu active'; } else { echo 'submenu';}?>"> <a href="#"><i class="fas fa-calendar-alt"></i> <span>Customer Attendance</span></a>
      <ul>
        <li class="<?php if($page=='attendance'){ echo 'active'; }?>"><a href="attendance.php"><i class="fas fa-arrow-right"></i> Check In</a></li>
          <li class="<?php if($page=='view-attendance'){ echo 'active'; }?>"><a href="view-attendance.php"><i class="fas fa-arrow-right"></i> View</a></li>

        </ul>
      </li>

    <li class="<?php if($page=='academy-attendance'){ echo 'submenu active'; } else { echo 'submenu';}?>"> <a href="#"><i class="fas fa-calendar-alt"></i> <span>Academy Attendance</span></a>
      <ul>
        <li class="<?php if($page=='academy-attendance'){ echo 'active'; }?>"><a href="academy-attendance.php"><i class="fas fa-arrow-right"></i> Check In</a></li>
          <li class="<?php if($page=='view-attendance-kids'){ echo 'active'; }?>"><a href="view-attendance-kids.php"><i class="fas fa-arrow-right"></i> View</a></li>

        </ul>
      </li>

    <li class="<?php if($page=='manage-customer-progress'){ echo 'active'; }?>"><a href="customer-progress.php"><i class="fas fa-tasks"></i> <span>Manage Customer Progress</span></a></li>
    <li class="<?php if($page=='manage-kids-progress'){ echo 'active'; }?>"><a href="kids-progress.php"><i class="fas fa-tasks"></i> <span>Manage Academy Progress</span></a></li>
    <li class="<?php if($page=='member-status'){ echo 'active'; }?>"><a href="member-status.php"><i class="fas fa-eye"></i> <span>Member's Status</span></a></li>
    <li class="<?php if($page=='kids-status'){ echo 'active'; }?>"><a href="kids-status.php"><i class="fas fa-eye"></i> <span>Kids Status</span></a></li>

    <li class="<?php if($page=='payment'){ echo 'active'; }?>"><a href="payment.php"><i class="fas fa-hand-holding-usd"></i> <span>Customer Payments</span></a></li>
    <li class="<?php if($page=='kids-payment'){ echo 'active'; }?>"><a href="kids-payment.php"><i class="fas fa-hand-holding-usd"></i> <span>Kids Payments</span></a></li>
    <li class="<?php if($page=='announcement'){ echo 'active'; }?>"><a href="announcement.php"><i class="fas fa-bullhorn"></i> <span>Announcement</span></a></li>
    <li class="<?php if($page=='staff-management'){ echo 'active'; }?>"><a href="staffs.php"><i class="fas fa-briefcase"></i> <span>Staff Management</span></a></li>
    <li class="submenu"> <a href="#"><i class="fas fa-file"></i> <span>Reports</span></a>
    <ul>
        <li class="<?php if($page=='chart'){ echo 'active'; }?>"><a href="reports.php"><i class="fas fa-arrow-right"></i> Members Gender Representation</a></li>
        <li class="<?php if($page=='member-repo'){ echo 'active'; }?>"><a href="members-report.php"><i class="fas fa-arrow-right"></i> Members Report</a></li>
        <li class="<?php if($page=='kids-repo'){ echo 'active'; }?>"><a href="kids-report.php"><i class="fas fa-arrow-right"></i> Kids Report</a></li>
        <li class="<?php if($page=='kids-repo'){ echo 'active'; }?>"><a href="male-report.php"><i class="fas fa-arrow-right"></i> Male Report</a></li>
        <li class="<?php if($page=='kids-repo'){ echo 'active'; }?>"><a href="female-report.php"><i class="fas fa-arrow-right"></i> Female Report</a></li>



        <li class="<?php if($page=='chart'){ echo 'active'; }?>"><a href="reports-kids.php"><i class="fas fa-arrow-right"></i> Kids Gender Representation</a></li>
        <li class="<?php if($page=='c-p-r'){ echo 'active'; }?>"><a href="progress-report.php"><i class="fas fa-arrow-right"></i> Customer Progress Report</a></li>
      </ul>
    </li>

     
   
  </ul>
</div>