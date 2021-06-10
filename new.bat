cls
@color 0a
@echo off

echo preparazione del progetto %1

call composer create-project --prefer-dist laravel/laravel:^7.0 %1 
cd %1
call   npm install
call  composer require barryvdh/laravel-debugbar --dev

echo Ho fatto puoi iniziare 