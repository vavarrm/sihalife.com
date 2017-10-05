<html lang="zh-cn" ng-app>
<head>
	<{include file="frontend/meta.tpl"}>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/6.0.0/normalize.min.css">
	<{include file="frontend/css.tpl"}>
	<link rel="stylesheet" href="/css/food/checkOut.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<{include file="frontend/meta.tpl"}>
    <title><{$language.website_name}></title>
</head>
<body>
	<{include file="frontend/navigation.tpl"}>
	<div class="container"  ng-controller="PersonCtrl">
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">
							<div class="row">
								<div class="col-xs-6">
									<h5><span class="glyphicon glyphicon-shopping-cart"></span><{$checkoutLanguageAry.check_out_shopcar}></h5>
								</div>
								<div class="col-xs-6">
									<button type="button" class="btn btn-primary btn-sm btn-block">
										<span class="glyphicon glyphicon-share-alt"></span><{$checkoutLanguageAry.check_out_buymore}>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div ng-repeat="itemElemen in itemElements">
						<div class="row"  >
							<div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
							</div>
							<div class="col-xs-4">
								<h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-6 text-right">
									<h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
								</div>
								<div class="col-xs-4">
									<input type="text" ng-model="unit_price" class="form-control input-sm quantity" value="1">
								</div>
								<div class="col-xs-2">
									<button type="button" class="btn btn-link btn-xs">
										<span class="glyphicon glyphicon-trash"> </span>
									</button>
								</div>
							</div>
						</div>
						<hr>
						</div>
					</div>
					<div class="panel-footer">
						<div class="row text-center">
							<div class="col-xs-9">
								<h4 class="text-right">Total <strong  >${{ total }}</strong></h4>
							</div>
							<div class="col-xs-3">
								<button type="button" class="btn btn-success btn-block">
									Checkout
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<!-- Footer -->
		<{include file="frontend/footer.tpl"}>
	</div>
    <!-- /.container -->
	<{include file="frontend/js.tpl"}>
	<script type="text/javascript">
		var PersonCtrl = function($scope){
			<!-- $scope.name = '男丁格爾'; -->
			<!-- $scope.age = 18; -->
			<!-- $scope.itemElements = getCookieJson(); -->
			var CookieJson = getCookieJson();		
			$scope.itemElements = CookieJson;
			$scope.$watch('unit_price', function(){
				<!-- console.log($scope.unit_price); -->
			});
		 
			$scope.$watch('age', function(){
				if($scope.age < 18){
					console.error('可能是謊報年齡');
				}
			});
		};
	</script>
</body>
</html>