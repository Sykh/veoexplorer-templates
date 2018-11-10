<h3>TX Hash {{ tx.id }}</h3>
<table class="result_table">
	<tr>
		<th>Height</th>
		<th>UTC Time</th>
		<th>Type</th>
		<th>From</th>
		<th>To</th>
		<th>Amount</th>
	</tr>
	{% for tx in txs %}
	<tr>
		<td><a href="?input={{ tx.height }}">{{ tx.height }}</a></td>
		<td>{{ tx.date }}</td>
		<td>{{ tx.type }}</td>
                <td><a href="?input={{ tx.pubkey_from }}">{{ tx.pubkey_from[:30] }}</a></td>
                <td><a href="?input={{ tx.pubkey_to }}">{{ tx.pubkey_to[:30] }}</a></td>
                <td>{{ tx.amount }}</td>
	</tr>
	{% endfor %}
</table>
