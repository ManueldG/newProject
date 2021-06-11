cls
@color 0a
@echo off

echo preparazione del progetto %1

call composer create-project --prefer-dist laravel/laravel:^7.0 %1 
@color 0a
cd %1
@color 0a
call   npm install
@color 0a
call  composer require barryvdh/laravel-debugbar --dev
@color 0a
call  composer remove composer remove fzaninotto/faker
@color 0a
call  composer require fakerphp/faker
@color 0a

echo Ho fatto puoi iniziare 
