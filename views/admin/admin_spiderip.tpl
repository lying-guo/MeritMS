<!-- iframe里搜索IP地址段 未修改-->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>EngineerCMS</title>
  <script type="text/javascript" src="/static/js/jquery-2.1.3.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
  <script src="/static/js/bootstrap-treeview.js"></script>
  <script type="text/javascript" src="/static/js/jquery.tablesorter.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css"/>
  <!-- <script type="text/javascript" src="/static/js/moment.min.js"></script> -->
  <!-- <script type="text/javascript" src="/static/js/daterangepicker.js"></script> -->
  <!-- <link rel="stylesheet" type="text/css" href="/static/css/daterangepicker.css" /> -->

  <!-- <script type="text/javascript" src="/static/bootstrap-datepicker/bootstrap-datepicker.js"></script> -->
  <!-- <script type="text/javascript" src="/static/bootstrap-datepicker/bootstrap-datepicker.zh-CN.js"></script> -->
  <!-- <link rel="stylesheet" type="text/css" href="/static/bootstrap-datepicker/bootstrap-datepicker3.css"/> -->
  <link rel="stylesheet" type="text/css" href="/static/css/bootstrap-table.min.css"/>
  <link rel="stylesheet" type="text/css" href="/static/css/bootstrap-editable.css"/>
  
  <script type="text/javascript" src="/static/js/bootstrap-table.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-table-zh-CN.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-table-editable.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-editable.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-table-export.min.js"></script>
  
  <!-- <link rel="stylesheet" type="text/css" href="/static/css/select2.css"/> -->
  <!-- <script type="text/javascript" src="/static/js/select2.js"></script> -->
  
  <link rel="stylesheet" type="text/css" href="/static/font-awesome-4.7.0/css/font-awesome.min.css"/>
  <!-- <link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css"/> -->
  <script src="/static/js/tableExport.js"></script>
  
  <!-- <script src="/static/js/jquery.form.js"></script> -->
  
  <!-- <script src="/static/js/admin/main.js"></script> -->
  <!-- <script src="/static/js/admin/gridview.js"></script> -->
  <!-- <script src="/static/js/admin/validate.js"></script> -->
  <!-- <link rel="stylesheet" type="text/css" href="/static/css/admin/layout.css"/> -->
</head>
<body>

<script type="text/javascript">
  function index1(value,row,index){
  // alert( "Data Loaded: " + index );
            return index+1
  }

  // 改变点击行颜色
  $(function(){
     // $("#table").bootstrapTable('destroy').bootstrapTable({
     //     columns:columns,
     //     data:json
     // });
     $("#table0").on("click-row.bs.table",function(e,row,ele){
         $(".info").removeClass("info");
         $(ele).addClass("info");
         // rowid=row.Id;//全局变量
         // $("#details").show();
         // $('#table1').bootstrapTable('refresh', {url:'/admin/category/'+row.Id});
     });
     // $("#get").click(function(){
     //     alert("商品名称：" + getContent().TuanGouName);
     // })
  });
</script>

<div class="col-lg-12">
<h3>IP地址、端口表</h3>
<div id="toolbar1" class="btn-group">
        <button type="button" data-name="addButton" id="addButton" class="btn btn-default"> <i class="fa fa-plus">添加</i>
        </button>
        <button type="button" data-name="editorButton" id="editorButton" class="btn btn-default"> <i class="fa fa-edit">编辑</i>
        </button>
        <button type="button" data-name="deleteButton" id="deleteButton" class="btn btn-default">
        <i class="fa fa-trash">删除</i>
        </button>
</div>
<!-- data-toggle="table" data-url="/admin/spiderip" -->
<table id="table0"
        
        data-search="true"
        data-show-refresh="true"
        data-show-toggle="true"
        data-show-columns="true"
        data-toolbar="#toolbar1"
        data-query-params="queryParams"
        data-sort-name="ProjectName"
        data-sort-order="desc"
        data-page-size="5"
        data-page-list="[5, 25, 50, All]"
        data-unique-id="id"
        data-pagination="true"
        data-side-pagination="client"
        data-single-select="true"
        data-click-to-select="true"
        >
    <thead>        
      <tr>
        <!-- radiobox data-checkbox="true"-->
        <th data-width="10" data-radio="true"></th>
        <th data-formatter="index1">#</th>
        <th data-field="Title">名称</th>
        <th data-field="StartIp" data-title-tooltip="不能为空">IP起始</th>
        <th data-field="EndIp" data-title-tooltip="可以为空">IP终止</th>
        <th data-field="Port" data-title-tooltip="80;8080;8081...">端口号</th>
      </tr>
    </thead>
