### Отчет

1. Установка Docker и Docker Compose

Скриншоты выполнения команд представлены в отдельном Google-документе и находятся по ссылке:
[Скриншоты](https://docs.google.com/document/d/15sAQeca-tULCGYoqG9gRVbzDTuU2LVs1jsO7y47i8Vk/edit?usp=sharing).

Установка Docker выполняется командами:

```
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
"deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
"$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#Проверка установки
sudo docker run hello-world
```


2 Разработка программы
Программа на Bash выводит текущее время и дату. 
Созданный репозиторий на GitHub имеет название DockerTask.


3. Создание Docker-образа для программы:
Созданный Dockerfile для сборки образа, включающего программу и зависимости, доступен в Git-репозитории.

Сборка Docker-образа из Dockerfile производится командой:

```docker build -t humble-desktop-prepared```


Запуск и тестирование Python-приложения в Docker-контейнере:
Запустите Docker-контейнер из созданного образа.
Проверьте, что ваша программа работает корректно внутри контейнера.
Работа с Docker Compose:
Создайте docker-compose.yml, который запускает ваш Docker-контейнер с программой.
Добавьте комментарии в docker-compose.yml, объясняющие его структуру и команды.
Убедитесь, что Docker Compose позволяет запустить ваш контейнер.

