# About
xdebug configuration examples

For remote debugging see [remote README](/remote/README.md)


## Как настроить xdebug в PHPStorm
Пример минимально необходимых настроек для IDE

1. Настройки servers (Settings -> Servers)

![server.png](/img/server.png)
Что здесь важно:
- path mapping - должен совпадать с рабочей директорией проекта
- name: нужно указать должен быть такой же, как в переменной окружения `PHP_IDE_CONFIG=serverName=xxx` (в примере на скрине - `serverName=xdebug`). 
Если будет отличаться - PHPStorm может игнорить запросы на подключение от этого сервера 

`host` и `port` можно указать любой, не имеет значения (по умолчанию указываю `localhost:80`)

2. Настройки debug (Settings -> Debug)

![debug.png](/img/debug.png)

Если порт используется стандартный (9003), можно оставить дефолтными.
Что здесь важно:
- Xdebug -> Debug Port. Среди них должен быть указан тот, который прописан в конфиге `xdebug.client_port`
- настройка `Ignore external connections`.
Если включено, то будут приниматься запросы только от тех серверов, которые 
- - зарегистрированы в Settings -> Servers
- - serverName из `PHP_IDE_CONFIG` соответвует тому namе, который указан в настройках сервера из Settings -> Servers

(См настройки name для Settings -> Servers из п1)


3. Не забываем включить дебаггер:

ищем жука в toolbar:  
![img_3.png](/img/img_3.png)  
или в statusbar (внизу)  
![img_4.png](/img/img_4.png)

В включенном виде  
![img.png](/img/img.png)
![img_2.png](/img/img_2.png)

