REM uso clona es.: clona nomeUtente nomeRapo
cls
@color 0a
@echo off

echo importo il progetto %2
echo https://github.com/%1/%2.git
pause
call git clone https://github.com/%1/%2.git
@color 0a
cd %2
call composer install
call php artisan key:generate
call php artisan migrate
@color 0a
call composer require barryvdh/laravel-debugbar --dev
@color 0a
echo yes|call  composer remove composer remove vendor/fzaninotto/faker
@color 0a
call  composer require fakerphp/faker
@color 0a
call npm install
@color 0a

echo Ho fatto apri il file .env per impostare il data base 

pause


