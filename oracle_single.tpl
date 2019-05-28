<h3>Oracle Data {{ oracle.id }}</h3>
<table class="block_overview">
	<tr><th>Created in block:</th><td>{{ oracle.height }}</td></tr>
    <tr><th>Created at:</th><td>{{ oracle.date }}</td></tr>
    <tr><th>Closeable at height:</th><td>{{ oracle.end_height }}</td></tr>
    {% if oracle.end_height %}
        <tr><th>Closed at:</th><td>{{ oracle.closed }}</td></tr>
    {% endif %}
    {% if oracle.gov_var %}
        <tr><th>Change Governance:</th><td>{{ oracle.gov_var }} by {{ oracle.gov_change }}%</td></tr>
    {% endif %}
	{% if oracle.text %}
        <tr><th>Question:</th><td>{{ oracle.text }}</td></tr>
    {% endif %}
	<tr><th>State:</th><td>{{ oracle.state }}</td></tr>
    <tr><th>VEO unmatched:</th><td>{{ oracle.amount }}</td></tr>    
</table>
{% if oracle.txs %}
<h3>Transactions</h3>
	<table>
		<tr>
			<th>#</th>            
			<th>Height</th>
            <th>Type</th>
			<th>From</th>
			<th>Amount</th>
			<th>State</th>
		</tr>
	{% for tx in oracle.txs %}
		<tr>
			<td>{{ loop.index }}</td>
            <td>{{ tx.height }}</td>
			<td>{{ tx.type }}</td>
			<td><a href="index.php?input={{ tx.pubkey_from }}">{{ tx.pubkey_from[:30] }}</a></td>
			<td>{{ tx.amount }}</td>
			<td>{{ tx.state }}</td>
		</tr>
	{% endfor %}
	</table>
{% else %}
<h3>No Transactions</h3>
{% endif %}

	
