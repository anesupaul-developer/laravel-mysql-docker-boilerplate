<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel Mysql Docker Boilerplate

This is a docker laravel 10.8, php 8.1, mysql, nginx starter boilerplate.

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## How to run the application

    - git clone https://github.com/anesupaul-developer/laravel-mysql-docker-boilerplate.git

    - cd laravel-mysql-docker-boilerplate

    - make test
    # to run app in production run make prod. You can configure more environments inside Makefile

## Commands Examples

    - docker exec -it application_php81test php artisan migrate
    - docker exec -it application_php81test mkdir src/app/Repositories
    - docker exec -it application_php81 php artisan tinker

## Application

Go to localhost:8089 inside your browser to see the application in testing mode.
Go to localhost:8088 inside your browser to see the application in production mode.