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
	   	<h4>Add Contact</h4>
	   	<ul class="vertical menu">
		</ul>
	   </div>
	   
      	   <div class="medium-10 columns">
	   <div class="row">
      	   <div class="medium-4 columns">
	   <form action="/vendors/{{vid}}/contacts/edit-contact-{{contact_info[0][0]}}" method="POST">
	   	 <label>Name
		 <input type="text" name="name" required="required"
		 value="{{contact_info[0][1]}}">
		 </label>
	   	 
		 <label>Title
		 <input type="text" name="title"
		 value="{{contact_info[0][2]}}">
		 </label>
	   	 
		 <label>Phone
		 <input type="text" name="phone"
		 value="{{contact_info[0][3]}}">
		 </label>
	   	 
		 <label>Phone 2
		 <input type="text" name="alt-phone"
		 value="{{contact_info[0][4]}}">
		 </label>

		 <label>email
		 <input type="text" name="email"
		 value="{{contact_info[0][5]}}">
		 </label>
	   <input type="submit" class="button" name="edit-contact"
	   value="Update Contact">
	   <form>
	   </div>
	   </div>
	   </div>

    </div>

  <!-- close wrapper, no more content after this -->

  </div>

</div>

<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>

% include('global/end_body.tpl')