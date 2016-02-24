<!-- This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/. -->

% if inv:
% include('global/header_inv.tpl')
% else:
% include('global/header.tpl')
%end

<div class="off-canvas-wrapper">

  <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

% include('global/top_bar.tpl')

% if inv:
% include('global/top_nav_inv.tpl')
% else:
% include('global/top_nav.tpl')
% end

    <!-- original content goes in this container -->

    <div class="off-canvas-content" data-off-canvas-content>

      <div class="expanded row">
      	   <div class="medium-2 columns">
	   </div>
	   
      	   <div class="medium-10 columns">
	         <div class = "row">
		      <div class = "medium-4 columns">
		      	   <h5 color = >Warehouses</h5>
		      	   <p><a href = "/admin/add-warehouse">Add Warehouse</a></p>
		      	   <p><a href = "#">Manage Warehouses</a></p>
		      </div>


		      <div class = "medium-4 columns">
		      	   <h5 color = >Users and Roles</h5>
		      	   <p><a href = "/admin/add-user">Add User</a></p>
		      	   <p><a href = "#">Manage Users</a></p>
		      </div>

		      <div class = "medium-4 columns">
		      </div>
		 </div>
	   </div>      
      </div>

    </div>



  <!-- close wrapper, no more content after this -->

  </div>

</div>

% include('global/end_body.tpl')