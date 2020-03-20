# docker_documize_pvt

![Docker stuff](https://img.shields.io/badge/%F0%9F%90%B3-useful%20stuff-lightgray) 
![PizzaWare](https://img.shields.io/badge/%F0%9F%8D%95-PizzaWare-orange) 
![Tea powered](https://img.shields.io/badge/%F0%9F%8D%B5-tea%20powered-yellowgreen)

## Особенности

Взможно запуск стека в изолированном контуре, с доступом во внешний мир через прокси сервер  
При сборке контейнера переменные передаются внутрь 'Dockerfile' из '.env'

Для количества пользователей до 10 - можно бесплатно использовать коммерческую версию. Для этого необходимо сгенерировать лицензию на сайте - https://www.documize.com/downloads/ 

## Использование

Cкопируйте '.env.sample' в '.env' и отредактируйте по потребности. В случае работы в закрытом контуре через прокси сервер - задайте переменные 'HTTP_PROXY' и 'HTTPS_PROXY'

Cтек включает в себя и контейнер для онлайн импорта и конвертации документов формата '.doc', '.docx', '.md' и '.markdown'