</table>
<!-- <div class="gridview2"></div> -->

<script type="text/javascript">
        /*数据json*/
        var json =  [ {"Id":"1","Title":"牛","StartIp":"192.168.9.1","EndIp":"192.168.9.1",Port:"80"},
                      {"Id":"2","Title":"马","StartIp":"192.168.9.1","EndIp":"192.168.9.1",Port:"80"},
                      {"Id":"3","Title":"羊","StartIp":"192.168.9.1","EndIp":"192.168.9.1",Port:"80"},
                      {"Id":"4","Title":"猴","StartIp":"192.168.9.1","EndIp":"192.168.9.1",Port:"80"},
                      {"Id":"5","Title":"猫","StartIp":"192.168.9.1","EndIp":"192.168.9.1",Port:"80"},
                      {"Id":"6","Title":"龙","StartIp":"192.168.9.1","EndIp":"192.168.9.1",Port:"80"}];
        /*初始化table数据*/
        $(function(){
            $("#table0").bootstrapTable({
                data:json,
                // onClickRow: function (row, $element) {
                  // alert( "选择了行Id为: " + row.Id );
                  // rowid=row.Id//全局变量
                  // $('#table1').bootstrapTable('refresh', {url:'/admincategory?pid='+row.Id});
                // }
            });
        });

  $(document).ready(function() {
    $("#addButton").click(function() {
        $('#modalTable').modal({
        show:true,
        backdrop:'static'
        });
    })

    $("#editorButton").click(function() {
      var selectRow=$('#table0').bootstrapTable('getSelections');
      if (selectRow.length<1){
        alert("请先勾选类别！");
        return;
      }
      if (selectRow.length>1){
      alert("请不要勾选一个以上目录！");
      return;
      }
      $("input#cid").remove();
      var th1="<input id='cid' type='hidden' name='cid' value='" +selectRow[0].Id+"'/>"
      $(".modal-body").append(th1);//这里是否要换名字$("p").remove();
      $("#Iptitle1").val(selectRow[0].Title);
      $("#StartIp1").val(selectRow[0].StartIp);
      $("#EndIp1").val(selectRow[0].EndIp);
      $("#Iprole1").val(selectRow[0].Iprole);
      // alert(JSON.stringify(selectRow));
      // alert(selectRow[0].Id);
      // var title = $('#'+id).attr("value");
      // var title = $('#'+id).attr("href");
      // var categoryid = $('#categoryid').val();
        $('#modalTable1').modal({
        show:true,
        backdrop:'static'
        });
    })

    $("#deleteButton").click(function() {
      var selectRow=$('#table0').bootstrapTable('getSelections');
      // if (selectRow.length<1){
      //   alert("请先勾选类别！");
      //   return;
      // }
      if (selectRow.length<=0) {
        alert("请先勾选类别！");
        return false;
      }
      var ids=$.map(selectRow,function(row){
        return row.id;
      })
      //删除已选数据
      $('$table0').bootstrapTable('remove',{
        field:'id',
        values:ids
      });
    })

  })

</script>

<!-- 添加IP地址段 -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="modalTable">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">添加IP地址段</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">
              <div class="form-group must">
                <label class="col-sm-3 control-label">名称</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="Iptitle" name="Iptitle"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">起始IP</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="StartIp" name="StartIp"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">终止IP</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="EndIp" name="EndIp"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">权限等级</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="Iprole" name="Iprole"></div>
              </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="save()">保存</button>
        </div>
      </div>
    </div>
  </div>
