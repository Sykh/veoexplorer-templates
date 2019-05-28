<table class="result_table">
	<tr><th>Pubkey:</th><td>{{input }}</td></tr>
	<tr><th>Mined Blocks:</th><td>{{ mined }}</td></tr>
	<tr><th>VEO Received:</th><td>{{ received }}</td></tr>
	<tr><th>VEO Spend:</th><td>{{ spend }}</td></tr>
	<tr><th>Balance:</th><td>{{ balance }}</td></tr>
</table>

<h3>Last 100 transactions for {{ input }}</h3>
<table class="result_table">
	<tr>
		<th>#</th>
		<th>Height</th>
		<th>UTC Time</th>
		<th>Type</th>
		<th>From</th>
		<th>To</th>
		<th>Amount</th>
		<th>Fee</th>
	</tr>
	{% for tx in pubkey.txs %}
	<tr>
		<td>{{ loop.index }}</td>
		<td><a href="?input={{ tx.height }}">{{ tx.height }}</a></td>
		<td>{{ tx.date }}</td>
		<td>{{ tx.type }}</td>
		<td>
			{%if tx.type != "coinbase" %}
				<a href="index.php?input={{ tx.pubkey_from }}">{{ tx.pubkey_from[:30] }}</a>
			{% endif %}
		</td>
		<td><a href="index.php?input={{ tx.pubkey_to }}">{{ tx.pubkey_to[:30] }}</a></td>
		<td>{{ tx.amount }}</td>
		<td>{{ tx.fee }}</td>
	</tr>
	{% endfor %}
</table>
