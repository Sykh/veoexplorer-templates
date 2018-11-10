<html>
<head><title>Lazy block explorer</title></head>
<link rel="stylesheet" type="text/css" href="templates/mystyle.css">
{% if pools.blocks %}
<meta http-equiv="refresh" content="300">
{% endif %}
<body>
<div id="wrapper">
<div id="logo"><a href="index.php"><img src="files/logo.png"></a></div>
<div id="main">
	height {{ current_height }} | market cap {{ market_cap }} VEO<br>
	<a href="?input=oracles_gov">Governance Oracles</a> | <a href="?input=oracles_asks">Question Oracles</a>
	<form>
		Pubkey, height or TXID: <input name="input" value="{{ input }}" size="88"> <input type="submit" value="Search">
	</form>
</div>
<div id="error">{{ error }}</div>
<div id="result">
	{% if block %}
		{{include("block.tpl")}}
	{% endif %}
	{% if tx %}
		{{include("tx.tpl")}}
	{% endif %}
	{% if pubkey %}
        {{include("pubkey.tpl")}}
    {% endif %}
	{% if pools.blocks %}
		{{include("lastBlocks.tpl")}}
	{% endif %}
	{% if oracle %}
		{{include("oracle_single.tpl")}}
	{% endif %}
	{% if oracles_gov %}
		{{include("oracles_gov.tpl")}}
	{% endif %}
	{% if oracles_asks %}
		{{include("oracles_asks.tpl")}}
	{% endif %}
</div>
</div>
</body>
</html>
