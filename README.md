## Features
- Login Page
- User Management
- Role Management
- Permission Management
- Dynamic website settings
- View installed module
- File manager
- File picker

## Packages
- [Admin LTE 3 Template](https://github.com/ColorlibHQ/AdminLTE)
- Laravel UI (Bootstrap)
- Laravel Auth
- [Google recaptcha](https://laravel-recaptcha-docs.biscolab.com/docs/intro)
- [Laravel Debugbar](https://github.com/barryvdh/laravel-debugbar)
- [Spatie](https://spatie.be/docs/laravel-permission/v5/introduction)
- [Sweet Alert](https://github.com/realrashid/sweet-alert)
- [File Manager](https://github.com/alexusmai/laravel-file-manager)
- [Laravel Module](https://nwidart.com/laravel-modules/v6/introduction)
- [Laravel Module Generator](https://github.com/dcblogdev/laravel-module-generator)

## Requirements
- php 8
- mysql
- composer

## How To Install
### Clone repository
``` bash
git clone https://github.com/erikwibowo/Laravel-9-RBAC-Starter-with-Admin-LTE-3.git
```
### Change directory to directory project
``` bash
cd .\Laravel-9-RBAC-Starter-with-Admin-LTE-3\
```
### Intsall packages
``` bash
composer install
```
### Copy environment example file
``` bash
cp .env.example .env
```
### Create database 'admin_lte3'
### Change some configuration in .env file from root project
``` bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=admin_lte3
DB_USERNAME=root
DB_PASSWORD=
```
### Config google recapthca key in .env
- Go to [google recaptcha v2 admin console](https://www.google.com/recaptcha/admin)
- If you run in localhost add this domains <br>
    [![domains.jpg](https://i.postimg.cc/VNjLmqjV/278022947-5419401621416772-3068878710146094302-n.jpg)](https://postimg.cc/1g3ZKN7G)
``` bash
RECAPTCHA_SITE_KEY=YOUR_API_SITE_KEY
RECAPTCHA_SECRET_KEY=YOUR_API_SECRET_KEY
```
### Generate laravel key
```bash
php artisan key:generate
```
### Create storage link
``` bash
php artisan storage:link
```
### Database migration and seed data
``` bash
php artisan migrate:fresh --seed
```
### Run in development server
``` bash
php artisan serve
```
### Login with
``` bash
email : superadmin@superadmin.com
password : superadmin
```

## Modules
### build a new module
``` bash
php artisan module:build
type the module name (plural). example : posts, categories, sliders etc.
```
### Enable module
``` bash
php artisan module:enable {module name}
```
### Disable module
``` bash
php artisan module:disable {module name}
```
### All module files will be generated in root/Modules/{Modulename}
### To automatically update permission, go to permission page and click the reload button
### Change module config
``` bash
Update the module config in root/Modules/{module name}/module.json
"menus": [
    {
        "icon": "fas fa-image",
        "name": "{ModuleName}",
        "route": "route.name",
        "permission": "read {modulename}"
    }
],
"permissions": ["{module name}"]
```
### If you need add menu in created module
``` bash
Update the module config in root/Modules/{Modulename}/module.json
"menus": [
    {
        "icon": "fas fa-image",
        "name": "{Module Name}",
        "route": "route.name",
        "permission": "read {modulename}"
    },
    {
        "icon": "fas fa-images",
        "name": "{Module Name}",
        "route": "route.name",
        "permission": "read {modulename}"
    }
],
"permissions": ["{modulename}", "{modulename}"]
```
### Then reload the permission in Permission > Reload Permission