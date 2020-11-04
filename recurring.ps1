$i = $args[0].ToString().ToCharArray()
$u = $i | Select -unique

$c = [PSCustomObject]$(Compare-Object -ReferenceObject $i -DifferenceObject $u | Select -Unique)

$c.InputObject

