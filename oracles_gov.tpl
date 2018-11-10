<h3>Last 100 governance oracles</h3>
<table class="block_overview">
	<tr>
        <th>#</th>
        <th>Height</th>
        <th>UTC</th>
        <th>ID</th>
        <th>Variable</th>
        <th>Change</th>
        <th>State</th>
        <th>Unmatched</th>
        <th>Closed at Block</th>        
    </tr>
    {% for oracle in oracles_gov %}
    <tr>
        <td>{{ loop.index }}</td>
        <td>{{ oracle.height }}</td>        
        <td>{{ oracle.date }}</td>
        <td><a href="?input={{ oracle.id }}">{{ oracle.id }}</a></td>
        <td>{{ oracle.gov_var }}</td>
        <td>{{ oracle.gov_change }}%</td>
        <td>{{ oracle.state }}</td>
        <td>{{ oracle.amount }}</td>
        {% if oracle.closed %}
            <td bgcolor="red">closed ({{ oracle.closed }})</td>
        {% elseif current_height > oracle.end_height %}
            <td bgcolor="green">closeable ({{ oracle.end_height }})</td>
        {% else %}
            <td>open ({{ oracle.end_height }})</td>
        {% endif %}
    </tr>
    {% endfor %}
</table>