<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="default-src 'self' data: gap: https://ssl.gstatic.com 'unsafe-eval'; style-src 'self' 'unsafe-inline'; media-src *">
    <meta name="format-detection" content="telephone=no" charset="utf-8" >
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/index.css"/>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<title>템플릿</title>
</head>
<body>
	<div data-role="page">
        <div data-role="header">
            <h1>머릿말</h1>
        </div><!-- /header -->
        <div data-role="content">
        <label>영화예매하기</label>
	        <div  id="movie_list">
	        
	        </div>
      	</div>
        <div data-role="footer">
            <h1>아랫말</h1>
        </div>
    </div>
    <script type="text/javascript">
    	$(function(){
    		movie.list();
    	});
    	
    	var movie = {
    			list : function(){
    				$.getJSON("http://fkod51.cafe24.com/movie/movie_info",function(data){
    					var link ='<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />';
    					var js = '<script src="http://code.jquery.com/jquery-1.11.1.min.js"/>';
    					var jsMobile = '<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"/>';
    					$('head').append(link);
    					$('head').append(js);
    					$('head').append(jsMobile);
    					var list = '<ul data-role="listview">';
    					$.each(data.movieList,function(index,value){
    						list += '<li><a href="#" id="'+this.filmNumber+'">'+this.filmName+'</a></li>';
    					});
    					list +='</ul>';
    					
    					$('#movie_list').html(list);
    				});
    			}
    	};
    </script>
</body>
</html>