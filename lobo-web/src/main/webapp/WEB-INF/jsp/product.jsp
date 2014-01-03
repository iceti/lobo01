<div class="container">
	<div class="row">
		<div class="panel panel-default">
		  <div class="panel-heading">Stock - Filtro</div>
		  <div class="panel-body">
		  	<div class="container">
		  		<div class="row">
		  			<div class="col-md-4">
			  			<div class="input-group input-group">
						  <span class="input-group-addon">&nbsp;&nbsp;&nbsp;Code</span>
						  <input type="text" class="form-control" placeholder="Code">
						</div>  
		  			</div>
		  			<div class="col-md-8">
		  				&nbsp;
		  			</div>
		  		</div>
		  		<div class="row">
		  			<div class="col-md-4">
		  				&nbsp;
		  			</div>
		  			<div class="col-md-4">
		  				&nbsp;
		  			</div>
		  			<div class="col-md-4">
		  			&nbsp;
		  			</div>
		  		</div>
		  		<div class="row">
		  			<div class="col-md-4">
			  			<div class="input-group input-group">
						  <span class="input-group-addon">Nombre</span>
						  <input type="text" class="form-control" placeholder="Nombre">
						</div>  
		  			</div>
		  			<div class="col-md-8">
		  			&nbsp;
		  			</div>
		  		</div>
		  		<div class="row">
		  			<div class="col-md-4">
		  				&nbsp;
		  			</div>
		  			<div class="col-md-4">
		  				&nbsp;
		  			</div>
		  			<div class="col-md-4">
		  			&nbsp;
		  			</div>
		  		</div>
		  		<div class="row">
		  			<div class="col-md-4"">
		  				&nbsp;
		  			</div>
		  			<div class="col-md-2">
		  				<button type="button" class="btn btn-primary" onclick="javascript:searchAll();">Buscar</button>
		  			</div>
		  			<div class="col-md-2">
		  				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#newProduct">Nuevo</button>
		  			</div>
		  			<div class="col-md-4">
		  			&nbsp;
		  			</div>
		  		</div>
		  		<!-- Modal -->
				<div class="modal fade" id="newProduct" tabindex="-1" role="dialog" aria-labelledby="Nuevo Producto..." aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
				      </div>
				      <form role="form" action="${pageContext.request.contextPath}/product/add.html" method="POST">
					      <div class="modal-body">
							  <div class="form-group">
							    <label for="code">Code</label>
							    <input type="text" class="form-control" id="code" placeholder="Ingresar C&oacute;digo" name="code">
							  </div>
							  <div class="form-group">
							    <label for="code">Descripción</label>
							    <input type="text" class="form-control" id="description" placeholder="Ingresar Descripción" name="description">
							  </div>
							  <div class="form-group">
							    <label for="code">Precio</label>
							    <input type="text" class="form-control" id="price" placeholder="Ingresar Precio" name="price">
							  </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					        <input type="submit" class="btn btn-primary" value="Aceptar" />
					      </div>
					  </form>
				    </div><!-- /.modal-content -->
				  </div><!-- /.modal-dialog -->
				</div><!-- /.modal -->
		  	</div>
		  </div>
		</div>
	</div>
	<div class="row">
		<div class="panel panel-default">
		  <div class="panel-heading">Stock - B&uacute;squeda</div>
		  <div class="panel-body">
		  	<div class="container">
		  		<div class="row">
		  			<table id="products-table" class="tablesorter">
		  				<thead>
		  					<tr>
		  						<th>#</th>
		  						<th>Precio</th>
		  						<th>Descripción</th>
		  						<th>Precio</th>
		  					</tr>
		  				</thead>
		  				<tbody>
		  				</tbody>
		  				<tfoot>
							<tr>
								<th>#</th>
								<th>Precio</th>
								<th>Descripción</th>
								<th>Precio</th>
							</tr>
						</tfoot>
		  			</table>
		  		</div>
		  		<div class="ts-pager form-horizontal row" style="position:relative;left:35%">
					<button type="button" class="btn first"><i class="icon-step-backward glyphicon glyphicon-step-backward"></i></button>
					<button type="button" class="btn prev"><i class="icon-arrow-left glyphicon glyphicon-backward"></i></button>
					<span class="pagedisplay"></span> <!-- this can be any element, including an input -->
					<button type="button" class="btn next"><i class="icon-arrow-right glyphicon glyphicon-forward"></i></button>
					<button type="button" class="btn last"><i class="icon-step-forward glyphicon glyphicon-step-forward"></i></button>
					<select class="pagesize input-mini" title="Select page size">
						<option selected="selected" value="10">10</option>
						<option value="20">20</option>
						<option value="30">30</option>
						<option value="40">40</option>
					</select>
					<select class="pagenum input-mini" title="Select page number"></select>
				</div>
		  	</div>
		  </div>
		</div>
	</div>
