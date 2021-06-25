cls
@color 0a
@echo off

echo aggiorna repository messaggio del commit %1 

call git add .
@color 0a
call git commit -a -m"%1"
@color 0a
call git push
@color 0a

echo Ho aggiornato la repository 

pause