</form>
</div>
<script type="text/javascript">
  function save(){
      // var radio =$("input[type='radio']:checked").val();
      var Iptitle = $('#Iptitle').val();
      var StartIp = $('#StartIp').val();
      var EndIp = $('#EndIp').val();
      var Iprole = $('#Iprole').val();
      // $('#myModal').on('hide.bs.modal', function () {  
      if (Iptitle)
        {  
            $.ajax({
                type:"post",
                url:"/admin/ipsegment/addipsegment",
                data: {title:Iptitle,startip:StartIp,endip:EndIp,iprole:Iprole},
                success:function(data,status){
                  alert("添加“"+data+"”成功！(status:"+status+".)");
                 }
            });  
        }else{
          alert("名称不能为空");
        }  
        // $(function(){$('#myModal').modal('hide')}); 
          $('#modalTable').modal('hide');
          $('#table0').bootstrapTable('refresh', {url:'/admin/ipsegment'});
          // "/category/modifyfrm?cid="+cid
          // window.location.reload();//刷新页面
  }

  function update(){
    // var radio =$("input[type='radio']:checked").val();
    var Iptitle1 = $('#Iptitle1').val();
    var StartIp1 = $('#StartIp1').val();
    var EndIp1 = $('#EndIp1').val();
    var Iprole1 = $('#Iprole1').val();
    var cid = $('#cid').val();
    // $('#myModal').on('hide.bs.modal', function () {  
    if (Iptitle1)
      {  
          $.ajax({
              type:"post",
              url:"/admin/ipsegment/updateipsegment",
              data: {cid:cid,title:Iptitle1,startip:StartIp1,endip:EndIp1,iprole:Iprole1},
              success:function(data,status){
                alert("添加“"+data+"”成功！(status:"+status+".)");
               }
          });  
      }else{
        alert("名称不能为空");
      } 
      // $(function(){$('#myModal').modal('hide')});
        $('#modalTable1').modal('hide');
        $('#table0').bootstrapTable('refresh', {url:'/admin/ipsegment'});
        // "/category/modifyfrm?cid="+cid
        // window.location.reload();//刷新页面
  }
</script>
<!-- 修改ip地址段 -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="modalTable1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">修改IP地址段</h3>
          </div>
          <div class="modal-body">
            <div class="form-group must">
              <label class="col-sm-3 control-label">名称</label>
              <div class="col-sm-7">
                <input type="text" class="form-control" id="Iptitle1" name="Iptitle1"></div>
            </div>
            <div class="form-group must">
              <label class="col-sm-3 control-label">起始IP</label>
              <div class="col-sm-7">
                <input type="text" class="form-control" id="StartIp1" name="StartIp1"></div>
            </div>
            <div class="form-group must">
              <label class="col-sm-3 control-label">终止IP</label>
              <div class="col-sm-7">
                <input type="tel" class="form-control" id="EndIp1" name="EndIp1"></div>
            </div>
            <div class="form-group must">
              <label class="col-sm-3 control-label">权限等级</label>
              <div class="col-sm-7">
                <input type="tel" class="form-control" id="Iprole1" name="Iprole1"></div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="update()">修改</button>
          </div>
        </div>
    </div>
  </div>
</form>
</div>

<!-- ********点击某一行，显示所有ip对应用户名 -->

<!-- onClickRow  click-row.bs.table  row, $element 当用户点击某一行的时候触发，参数包括：
row：点击行的数据，
$element：tr 元素，
field：点击列的 field 名称 -->
<script type="text/javascript">
  // var toolbarUrl = '/myself'; //$menuTable, $btn_gridview;
  // $(function() {
  //   $menuTable = $('#table')
  //       .on('clickRow',function(e, row, $element) {
  //             if ($btn_gridview == null) {
  //               var $gridview2 = $('.gridview2');
  //               $.ajax({
  //                 url: toolbarUrl, //+ row.id,
  //                 type: 'get',
  //                       dataType: 'html',
  //                 success:function(html){
  //                   $html = $(html);
  //                   $html.appendTo($gridview2);
  //                   win.init($gridview2)

  //                   $btn_gridview = $('#btn_gridview').gridView();

  //                   $menuTable.gridView('resetView');
  //                   $('#current_menu').val(row.id);
  //                   $btn_gridview.data('data-menu',row.id);
  //                 },
  //               })
  //               return;
  //             } else if ($btn_gridview.data('data-menu') == row.id) {
  //               return;
  //             }

  //             $btn_gridview.data('data-menu', row.id);
  //             console.log($btn_gridview.data('bootstrap.table'))
  //             $btn_gridview.data('bootstrap.table').options.url = toolbarUrl //+ row.id;
  //             $btn_gridview.bootstrapTable('refresh');
  //           })
  //     });


 /*初始化table数据*/
 /*数据json*/
  var json1 = [{"Id":"1","ProjCateName":"规划","ProjCateCode":"A","ProjCateGrade":"1"},
              {"Id":"2","ProjCateName":"报告","ProjCateCode":"B","ProjCateGrade":"2"},
              {"Id":"3","ProjCateName":"图纸","ProjCateCode":"T","ProjCateGrade":"2"},
              {"Id":"4","ProjCateName":"水工","ProjCateCode":"5","ProjCateGrade":"3"},
              {"Id":"5","ProjCateName":"机电","ProjCateCode":"6","ProjCateGrade":"3"},
              {"Id":"6","ProjCateName":"施工","ProjCateCode":"7","ProjCateGrade":"3"}];