</div>

<script>

	$(
		function(){
			$.extend($.tablesorter.themes.bootstrap, {
			    // these classes are added to the table. To see other table classes available,
			    // look here: http://twitter.github.com/bootstrap/base-css.html#tables
			    table      : 'table table-bordered',
			    caption    : 'caption',
			    header     : 'bootstrap-header', // give the header a gradient background
			    footerRow  : '',
			    footerCells: '',
			    icons      : '', // add "icon-white" to make them white; this icon class is added to the <i> in the header
			    sortNone   : 'bootstrap-icon-unsorted',
			    sortAsc    : 'icon-chevron-up glyphicon glyphicon-chevron-up',     // includes classes for Bootstrap v2 & v3
			    sortDesc   : 'icon-chevron-down glyphicon glyphicon-chevron-down', // includes classes for Bootstrap v2 & v3
			    active     : '', // applied when column is sorted
			    hover      : '', // use custom css here - bootstrap class may not override it
			    filterRow  : '', // filter row class
			    even       : '', // odd row zebra striping
			    odd        : ''  // even row zebra striping
		  	});
			
			// call the tablesorter plugin and apply the uitheme widget
			  $("#products-table").tablesorter({
			    // this will apply the bootstrap theme if "uitheme" widget is included
			    // the widgetOptions.uitheme is no longer required to be set
			    theme : "bootstrap",

			    widthFixed: true,

			    headerTemplate : '{content} {icon}', // new in v2.7. Needed to add the bootstrap icon!

			    // widget code contained in the jquery.tablesorter.widgets.js file
			    // use the zebra stripe widget if you plan on hiding any rows (filter widget)
			    widgets : [ "uitheme", "filter", "zebra" ],

			    widgetOptions : {
			      // using the default zebra striping class name, so it actually isn't included in the theme variable above
			      // this is ONLY needed for bootstrap theming if you are using the filter widget, because rows are hidden
			      zebra : ["even", "odd"],

			      // reset filters button
			      filter_reset : ".reset"

			      // set the uitheme widget to use the bootstrap theme class names
			      // this is no longer required, if theme is set
			      // ,uitheme : "bootstrap"

			    }
			  })
			  .tablesorterPager({

			    // target the pager markup - see the HTML block below
			    container: $(".ts-pager"),

			    // target the pager page select dropdown - choose a page
			    cssGoto  : ".pagenum",

			    // remove rows from the table to speed up the sort of large tables.
			    // setting this to false, only hides the non-visible rows; needed if you plan to add/remove rows with the pager enabled.
			    removeRows: false,

			    // output string - default is '{page}/{totalPages}';
			    // possible variables: {page}, {totalPages}, {filteredPages}, {startRow}, {endRow}, {filteredRows} and {totalRows}
			    output: '{startRow} - {endRow} / {filteredRows} ({totalRows})'

			  });
		
		searchAll();
			
		return;
		}		
	);

	searchAll = function(){
		
		AjaxCommons.get("${pageContext.request.contextPath}/service/product/search/all",
		{},
		function(data){
			if(data != null){
				for(var i=0;i<data.length;i++){
					var tr = $("<tr></tr>");
					var tdId = $("<td></td>").append(data[i].id);
					var tdCode = $("<td></td>").append(data[i].code);
					var tdDescription = $("<td></td>").append(data[i].description);
					var tdPrice = $("<td></td>").append(data[i].price);
					
					tr.append(tdId).append(tdCode).append(tdDescription).append(tdPrice);
					
					$("#products-table tbody").append(tr);
				}
				// let the plugin know that we made a update, then the plugin will
			    // automatically sort the table based on the header settings
			    $("#products-table").trigger("update");
			}
			
			return;
		}
		);
		
		return;
	}
</script>