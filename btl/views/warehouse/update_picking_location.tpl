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
	   <h4 color = >{{wh_info[0][1]}}</h4>
	   % include('warehouse/side_nav_menu.tpl', wh_id = wh_info[0][0])
	   </div>
      	   <div class="medium-10 columns">
	   <h4>Update Picking Location</h4>

	   <form action="/warehouses/{{wh_info[0][0]}}/update-picking-location-{{pid}}" method="POST">
	   <div class="row">
	   <div class="medium-3 columns">
	   <label>Picking Location
	   <input type="text" name="picking-location"
	   value="{{pl_info[0][0]}}"required="required">
	   </label>

	   <div class="medium-9 columns">
	   </div>
	   </div>
	   </div>

	   <div class="row">
	   <div class="medium-3 columns">
	   <label>SKU
		<select name="sku">
		<option value=""></option>
		% for item in sku_upc:
		% if item[0] == pl_info[0][1]:
		<option value="{{item[0]}}" selected="selected">{{item[0]}}</option>
		% else:
		<option value="{{item[0]}}">{{item[0]}}</option>
           	% end
		% end
		</select>
	   </label>
	   </div>
	   <div class="medium-3 columns">
	   <label>Qty
		<input type="number" min="1" value="{{pl_info[0][2]}}"
		name="qty">
	   </label>
	   </div>
	   <div class="medium-6 columns">
	   </div>

	   </div>

	    <input type="submit" class="button"
	    value="Update Picking Location" name="update-picking-location">
	    </form>
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