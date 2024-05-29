<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VOTE</title>
<link rel="stylesheet" type="text/css" href="./css/viewallvoters.css" />

</head>
<body>
<%@ include file="voternavbar.jsp" %>
	<section>
  <!--for demo wrap-->
  <h1>VOTE</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
         <th>Select</th>
          <th>Candidate NAME</th>
          <th>Party Name</th>
          
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach items="${candidatedata}"  var="cd"> 
        <tr>
         <td><input type="radio" name="selectRow"></td>
          <td><c:out value="${cd.candidate_name}" /> </td>
          <td><c:out value="${cd.party_name}" /> </td>
          
        </tr>
        </c:forEach> 
      </tbody>
    </table>
    
  </div>
  <div class="submit">
  	<button>Submit</button>
  </div>
</section>



</body>
</html>