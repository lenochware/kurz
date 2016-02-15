<?elements
class form html5
input NAME lb "Name:" required
input SURNAME lb "Surname:" required
input BIRTHDATE date "%d.%m.%Y" lb "Birth date:" size "10" html_class "calendar"
select PROFESSION lb "Profession:" list "bigboss,Big Boss,programmer,Programmer" required
input MONEY lb "Money:" number
input CUSTOMER_NUMBER lb "Customer number:" pattern "\w{3}-\d{4}" html_title "AAA-9999" required
select PRODUCT lb "Choose product:" query "select ID,productName,productLine from PRODUCTS order by productLine,productName" required
check INTERESTS lb "Interests:" query "select ID,LABEL FROM INTERESTS order by LABEL" columns "2"
text COMMENT lb "Comment:<sup>1)</sup>" size "50x4" maxlength "50"
button update lb "Save"
?>
<table>
{form.fields}
</table>
