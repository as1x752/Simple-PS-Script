$arr = Get-ChildItem "c:\SPD Enterprise\Recordings\" | 
       Where-Object {$_.PSIsContainer} | 
       Foreach-Object {$_.Name}
                   
foreach ($value in $arr) 
{
                $fullpath = "z:\"+$value
                if (test-path $fullpath)
                {
                                $A = Get-Date; Add-Content 'C:\Logs\recording_transfer.txt' +'@ : '$A' - '$value' Directory already exists.'
                }
                else
                {
                                Copy-Item "C:\SPD Enterprise\Recordings\$value" "Z:\"
                }
}
#   S i m p l e - P S - S c r i p t  
 