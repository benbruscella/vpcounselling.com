<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
	<head>
		<% base_tag %>
		<link rel="stylesheet" type="text/css" href="tutorial/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="tutorial/css/typography.css" />
		<link rel="stylesheet" type="text/css" href="tutorial/css/form.css" />
	</head>
	<body>	
	<div id="Header">
		<div id="HeaderContainer">
			<div id="Logo">
				<a href="/"><img src="themes/vp/images/logo.png" alt="VP Counselling" /></a>
			</div>
			<h2>
				Vas Petrovski<br/>
				Psychotherapist/Counsellor<br/>
				Bachelor Of Arts, Grad.Dip (Counselling)<br/>
				Grad.Dip (Soc.Sci/Gestalt Therapy), MGANZ
			</h2>
		</div>
	</div>
	<div id="Menu1">
		<ul id="menu">
		 	<% control Menu(1) %>	  
		  		<li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode"><span>$MenuTitle.XML</span></a></li>
		   	<% end_control %>
		 </ul>
	</div>
		<div id="Main">
			<div id="ContentContainer">
				<div id="Content" class="typography">
					$Layout
				</div>
			</div>
			<div id="Footer">
				<span><a href="/admin" title="Admin Page">Login</a> | <a href="http://mail.vpcounselling.com" title="Email">Email</a></span>
			</div>
		</div>
		$SilverStripeNavigator
	</body>
</html>
