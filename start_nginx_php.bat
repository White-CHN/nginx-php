echo
set nginx_home=nginx-1.11.6
set php_home=php-7.1.0-Win32-VC14-x64

echo Starting PHP FastCGI...
RunHiddenConsole %php_home%/php-cgi.exe -b 127.0.0.1:9000 -c %php_home%/php.ini

echo Starting nginx...
RunHiddenConsole %nginx_home%/nginx.exe -p %nginx_home%
pause