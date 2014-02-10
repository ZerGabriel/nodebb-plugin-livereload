<h1>LiveReload</h1>
<hr />

<form>
  <div class="alert alert-info">
    <p>
      <strong>Note that you need to restart the server in order to use the new settings.</strong><br />
      <br />
      Note that you need to have the server-ability for livereload.<br />
      You can use this together with <a href="https://github.com/frissdiegurke/nodebb-grunt-development">NodeBB Grunt Development</a> ;)<br />
      <br />
      <input type="text" data-field="livereload:host" title="Host address" class="form-control pull-left" style="width:200px" placeholder="localhost">
      <div class="pull-left" style="line-height:30px">:</div>
      <input type="number" data-field="livereload:port" value="35729" title="Port" class="form-control pull-left" style="width:100px" placeholder="35729">
      <div class="clearfix"> </div>
    </p>
  </div>
</form>

<button class="btn btn-lg btn-primary" id="save">Save</button>

<script>
  require(['forum/admin/settings'], function(Settings) {
    Settings.prepare();
  });
</script>