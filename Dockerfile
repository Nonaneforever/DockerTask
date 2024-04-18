# Начнём с базового образа ROS
FROM osrf/ros:humble-desktop

# Задаём перменную окружения, чтобы пользователь не участвовал в установке (выбор клавиатуры и прочее)
ENV DEBIAN_FRONTEND=noninteractive

# Установим необходимые пакеты
RUN apt update && apt install -y \
    # xpra \
    # xterm \
    netcat \	
    net-tools \
    nano 
    # ros-$ROS_DISTRO-turtlebot3* \
    # ros-humble-rmw-cyclonedds-cpp


# Копируем скрипт из текущей директории внутрь контейнера
COPY sim_rob.sh /usr/src/sim_rob.sh

# Делаем скрипт исполняемым
RUN chmod +x /usr/src/sim_rob.sh

# Зададим стартовую команду для контейнера
CMD ["/usr/src/sim_rob.sh"]