/*初始化table数据*/
// $(function(){
//     $("#table1").bootstrapTable({
//         data:json1
//     });
// });
        
// $('#editable td').on('change', function(evt, newValue) {
//     $.post( "script.php", { value: newValue })
//     .done(function( data ) {
//         alert( "Data Loaded: " + data );
//     });
// }); 

function format_status(status,row,index) {
  if(status == 1){
    return '显示'
  }else if(status == 2){
    return  '隐藏'
  }else if(status == 0){
    return  '禁止'
  }
}

$(document).ready(function() {
  $("#addButton1").click(function() {
        // alert("添加pip"+rowid);
        // if (rowid=""){
        //   alert("请先点击类别！");
        //   return;
        // }
        $("input#pid").remove();
        var th1="<input id='pid' type='hidden' name='pid' value='" +rowid+"'/>"
        $(".modal-body").append(th1);

        $('#modalTable2').modal({
          show:true,
          backdrop:'static'
        });
  })

  $("#editorButton1").click(function() {
    var selectRow3=$('#table1').bootstrapTable('getSelections');
    if (selectRow3.length<1){
      alert("请先勾选目录！");
      return;
    }
    if (selectRow3.length>1){
      alert("请不要勾选一个以上目录！");
      return;
    }
    $("input#cid").remove();
    var th2="<input id='cid' type='hidden' name='cid' value='" +selectRow3[0].Id+"'/>"
      $(".modal-body").append(th2);//这里是否要换名字$("p").remove();

      $("#projcatename3").val(selectRow3[0].Title);
      $("#projcatecode3").val(selectRow3[0].Code);
      $("#projcategrade3").val(selectRow3[0].Grade);

    $('#modalTable3').modal({
      show:true,
      backdrop:'static'
    });
  })

  // ******试验提交选择的表格************
  $("#submitButton1").click(function() {
    var selectRow3=$('#table1').bootstrapTable('getSelections');
    // var obj = selectRow3.parseJSON();
    // var obj = jQuery.parseJSON(selectRow3);
    console.log(selectRow3[0].Code);
    if (selectRow3.length<1){
      alert("请先勾选目录！");
      return;
    }
    var obj = JSON.stringify(selectRow3);
    alert(selectRow3);
    alert(obj);
    console.log(obj);
    // var ids=$.map(selectRow3,function(row){
    //     return row.Id;
    //   })
    // alert(ids);
    var ids="";
    for(var i=0;i<selectRow3.length;i++){
      if(i==0){
        ids=selectRow3[i].Id;
      }else{
        ids=ids+","+selectRow3[i].Id;
      }
        
    }
    $.ajax({
      type:"post",
      url:"/project/category/addcategory",
      data: {rows:selectRow3},
      success:function(data,status){
        alert("添加“"+data+"”成功！(status:"+status+".)");
      }
    });  
  })
})

</script>

<toolbar id="btn_toolbar1" class="toolbar">
<div class="btn-group">
        <button type="button" data-name="addButton1" id="addButton1" class="btn btn-default" data-target="modal"><i class="fa fa-plus" aria-hidden="true"> </i>添加</button>
        <button type="button" data-name="editorButton1" id="editorButton1" class="btn btn-default" data-target="modal"><i class="fa fa-edit" aria-hidden="true"> </i>编辑</button>
        <button type="button" data-name="deleteButton1" id="deleteButton1" class="btn btn-default" data-target="default"><i class="fa fa-trash" aria-hidden="true"> </i>删除</button>
        <button type="button" data-name="submitButton1" id="submitButton1" class="btn btn-default" data-target="default"><i class="fa fa-cog" aria-hidden="true"> </i>提交</button>
    </div>
