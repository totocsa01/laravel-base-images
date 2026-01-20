# laravel-base-images

## About
Dockerfiles for developing Laravel applications.
Running create.sh creates three docker images: nginx, php-fpm, and postgresql.
These images contain all the functionality I used in previous developments. Therefore, it is not recommended to use them in a production environment.

## Usage
Running create.sh will create three docker images with tag: laravel-base-nginx, laravel-base-php-8.5, and laravel-base-postgres-18.
These images will be used by [laravel-base-containers](https://github.com/totocsa01/laravel-base-containers).

```bash
bash create.sh
```
or
```bash
chmod +x create.sh
./create.sh
```