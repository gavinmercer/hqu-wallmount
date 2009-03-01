<style type="text/css">
table.layouts {
	border-width: 0px 0px 0px 0px;
	border-spacing: 4px;
	border-style: outset outset outset outset;
	border-color: black black black black;
	border-collapse: collapse;
	background-color: white;
}
table.layouts th {
	border-width: 1px 1px 1px 1px;
	padding: 2px 2px 2px 2px;
	border-style: solid solid solid solid;
	border-color: gray gray gray gray;
	background-color: white;
	-moz-border-radius: 0px 0px 0px 0px;
}
table.layouts td {
	border-width: 1px 1px 1px 1px;
	padding: 2px 2px 2px 2px;
	border-style: solid solid solid solid;
	border-color: gray gray gray gray;
	background-color: white;
	-moz-border-radius: 0px 0px 0px 0px;
}
</style>
<%

def link(l,m,e) {
	out.write('<a href="/hqu/wallmount/wallmount/dashboard.hqu?layout=')
	out.write(l)
	out.write('&cssmode=' + m)
	out.write('">' + e + '</a>')	
}

if(!templates) {
	out.write("<div>No layouts found.</div>")
} else {
	
	out.write('<div><table class="layouts"><tr><th>Layout</th><th>Normal View</th><th>Night View</th></tr>')
	templates.each{
		out.write('<tr>')
		out.write('<td>')
		out.write(it)
		out.write('</td>')
		out.write('<td>')
		link(it,'day','Open')
		out.write('</td>')
		out.write('<td>')
		link(it,'night', 'Open')
		out.write('</td>')
		out.write('</tr>')
	}
	out.write('</table></div>')
}

out.write('<div><a href="/hqu/wallmount/wallmount/dashboard.hqu">Open empty layout.<a/></div>')
%>

