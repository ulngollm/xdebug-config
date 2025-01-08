## Описание

Конфиг для удаленного дебага

Содержит минимально необходимую конфигурацию xdebug и минимальный Dockerfile и docker-compose для понимания контекста.

Чтобы подключиться к удаленному серверу, нужно создать ssh туннель. 
Можно выполнить готовую команду в Makefile:
```make
make connect
```
Команде нужны переменные окружения. Указать их в .env файле:
```
cp .env.example .env
```


Настройка IDE - стандартная, как для локального дебаггинга. ssh туннель перенаправит запросы с удаленного сервера на локальную машину.
## Ссылки
- https://www.jetbrains.com/help/phpstorm/remote-debugging-via-ssh-tunnel.html#set-up-an-ssh-tunnel-to-the-remote-machine