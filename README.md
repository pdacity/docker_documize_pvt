# docker_documize_pvt

![Docker stuff](https://img.shields.io/badge/%F0%9F%90%B3-useful%20stuff-lightgray) 
![PizzaWare](https://img.shields.io/badge/%F0%9F%8D%95-PizzaWare-orange) 
![Tea powered](https://img.shields.io/badge/%F0%9F%8D%B5-tea%20powered-yellowgreen)

## Особенности
Взможно запуск стека в изолированном контуре, с доступом во внешний мир через прокси сервер. 

При сборке контейнера переменные передаются внутрь `Dockerfile` из `.env`

Cтек включает в себя и контейнер для онлайн импорта и конвертации документов формата `.doc`, `.docx`, `.md` и `.markdown`

Для количества пользователей до 10 - можно бесплатно использовать коммерческую версию. Для этого необходимо сгенерировать лицензию на сайте - https://www.documize.com/downloads/ 

## Использование
Cкопируйте `.env.sample` в `.env` и отредактируйте по потребности. В случае работы в закрытом контуре через прокси сервер - задайте переменные `HTTP_PROXY` и `HTTPS_PROXY`

## Запуск
docker-compose up -d

## Настройки proxy для Docker pull

Создайте каталог для systemd с настройками Docker service:

```
sudo mkdir /etc/systemd/system/docker.service.d
```

В каталоге создайте файл /etc/systemd/system/docker.service.d/http-proxy.conf в который добавьте HTTP_PROXY environment variable:

```
[Service] 
Environment="HTTP_PROXY=http://<PROXY_IP>:<PROXY_PORT>/"
```

Если вы используете локальный Docker registry, доступ к которому должен осуществляться напрямую можно задать его в NO_PROXY environment variable:

```
[Service]
Environment="http://<PROXY_IP>:<PROXY_PORT>/"
Environment="NO_PROXY=localhost,127.0.0.0/8,reg.domain.com"
```

Синхронизируйте изменения в  systemd:

```
sudo systemctl daemon-reload
```

Убедитесь что изменения вступили в силу:

```
sudo systemctl show --property Environment docker

Environment=HTTP_PROXY=http://<PROXY_IP>:<PROXY_PORT>/
```

Перезапустите Docker:

```
sudo systemctl restart docker
```