</toolbar>
<!-- data-query-params="queryParams" data-content-type="application/json"-->
<div id="details" style="display:none">
<h3>工程目录分级</h3>
<!-- data-url="/admin/category/2" 没有了这个，当然table1表格无法支持刷新了！！！data-show-refresh="true"-->
<table id="table1"
        data-toggle="table"
        data-search="true"
        data-show-toggle="true"
        data-show-columns="true"
        data-toolbar="#btn_toolbar1"
        data-sort-name="ProjectName"
        data-sort-order="desc"
        data-page-size="5"
        data-page-list="[5, 25, 50, All]"
        data-unique-id="id"
        data-pagination="true"
        data-side-pagination="client"
        data-click-to-select="true">
    <thead>        
      <tr>
        <th data-width="10" data-checkbox="true"></th>
        <th data-formatter="index1">#</th>
        <th data-field="Title">名称</th>
        <th data-field="Code">代码</th>
        <th data-field="Grade" data-sortable="true">级别</th>
      </tr>
    </thead>
</table>
</div>

<!-- 添加工程目录分级 -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="modalTable2">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">添加目录分级</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">
              <div class="form-group must">
                <label class="col-sm-3 control-label">目录名称</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="projcatename2"></div>
                </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">代码</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="projcatecode2"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">级别</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="projcategrade2"></div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            <!-- <button type="submit" class="btn btn-primary">保存</button> -->
            <button type="button" class="btn btn-primary" onclick="save2()">保存</button>
          </div>
        </div>
      </div>
    </div>
  </form>
</div>
<script type="text/javascript">
  function save2(){
      // var radio =$("input[type='radio']:checked").val();
      var projcatename2 = $('#projcatename2').val();
      var projcatecode2 = $('#projcatecode2').val();
      var parentid = $('#pid').val();
      var projcategrade2 = $('#projcategrade2').val();
      // $('#myModal').on('hide.bs.modal', function () {  
      if (projcatename2)
        {  
            $.ajax({
                type:"post",
                url:"/admin/category/addcategory",
                data: {pid:parentid,title:projcatename2,code:projcatecode2,grade:projcategrade2},//父级id
                success:function(data,status){
                  alert("添加“"+data+"”成功！(status:"+status+".)");
                 }
            });  
        } 
        // $(function(){$('#myModal').modal('hide')}); 
          $('#modalTable2').modal('hide');
          $('#table1').bootstrapTable('refresh', {url:'/admin/category/'+parentid});
          // "/category/modifyfrm?cid="+cid
          // window.location.reload();//刷新页面
  }
  function update2(){
      // var radio =$("input[type='radio']:checked").val();
      var projcatename3 = $('#projcatename3').val();
      var projcatecode3 = $('#projcatecode3').val();
      var projcategrade3 = $('#projcategrade3').val();
      var cid = $('#cid').val();
      // $('#myModal').on('hide.bs.modal', function () {  
      if (projcatename3)
        {  
            $.ajax({
                type:"post",
                url:"/admin/category/updatecategory",
                data: {cid:cid,title:projcatename3,code:projcatecode3,grade:projcategrade3},
                success:function(data,status){
                  alert("添加“"+data+"”成功！(status:"+status+".)");
                 }
            });  
        } 
        // $(function(){$('#myModal').modal('hide')});
          $('#modalTable3').modal('hide');
          // alert("添加“"+rowid);
          $('#table1').bootstrapTable('refresh', {url:'/admin/category/'+rowid});
  } 

</script>
<!-- 修改工程目录分级 -->
<div class="form-horizontal" class="container">
  <!-- <form class="form-horizontal"> -->
    <div class="modal fade" id="modalTable3">
      <div class="modal-dialog">
        <div  class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">修改目录分级</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">
              <div class="form-group must">
                <label class="col-sm-3 control-label">目录名称</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="projcatename3"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">代码</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="projcatecode3"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">级别</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="projcategrade3"></div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary" onclick="update2()">修改</button>
          </div>
        </div>
      </div>
    </div>
  <!-- </form> -->
</div>
<br/>
<br/>
</div>

</body>
</html>