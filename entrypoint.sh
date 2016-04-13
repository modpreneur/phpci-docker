#!/bin/bash sh


composer update

./console phpci:update

exec apache2-foreground

./daemonise phpci:daemonise