<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.ekthasol.asurance.models.FullDetails"%>
<!DOCTYPE html>
<html>
<head>
<!--   <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.css">
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap-theme.css">
        <script src="bower_components/jquery/dist/jquery.js"></script>
        <script src="bower_components/bootstrap/dist/js/bootstrap.js"></script> -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background-color: #f0f0f0;
	float: center;
}

hr.style13 {
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px #8c8b8b inset;
}

hr.style14 {
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -moz-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -ms-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -o-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	width: 830px;
	margin-left: 10px;
}

hr.style15 {
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -moz-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -ms-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -o-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	/*width: 830px;
              margin-left: 10px;*/
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" id="scrollNabar">
		<h2 style="text-align: center; color: red">Asurance</h2>
	</nav>
	<div id="navbar"></div>
	<div class="container" style="margin-top: 86px;">
		<span style="color: #ffb84d; font-size: 35px;"><strong>Here's
				your quote!</strong></span><br>
		<%
			FullDetails fullDetails = (FullDetails) session.getAttribute("fullDetails");
			if (fullDetails != null) {
		%>
		<!-- <form method="post" action="saveQuote"> -->
		<label style="font-size: 35px;">Quote for 6 Months</label><br> <label
			id="qtAmt${fullDetails.getQuote().getQuoteAmount()}"
			class="quoteAmount" name="quoteAmount" style="font-size: 35px;">$${fullDetails.getQuote().getQuoteAmount()
			}</label> <label class="quoteId" style="visibility: hidden;">${fullDetails.getQuote().getQuoteId() }</label>
		<hr class="style13" style="margin-top: 25px;">

		<div class="row">
			<div class="btn-group btn-group-lg">
				<input type="submit" class="btn btn-md btn-primary submit"
					value="Continue to Buy">
			</div>

		</div>
		<h3 style="color: #3884C9;">
			<Strong>Policy Coverages</Strong>
		</h3>

		<!-- Liability BI/PD plan -->
		<div>
			<span style="margin-left: 25px;">Liability(BI/PD) <large>
				<span class="glyphicon glyphicon-question-sign"></span></large></span>
			<div class="btn-group btn-group-lg" style="margin-left: 360px;"
				data-toggle="modal" data-target="#myModal">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="liabilitySelection" style="margin-left: 40px; color: grey;">$25k/$50k/$25k</span>
			<span id="lbAmt${fullDetails.getQuote().getLiability() }"
				class="liabilityAmount" name="liability"
				style="margin-left: 80px; color: grey;">$${fullDetails.getQuote().getLiability()
				}</span>
		</div>

		<hr class="style14">

		<!-- Uninsured Motoroist BI plan -->
		<div>
			<span style="margin-left: 25px;">Uninsured Motorist BI<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 320px;"
				data-toggle="modal" data-target="#myModal1">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="uninsuredSelection" style="margin-left: 40px; color: grey;">No
				coverage</span> <span id="uninAmt${fullDetails.getQuote().getUnInsured() }"
				class="uninAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getUnInsured()}</span>
		</div>

		<hr class="style14">

		<!-- UnderInsured Motorist BI plan -->
		<div>
			<span style="margin-left: 25px;">Underinsured Motorist BI<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 300px;"
				data-toggle="modal" data-target="#myModal2">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="underinsuredSelection"
				style="margin-left: 40px; color: grey;">No coverage</span> <span
				id="underinAmt${fullDetails.getQuote().getUnderInsured() }"
				class="underinAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getUnderInsured()}</span>
		</div>

		<hr class="style14">


		<!-- Uninsured Motorist PD Plan -->

		<div>
			<span style="margin-left: 25px;">Uninsured Motorist PD<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 312px;"
				data-toggle="modal" data-target="#myModal3">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="uninsuredMotoristSelection"
				style="margin-left: 40px; color: grey;">No coverage</span> <span
				id="unInAmt${fullDetails.getQuote().getUnInsuredPD() }"
				class="underinPDAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getUnInsuredPD()}</span>
		</div>

		<hr class="style14">

		<!-- Personal Injury Plan -->

		<div>
			<span style="margin-left: 25px;">Personal Injury Protection<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 290px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal4">Edit</button>
			</div>
			<span id="personalInjurySelection"
				style="margin-left: 40px; color: grey;">No coverage</span> <span
				id="personalInjAmt${fullDetails.getQuote().getInjuryProtection() }"
				class="personalAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getInjuryProtection()}</span>
		</div>

		<hr class="style14">

		<!-- Comphrenesive plan -->

		<h3 style="margin-left: 25px; color: #3884C9;">
			<strong>${fullDetails.getVehicle().getYear() }
				${fullDetails.getVehicle().getMake() }
				${fullDetails.getVehicle().getModel() } Coverages</strong>
		</h3>

		<div>
			<span style="margin-left: 25px;">Comprehensive<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 360px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal5">Edit</button>
			</div>
			<span id="compSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span
				id="cpAmt${fullDetails.getQuote().getComprehensive() }"
				class="compAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getComprehensive()}</span>
		</div>

		<hr class="style14">

		<!-- 	Collison Plan -->

		<div>
			<span style="margin-left: 25px;">Collision<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 400px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal6">Edit</button>
			</div>
			<span id="collSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span id="clAmt${fullDetails.getQuote().getCollision() }"
				class="collAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getCollision()}</span>
		</div>

		<hr class="style14">

		<!-- Rental Plan -->

		<div>
			<span style="margin-left: 25px;">Rental<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 410px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal7">Edit</button>
			</div>
			<span id="rentSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span id="rtAmt${fullDetails.getQuote().getRental() }"
				class="rentAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getRental()}</span>
		</div>

		<hr class="style14">

		<!-- RoadSide Plan -->

		<div>
			<span style="margin-left: 25px;">Roadside<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 390px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal8">Edit</button>
			</div>
			<span id="roadSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span id="rdAmt${fullDetails.getQuote().getRoadSide() }"
				class="roadAmount" style="margin-left: 120px; color: grey;">$${fullDetails.getQuote().getRoadSide()}</span>
		</div>

		<hr class="style14">


		<div class="btn-group btn-group-lg">
			<input type="submit" class="btn btn-md btn-primary submit"
				value="Continue to Buy">
		</div>


		<hr class="colorgraph">


		<div class="row">
			<div class="col-sm-4">
				<button class="btn btn-md btn-primary" id="backBtn">Back</button>


			</div>
			<div class="col-sm-4">
				<a class="btn btn-md btn-primary" href="/Asurance">Cancel</a>
			</div>
			<div class="col-sm-4">
				<input type="submit" class="btn btn-md btn-primary save"
					value="Save & Exit">
			</div>

		</div>
		<!-- </form> -->
		<%
			} else {
		%>
		<!-- <form method="post" action="saveQuote"> -->
		<label style="font-size: 35px;">Quote for 6 Months</label><br> <label
			id="qtAmt${quote.getQuoteAmount() }" class="quoteAmount"
			name="quoteAmount" style="font-size: 35px;">$${quote.getQuoteAmount()
			}</label> <label class="quoteId" style="visibility: hidden;">${quote.getQuoteId() }</label>
		<hr class="style13" style="margin-top: 25px;">

		<div class="row">
			<div class="btn-group btn-group-lg">
				<input type="submit" class="btn btn-md btn-primary submit"
					value="Continue to Buy">
			</div>

		</div>
		<h3 style="color: #3884C9;">
			<Strong>Policy Coverages</Strong>
		</h3>

		<!-- Liability BI/PD plan -->
		<div>
			<span style="margin-left: 25px;">Liability(BI/PD) <large>
				<span class="glyphicon glyphicon-question-sign"></span></large></span>
			<div class="btn-group btn-group-lg" style="margin-left: 360px;"
				data-toggle="modal" data-target="#myModal">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="liabilitySelection" style="margin-left: 40px; color: grey;">$25k/$50k/$25k</span>
			<span id="lbAmt${quote.getLiability() }" class="liabilityAmount"
				name="liability" style="margin-left: 80px; color: grey;">$${quote.getLiability()
				}</span>
		</div>

		<hr class="style14">

		<!-- Uninsured Motoroist BI plan -->
		<div>
			<span style="margin-left: 25px;">Uninsured Motorist BI<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 320px;"
				data-toggle="modal" data-target="#myModal1">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="uninsuredSelection" style="margin-left: 40px; color: grey;">No
				coverage</span> <span id="uninAmt0" class="uninAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">

		<!-- UnderInsured Motorist BI plan -->
		<div>
			<span style="margin-left: 25px;">Underinsured Motorist BI<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 300px;"
				data-toggle="modal" data-target="#myModal2">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="underinsuredSelection"
				style="margin-left: 40px; color: grey;">No coverage</span> <span
				id="underinAmt0" class="underinAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">


		<!-- Uninsured Motorist PD Plan -->

		<div>
			<span style="margin-left: 25px;">Uninsured Motorist PD<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 312px;"
				data-toggle="modal" data-target="#myModal3">
				<button type="button" class="btn btn-default">Edit</button>
			</div>
			<span id="uninsuredMotoristSelection"
				style="margin-left: 40px; color: grey;">No coverage</span> <span
				id="unInAmt0" class="underinPDAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">

		<!-- Personal Injury Plan -->

		<div>
			<span style="margin-left: 25px;">Personal Injury Protection<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 290px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal4">Edit</button>
			</div>
			<span id="personalInjurySelection"
				style="margin-left: 40px; color: grey;">No coverage</span> <span
				id="personalInjAmt0" class="personalAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">

		<!-- Comphrenesive plan -->

		<h3 style="margin-left: 25px; color: #3884C9;">
			<strong>${selectedVehicle.getYear() }
				${selectedVehicle.getMake() } ${selectedVehicle.getModel() }
				Coverages</strong>
		</h3>

		<div>
			<span style="margin-left: 25px;">Comprehensive<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 360px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal5">Edit</button>
			</div>
			<span id="compSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span id="cpAmt0" class="compAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">

		<!-- 	Collison Plan -->

		<div>
			<span style="margin-left: 25px;">Collision<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 400px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal6">Edit</button>
			</div>
			<span id="collSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span id="clAmt0" class="collAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">

		<!-- Rental Plan -->

		<div>
			<span style="margin-left: 25px;">Rental<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 410px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal7">Edit</button>
			</div>
			<span id="rentSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span id="rtAmt0" class="rentAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">

		<!-- RoadSide Plan -->

		<div>
			<span style="margin-left: 25px;">Roadside<span
				class="glyphicon glyphicon-question-sign"></span></span>
			<div class="btn-group btn-group-lg" style="margin-left: 390px;">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal8">Edit</button>
			</div>
			<span id="roadSelection" style="margin-left: 40px; color: grey;">No
				Coverage</span> <span id="rdAmt0" class="roadAmount"
				style="margin-left: 120px; color: grey;">$0</span>
		</div>

		<hr class="style14">


		<div class="btn-group btn-group-lg">
			<input type="submit" class="btn btn-md btn-primary submit"
				value="Continue to Buy">
		</div>


		<hr class="colorgraph">


		<div class="row">
			<div class="col-sm-4">
				<button class="btn btn-md btn-primary" id="backBtn">Back</button>


			</div>
			<div class="col-sm-4">
				<a class="btn btn-md btn-primary" href="/Asurance">Cancel</a>
			</div>
			<div class="col-sm-4">
				<input type="submit" class="btn btn-md btn-primary save"
					value="Save & Exit">
			</div>

		</div>
		<!-- </form> -->
		<%
			}
		%>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Liability(BI/PD)</h4>
					</div>


					<div class="modal-body">
						<p>We pay the costs that you are responsible for, up to the
							limit you choose, as a result of an accident. If you are sued,
							we pay for a lawyer to defend you.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="Recommended" id="recommend"><strong>Recommended</strong></label>
							<span style="margin-left: 240px;" class="liabilityOption">+$46</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$50k/$100k/$25k" id="50k">$50k/$100k/$25k</label> <span
								style="margin-left: 240px;" class="liabilityOption">+$35</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$50k/$100k/$50k" id="100k">$50k/$100k/$50k</label> <span
								style="margin-left: 220px; color: #ffb84d"
								class="liabilityOption"><strong>Current</strong></span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$100/$300k/$50k" id="300k">$100k/$300k/$50k</label> <span
								style="margin-left: 240px;" class="liabilityOption">+$84</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$100/$300k/$100k" id="100k-300k">$100k/$300k/$100k</label>
							<span style="margin-left: 235px;" class="liabilityOption">+$87</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$250/$500k/$100k" id="250k">$250k/$500k/$100k</label> <span
								style="margin-left: 230px;" class="liabilityOption">+$197</span>
						</div>

						<hr class="style15">

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="liability">Update</button>
					</div>
				</div>

			</div>
		</div>
		<div class="modal fade" id="myModal1" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Uninsured
							Motorist BI</h4>
					</div>


					<div class="modal-body">
						<p>We pay for medical expenses and in some cases other
							benefits up to the limit you choose, for you and your passengers,
							when you are in an accident caused by a driver who has no
							insurance.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No
									coverage" id="noCoverage">No
								coverage</label> <span style="margin-left: 240px;"
								class="uninsuredOption">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="Recommended" id="recommended">Recommended</label> <span
								style="margin-left: 240px;" class="uninsuredOption">+$25</span>
							<h5 style="margin-left: 20px;">$25k/$50k</h5>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="uninsuredMotorist">Update</button>
					</div>
				</div>

			</div>
		</div>
		<div class="modal fade" id="myModal2" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Underinsured
							Motorist BI</h4>
					</div>


					<div class="modal-body">
						<p>We pay for medical expenses and in some cases other
							benefits up to the limit you choose, for you and your passengers,
							when you are in an accident caused by a driver who doesn't
							have enough insurance to cover these expenses.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No Coverage" id="current">No coverage</label> <span
								style="margin-left: 240px;" class="underinsuredOption">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="Recommended" id="recommended25k"><strong>Recommended</strong></label>
							<span style="margin-left: 240px;" class="underinsuredOption">+$35</span>
							<h5 style="margin-left: 20px;">$25k/$50k</h5>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="underInsuredBI">Update</button>
					</div>
				</div>

			</div>
		</div>
		<div class="modal fade" id="myModal3" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Uninsured
							Motorist PD</h4>
					</div>


					<div class="modal-body">
						<p>We pay to repair damage to your vehicle caused by a driver
							who doesnât have insurance.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No Coverage" id="unInsuredNoCoverage">No coverage</label>
							<span class="unInsuredMotoristOption" style="margin-left: 240px;">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="Recommended" id="unInsuredRecommended"><strong>Recommended</strong></label>
							<span class="unInsuredMotoristOption" style="margin-left: 240px;">+$25</span>
							<!-- <h5 style="margin-left: 20px;">$25k/$50k</h5> -->
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="unInsuredMotoristPD">Update</button>
					</div>
				</div>

			</div>
		</div>
		<div class="modal fade" id="myModal4" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Personal
							Injury Protection</h4>
					</div>


					<div class="modal-body">
						<p>We pay for medical expenses, lost wages, and, in some
							cases, other benefits if you are injured or killed as a result of
							an accident, no matter who âs at fault.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No
									coverage" id="personalInjuryCurrent">No
								coverage</label> <span class="personalInjuryOption"
								style="margin-left: 240px;">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$5k Accidental death" id="personalInjury5k">$5k
								Accidental death</label><span class="personalInjuryOption"
								style="margin-left: 240px;">+$50</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$5k Accidental death & Income disability"
								id="personalInjury5k">$5k Accidental death & Income
								disability</label><span class="personalInjuryOption"
								style="margin-left: 200px;">+$65</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$5k Medical Hospital & Accidental death"
								id="personalInjuryMedical">$5k Medical Hospital &
								Accidental death</label><span class="personalInjuryOption"
								style="margin-left: 200px;">+$75</span>
						</div>


					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="personalInjury">Update</button>
					</div>
				</div>

			</div>
		</div>
		<div class="modal fade" id="myModal5" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Comprehensive</h4>
					</div>


					<div class="modal-body">
						<p>We pay to repair damage to your car that’s caused by
							something other than a collision, such as fire, theft, vandalism,
							hail, flood, or hitting an animal.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No coverage" id="noCompCoverage">No coverage</label> <span
								style="margin-left: 240px;" class="compOption">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$100 deductible" id="100">$100 deductible</label> <span
								style="margin-left: 240px;" class="compOption">+$140</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$200 deductible" id="200">$200 deductible</label> <span
								style="margin-left: 240px;" class="compOption">+$108</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$500 deductible" id="500">$500 deductible</label> <span
								style="margin-left: 240px;" class="compOption">+$86</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$1000 deductible" id="1000">$1000 deductible</label> <span
								style="margin-left: 240px;" class="compOption">+$54</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$2000 deductible" id="2000">$2000 deductible</label> <span
								style="margin-left: 240px;" class="compOption">+$34</span>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="comprehensive">Update</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal6" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Collision</h4>
					</div>


					<div class="modal-body">
						<p>We pay to repair damage to your car when you hit, or are
							hit by, another vehicle or object, regardless of who’s at fault.
							We also pay expenses related to injuries or the death of pets
							traveling with you.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No coverage" id="noCollisionCoverage">No coverage</label>
							<span style="margin-left: 240px;" class="collOption">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$100 deductible" id="100coll">$100 deductible</label> <span
								style="margin-left: 240px;" class="collOption">+$401</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$200 deductible" id="200coll">$200 deductible</label> <span
								style="margin-left: 240px;" class="collOption">+$294</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$500 deductible" id="500coll">$500 deductible</label> <span
								style="margin-left: 240px;" class="collOption">+$234</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$1000 deductible" id="1000coll">$1000 deductible</label>
							<span style="margin-left: 240px;" class="collOption">+$155</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$2000 deductible" id="2000coll">$2000 deductible</label>
							<span style="margin-left: 240px;" class="collOption">+$105</span>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="collision">Update</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal7" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Rental</h4>
					</div>


					<div class="modal-body">
						<p>We pay for your rental car up to the limit you choose,
							while your vehicle is being repaired. You can buy Rental
							Reimbursement if you have Comprehensive and Collision coverage.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No Coverage" id="noRentalCoverage">No coverage</label> <span
								style="margin-left: 240px;" class="rentOption">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$30 per day" id="30rent">$30 per day<br></label> <span
								style="margin-left: 240px;" class="rentOption">+$30</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$40 per day" id="40rent">$40 per day<br></label> <span
								style="margin-left: 240px;" class="rentOption">+$40</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="$50 per day" id="50rent">$50 per day<br></label> <span
								style="margin-left: 240px;" class="rentOption">+$50</span>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="rental">Update</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal8" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: #ffb84d">Roadside</h4>
					</div>


					<div class="modal-body">
						<p>We pay for certain roadside repairs or towing services when
							your vehicle breaks down due to mechanical or electrical issues,
							a dead battery, a flat tire, a lock-out, or if you run out of
							gas.</p>
						<br>
						<hr class="style13">
						<span><strong>Coverage</strong></span> <span
							style="color: grey; margin-left: 200px;"><strong>Change
								in Premium</strong></span>
						<h5 style="margin-left: 310px;">
							<strong>For 6 months</strong>
						</h5>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="No Coverage" id="noRoadCoverage">No coverage</label> <span
								style="margin-left: 240px;" class="roadOption">Current</span>
						</div>

						<hr class="style15">

						<div class="radio">
							<label><input type="radio" name="optradio"
								value="Coverage selected" id="coverageSelected">Coverage
								selected</label> <span style="margin-left: 240px;" class="roadOption">+$24</span>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="roadside">Update</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document)
				.ready(
						function() {

							$("#navbar")
									.load(
											'/Asurance/public/app/templates/navbar-for-quote.html');
							$(window).scroll(function() {
								if ($(this).scrollTop() > 150) {
									$('#navbar').css({
										'display' : 'none'
									});
									$("#scrollNabar").show();
								} else {

									$("#scrollNabar").hide();
									$('#navbar').show();
								}
							});
							$("#backBtn").click(function() {
								window.location.href = "addDriver"
							});
						});
	</script>
	<script src="public/app/js/premium.js"></script>
	<!--  <script src="../js/premium.js"></script>  -->
</body>
</html>