<?elements
class form
input NAME lb "Name:" required
input SURNAME lb "Surname:" required
input BIRTHDATE date "%d.%m.%Y" lb "Birth date:" size "10"
select PROFESSION lb "Profession:" list "bigboss,Big Boss,programmer,Programmer" required
input MONEY lb "Money:" number
button update lb "Save"
?>
<table>
{form.fields}
</table>
