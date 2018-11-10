<h3>{{ blocks24h }} blocks in {{ daysToGet  }}</h3>
<div id="pools">
<form method="get">
<p>Look at the past <input name="daysToGet" size="2"> days (14 max) <inputt type="submit" value="go"></p>
<table>
	<tr>
		<th>Blocks</th>
		<th>Quote</th>
		<th>Name</th>
		<th>Pubkey</th>
		<th>Hashrate TH/s</th>
	</tr>
	<tr>
	{% for pool in pools.finds %}
	<tr>
		<td>{{ pool.blocks }}</td>
		<td>{{ pool.quote}}%</td>
		<td>{{ pool.name }}</td>
		<td><a href="?input={{ pool.pubkey }}">{{ pool.pubkey }}</a></td>
		<td>{{ pool.hashrate }}</td>
	</tr>
	{% endfor %}
	<tr>
		<th>{{ blocks24h }}</th>
                <th></th>
                <th></th>
                <th></th>
                <th>{{ totalHashrate }}</th>
	</tr>
</table>
</div>
<br>
<div id="blocklist">
<table>
	<tr>
		<th>Height</th>
		<th>UTC Time</th>
		<th>Mined by</th>
		<th>Transactions</th>
		<th>Difficulty</th>
	</tr>
	{% for block in pools.blocks %}
	<tr>
		<td><a href="?input={{ block.height }}">{{ block.height }}</a></td>
		<td>{{ block.date }}</td>
		<td bgcolor="{{ block.color }}">{{ block.finder }}</td>
		<td>{{ block.transactions }}</td>
		<td>{{ block.diff }}</td>
	</tr>
	{% endfor %}
</table>
</div>
