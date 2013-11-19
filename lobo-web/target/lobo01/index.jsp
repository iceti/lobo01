<html>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<style>
* {
	font-family: verdana;
	font-size: 14px !important;
	font-color: black;
}
</style>
<script type="text/javascript" src="scripts/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="scripts/JSON.js"></script>
<script type="text/javascript" src="scripts/frontlogic.js"></script>
</HEAD>
<body>
	<div style="float: right; margin: 10 10 10 10;">
		<img src="images/delivery_boy.jpg" />
	</div>
	<div id="commands"
		style="border: 1px solid black; padding: 5px; word-wrap: break-word;">
		<b style="text-decoration:underline;">User Notification Commands:</b><br />
		<ul>
			<li>(*1) --
				send/{countryCode}/{brandId}/({channelType},{channelAddress})-...-({channelType},{channelAddress})/{notificationId}</li>
			<li>(*1) --
				send/{countryCode}/{brandId}/({channelType},{channelAddress})-...-({channelType},{channelAddress})/{notificationId}/{version}</li>
			<li>(*2) -- send/{operationId}</li>
			<li>(*1) --
				prepare/{countryCode}/{brandId}/({channelType},{channelAddress})-...-({channelType},{channelAddress})/{notificationId}</li>
			<li>(*1) --
				prepare/{countryCode}/{brandId}/({channelType},{channelAddress})-...-({channelType},{channelAddress})/{notificationId}/{version}</li>
			<li>(*1) -- retrieve/{countryCode}/{brandId}/{operationId} (from
				send operation)</li>
			<li>(*3) -- status/{operationId}</li>
			<li>(*3) -- trackingInformation/{operationId}</li>
			<li>(*3) --
				trackingResource/{operationId}/{channelType}/{channelAddress}</li>
			<li>(*3) -- trackingResource/{operationId}/{resourceName}</li>
			<li>(*1) -- errors/{operationId}/{channels}</li>
		</ul>
		<br /> (*1) - operation may be executed on external provider. <br />
		(*2) - resend a sended notification or send a prepared notification <br />
		(*3) - local operation . <br /> <br /> channelType=SMS / EMAIL /
		TWITTER (non working) <br /> <br /> <b style="text-decoration:underline;">Examples:</b> <br />
		<ul>
			<li>send/BR/0/(SMS,541199999999)/TEST1</li>
			<li>send/BR/0/(EMAIL,mail@decolar.com)/TEST1</li>
			<li>send/BR/0/(SMS,541199999999)-(EMAIL,mail@decolar.com)/TEST1</li>
			<li>send/BR/0/(SMS,541199999999)-(EMAIL,mail@decolar.com)-(TWITTER,@diego)/TEST1</li>
			<li>send/BR/0/(SMS,541199999999)-(EMAIL,mail@decolar.com)-(TWITTER,@diego)/TEST1/1</li>
			<li>send/BR/0/(SMS,541199999999)-(EMAIL,mail@decolar.com)-(TWITTER,@diego)/TEST1/2</li>
			<li>send/2012052315-112210f4-c023-b6d3-0db4-da5f7ef412b1</li>
			<li>prepare/BR/0/(SMS,541199999999)/TEST1</li>
			<li>prepare/BR/0/(EMAIL,mail@decolar.com)/TEST1</li>
			<li>prepare/BR/0/(SMS,541199999999)-(EMAIL,mail@decolar.com)/TEST1</li>
			<li>prepare/BR/0/(SMS,541199999999)-(EMAIL,mail@decolar.com)-(TWITTER,@diego)/TEST1</li>
			<li>prepare/BR/0/(SMS,541199999999)-(EMAIL,mail@decolar.com)-(TWITTER,@diego)/TEST1/1</li>
			<li>retrieve/BR/0/1234567</li>
			<li>status/2012053020-46a2310d-f9cd-4fb8-8bf6-17b6fe3fb292</li>
			<li>trackingInformation/2012052315-112210f4-c023-b6d3-0db4-da5f7ef412b1</li>
			<li>trackingResource/2012052315-112210f4-c023-b6d3-0db4-da5f7ef412b1/SMS/541199999999</li>
			<li>trackingResource/2012052315-112210f4-c023-b6d3-0db4-da5f7ef412b1/EMAIL/mail@decolar.com</li>
			<li>trackingResource/2012052315-112210f4-c023-b6d3-0db4-da5f7ef412b1/resource.xyz</li>
			<li>errors/2012080215-0322afa1-b5f0-426b-ba41-081ea6c64cb2/(EMAIL,saraza1@despegar.com)</li>
		</ul>
	</div>
	<br /> http://.../uns-service/service/userNotificationJsonController/
	<input type="text" id="url" value="" style="width: 500px;" />
	<br />
	<br />
	<input type="Button" id="execute" value="Execute" />
	<div id="response"></div>
</body>
</html>