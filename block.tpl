<h3>Block Data #{{ block.height }}</h3>
<table class="block_overview">
	<tr><th>Height:</th><td>{{ block.height }}</td></tr>
	<tr><th>Mined by:</th><td>{{ block.coinbase }}</td></tr>
	<tr><th>Blockhash:</th><td>{{ block.blockhash }}</td></tr>
	<tr><th>Value:</th><td>{{ block.amount }}</td></tr>
	<tr><th>Market Cap:</th><td>{{ block.market_cap }}</td></tr>
	<tr><th>UTC Time:</th><td>{{ block.date }}</td></tr>
	<tr><th>Diff:</th><td>{{ block.difficulty }} ({{ block.hashBlock }} per Block)</td></tr>
	{% if block.txCount %} 
		<tr><th>Transactions:</th><td>{{ block.txCount }}</td></tr>
		<tr><th>Spend:</th><td>{{ block.veoSpend }} VEO</td></tr>
		<tr><th>Fees:</th><td>{{ block.fees }} VEO</td></tr>
	{% endif %}
</table>
{% if block.txs %}
<h3>Transactions</h3>
	<table>
		<tr>
			<th>#</th>
			<th>Type</th>
			<th>From</th>
			<th>To</th>
			<th>Amount</th>
			<th>Fee</th>
			<th>Hash</th>
		</tr>
	{% for tx in block.txs %}
		<tr>
			<td>{{ loop.index }}</td>
			<td>{{ tx.type }}</td>
			<td><a href="index.php?input={{ tx.pubkey_from }}">{{ tx.pubkey_from[:30] }}</a></td>
			<td><a href="index.php?input={{ tx.pubkey_to }}">{{ tx.pubkey_to[:30] }}</a></td>
			<td>{{ tx.amount }}</td>
			<td>{{ tx.fee }}</td>
			<td><a href="?input={{ tx.txid }}">Track</a></td>
		</tr>
	{% endfor %}
	</table>
{% else %}
<h3>No Transactions</h3>
{% endif %}

	
