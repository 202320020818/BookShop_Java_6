<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Table</title>

</head>
<body>
	<h2>Product Table</h2>
	<input type="text" id="searchInput" placeholder="serch...">
	
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Category</th>
			<th>Quantity</th>
			<th>Description</th>
			<th>Action</th>
		</tr>
		
		<c:forEach var="book" items="${allBooks}">
		
			<tr>
				<td>${book.id}</td>
				<td>${book.name}</td>
				<td>${book.price}</td>
				<td>${book.catagory}</td>
				<td>${book.qunetity}</td>
				<td>${book.description}</td>
				
				<td>
					<a href= "update.jsp?id=${book.id}&name=${book.name}&catagory=${book.catagory}&qunetity=${book.qunetity}&description=${book.description}">
						<button>Update</button>
					</a>
					
					<form action="DeleteServlet" method = "post"> 
					<input type="hidden" name="id" value="${book.id}"/>
						<button>Delete</button>
					</form>
				
				</td>
			</tr>
		</c:forEach>

	</table>
	
	<script>
	    function filterTable(){
	    	//Declare Variable
	        var input, filter, table, tableRows, tableData, i, j, txtValue;
	    	//get the input element (search box) by it's id
	        input = document.getElementById("searchInput");
	    	// Convert the entered text to uppercase (case-insensitive search)
	        filter = input.value.toUpperCase();
	     	// Get the first <table> element on the page
	        table = document.querySelector("table");
	     	// Get all the <tr> (rows) inside the table
	        tableRows = table.getElementsByTagName("tr");
	        
	     	// Loop through all rows of the table (skip index 0 → header row)
	        for(i = 1; i < tableRows.length; i++){ 
	        	// Get all <td> (cells) for the current row
	            tableData = tableRows[i].getElementsByTagName("td");
	         	// Flag to check if the row should be visible
	            let rowVisible = false;
	         	// Loop through all cells of the current row
	            for(j = 0; j < tableData.length; j++){
	            	
	                if(tableData[j]){// Ensure the cell exists
	                	// Get the text inside the cell (textContent or innerText)
	                    txtValue = tableData[j].textContent || tableData[j].innerText;
	                	
	                 	// Check if the cell text contains the search keyword
	                    if(txtValue.toUpperCase().indexOf(filter) > -1){
	                        rowVisible = true;// Mark this row as visible
	                        break;
	                    }
	                }
	            }
	         	// Show the row if a match was found, otherwise hide it
	            tableRows[i].style.display = rowVisible ? "" : "none";
	        }
	    }
	 	// Add an event listener → whenever user types in the search box,
	    // the filterTable function will be executed automatically
	    document.getElementById("searchInput").addEventListener("input", filterTable);
	</script>

</body>
</html>
