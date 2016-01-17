<?elements
class grid name "people"
string NAME sort
string SURNAME sort
string BIRTHDATE date sort
string PROFESSION sort
string MONEY sort
link lnshow lb "Detail" route "people/show/id:{ID}"
pager pager pglen "20"
?>
<h2>People</h2>
<table class="grid">
  <tr>{grid.labels}</tr>
{BLOCK items}
  <tr>{grid.fields}</tr>
{/BLOCK}
</table>
<div class="pager">{pager}</div>
