<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Main Page..</title>
<meta name="keywords" content="Holiday, free CSS template, clean, neat, aqua, white" />
<meta name="description" content="Holiday is a clean and neat free CSS template using aqua and white colors." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<%@ include file="statusbar.html" %>
<style type="text/css">
<!--
.style4 {
	color: #9933FF;
	font-size: 25px;
}
.style12 {color: #6633FF;
	font-size: 24px;
}
.style19 {color: #009900}
.style22 {color: #00CC00}
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style24 {font-size: 28px}
.style3 {color: #FF00FF}
-->
</style>
</head>
<body>



<div id="templatemo_main">
	
    <div class="col_w600 float_l">
    	<div class="content_box">
            <h2><span class="style23"><span class="style24">Welcome  User</span><span class="style12"> <span class="style19"><span class="style22"><%=(String)application.getAttribute("uname")%> </span></span><span class="style3">..</span></span></span></h2>
            <div class="image_wrapper image_fl"><span></span>
                <img src="images/templatemo_image_01.jpg" alt="Image" />
            </div>
            <p align="justify"><strong>Social network data can help with obtaining valuable insight into social behaviors and revealing the underlying benefits. New big data technologies are emerging to make it easier to discover meaningful social information from market analysis to counterterrorism. Unfortunately, both diverse social datasets and big data technologies raise stringent privacy concerns. Adversaries can launch inference attacks to predict sensitive latent information which is unwilling to be published by social users. Therefore, there is a tradeoff between data benefits and privacy concerns. In this paper, we investigate how to optimize the tradeoff between latent-data privacy and customized data utility. We propose a data sanitization strategy that does not greatly reduce the benefits brought by social network data, while sensitive latent information can still be protected. Even considering powerful adversaries with optimal inference attacks, the proposed data sanitization strategy can still preserve both data benefits and social structure, while guaranteeing optimal latent-data privacy. To the best of our knowledge, this is the first work that preserves both data benefits and social structure simultaneously and combats against powerful adversaries.</strong></p>
            <div class="cleaner"></div>
	  </div>
        
        <div class="cleaner"></div>
    </div>
    
    <div class="col_w300 float_r">
    	<h2>User Menu </h2>
            <p><a href="UserMain.jsp"><strong>Home</strong></a></p>
            <p><a href="UserProfile.jsp"><strong>My Profile</strong></a></p>
            <p><a href="SearchFriends.jsp"><strong>Search Friends</strong></a></p>
            <p><a href="U_CreateTweet.jsp"><strong>Create Tweets</strong></a></p>
            <p><a href="U_MyFriends.jsp"><strong>View My Friends</strong></a></p>
            <p><a href="ViewRequest.jsp"><strong>View Friend Requests</strong></a></p>
            <p><a href="SearchTweets.jsp"><strong>Search  Tweets and Comment </strong></a></p>
            <p><a href="U_PostedTweets.jsp"><strong>View My Tweets and Comments</strong></a></p>
            <p><a href="U_InferenceAttackDetails.jsp"><strong>Inference Attack on My Tweets</strong></a></p>
            <p><a href="U_FriendsTweets.jsp"><strong>View Friends Tweets and Re-Tweet</strong></a></p>
            <p><a href="index.html"><strong>Log Out</strong></a></p>
          <p class="news_box"><a href="#"></a></p>
      <h2 class="news_box">&nbsp;</h2>
  </div>
    <div class="cleaner"></div>
</div> <!-- end of main -->

<div id="templatemo_footer_wrapper_01">
	<div id="templatemo_footer_wrapper_02">
   	  <div id="templatemo_footer"></div>
	</div> <!-- end of footer wrapper -->
</div> <!-- end of footer wrapper 01 -->
</body>
</html>