<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>创客邦</title>

<%@ include file="../common/head.jsp"%>

<script type="text/javascript" src="${ctx}/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/dmuploader.min.js"></script>
</head>

<body>
<div >
 <div class="wrapper">
      <h1>Simple Demo</h1>
      
      
      <div class="left-column">
        <!-- D&D Markup -->
        <div id="drag-and-drop-zone" class="uploader">
          <div>Drag &amp; Drop Images Here</div>
          <div class="or">-or-</div>
          <div class="browser">
            <label>
              <span>Click to open the file Browser</span>
              <input type="file" name="upfile" multiple="multiple" title='Click to add Files'>
            </label>
          </div>
        </div>
        <!-- /D&D Markup -->
      </div>
      
      <div id="fileList">
        
        <!-- Files will be places here -->

      </div>
      
      <div id="debug">
        <h2>Debug</h2>
        <div>
          <ul>
            <!-- Debug lines will be added here -->
          </ul>
        </div>
      </div>
      
      <div id="footer">
        &copy; 2014 - <a href="#">Daniel Morales</a>
      </div>
    </div>

    <script type="text/javascript">
      
      //-- Some functions to work with our UI
      function add_log(message)
      {
        var template = '<li>[' + new Date().getTime() + '] - ' + message + '</li>';
        
        $('#debug').find('ul').prepend(template);
      }
      
      function add_file(id, file)
      {
        var template = '' +
          '<div class="file" id="uploadFile' + id + '">' +
            '<div class="info">' +
              '#1 - <span class="filename" title="Size: ' + file.size + 'bytes - Mimetype: ' + file.type + '">' + file.name + '</span><br /><small>Status: <span class="status">Waiting</span></small>' +
            '</div>' +
            '<div class="bar">' +
              '<div class="progress" style="width:0%"></div>' +
            '</div>' +
          '</div>';
          
          $('#fileList').prepend(template);
      }
      
      function update_file_status(id, status, message)
      {
        $('#uploadFile' + id).find('span.status').html(message).addClass(status);
      }
      
      function update_file_progress(id, percent)
      {
        $('#uploadFile' + id).find('div.progress').width(percent);
      }
      
      // Upload Plugin itself
      $('#drag-and-drop-zone').dmUploader({
        url: '/con/upload',
        dataType: 'json',
        allowedTypes: 'image/*',
        /*extFilter: 'jpg;png;gif',*/
        onInit: function(){
          add_log('Penguin initialized :)');
        },
        onBeforeUpload: function(id){
          add_log('Starting the upload of #' + id);
          
          update_file_status(id, 'uploading', 'Uploading...');
        },
        onNewFile: function(id, file){
          add_log('New file added to queue #' + id);
          
          add_file(id, file);
        },
        onComplete: function(){
          add_log('All pending tranfers finished');
        },
        onUploadProgress: function(id, percent){
          var percentStr = percent + '%';

          update_file_progress(id, percentStr);
        },
        onUploadSuccess: function(id, data){
          add_log('Upload of file #' + id + ' completed');
          
          add_log('Server Response for file #' + id + ': ' + JSON.stringify(data));
          
          update_file_status(id, 'success', 'Upload Complete');
          
          update_file_progress(id, '100%');
        },
        onUploadError: function(id, message){
          add_log('Failed to Upload file #' + id + ': ' + message);
          
          update_file_status(id, 'error', message);
        },
        onFileTypeError: function(file){
          add_log('File \'' + file.name + '\' cannot be added: must be an image');
          
        },
        onFileSizeError: function(file){
          add_log('File \'' + file.name + '\' cannot be added: size excess limit');
        },
        /*onFileExtError: function(file){
          $.danidemo.addLog('#demo-debug', 'error', 'File \'' + file.name + '\' has a Not Allowed Extension');
        },*/
        onFallbackMode: function(message){
          alert('Browser not supported(do something else here!): ' + message);
        }
      });
    </script>

  </body>
</html>
