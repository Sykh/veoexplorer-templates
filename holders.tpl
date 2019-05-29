<h3>Top 100 Holders</h3>
<table class="block_overview">
	<tr>
		<th>#</th>
		<th>Pubkey</th>
		<th>Balance</th>
		<th>%</th>
		<th>Comment</th>
		</tr>
	{% for holder in holders %}
		<tr>
			<td>{{ loop.index }}</td>
			<td><a href="index.php?input={{ holder.pubkey }}">{{ holder.pubkey }}</a></td>
			<td>{{ holder.balance }}</td>
			<td>{{ holder.quote }}</td>
			<td>{{ holder.alias }}</td>
		</tr>
	{% endfor %}
</table>

	
