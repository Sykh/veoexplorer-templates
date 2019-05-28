<h3>Top 100 Holders</h3>
<table class="block_overview">
	<tr>
		<th>Pubkey</th>
		<th>Balance</th>
		<th>%</th>
		<th>Comment</th>
		</tr>
	{% for holder in holders %}
		<tr>
			<td>{{ holder.pubkey }}</td>
			<td>{{ holder.balance }}</td>
			<td>{{ holder.quote }}</td>
			<td>{{ holder.alias }}</td>
		</tr>
	{% endfor %}
</table>

	
