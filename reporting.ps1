#Variable to hold variable  
$SQLServer = "VIJAYLEOMC7F2"  
$SQLDBName = "leo_test"
$uid= "leo"
$pwd= "password"
#SQL Query  
$SqlQuery = "SELECT * from [user_info]"  
$SqlConnection = New-Object System.Data.SqlClient.SqlConnection  
Invoke-Sqlcmd -ServerInstance $SQLServer -Database $SQLDBName -Query $SqlQuery   | Export-CSV "C:\\DETAIL_REPORT_SHEET.csv"

