cat > README.md << 'EOF'
# Домашнее задание к занятию «Disaster recovery и Keepalived»
**Студент:** Дудников Даниил

## Задание 1: HSRP в Cisco Packet Tracer

### Цель:
Настройка отслеживания интерфейсов для протокола HSRP и демонстрация автоматического переключения при обрыве связи.

### Выполненные работы:
- Настроено отслеживание интерфейсов Gi0/1 для группы 0 HSRP
- Настроено отслеживание интерфейсов Gi0/0 для группы 1 HSRP  
- Проверена отказоустойчивость при обрыве соединения
- Доказана работоспособность сети между PC0 и Server0 после переключения

### Демонстрация работы:

#### Схема сети с проверкой связи:
![Схема сети](task1-cisco/network_topology_ping_test.png.png)

#### Настройки HSRP на маршрутизаторах:
![Настройки HSRP](task1-cisco/hsrp_configuration.png.png)

### Файлы:
- `task1-cisco/hsrp_track_interface.pkt` - схема сети Cisco Packet Tracer
- `task1-cisco/hsrp_configuration.png.png` - настройки маршрутизаторов
- `task1-cisco/network_topology_ping_test.png.png` - схема с проверкой связи

## Задание 2: Keepalived на Linux

### Цель:
Настройка сервиса Keepalived для использования плавающего IP с отслеживанием состояния веб-сервера.

### Выполненные работы:
- Установлен и настроен nginx на порту 8080
- Создан bash-скрипт для проверки доступности порта и файла index.html
- Настроен Keepalived с отслеживанием каждые 3 секунды
- Демонстрировано переключение VIP при недоступности веб-сервера

### Bash-скрипт проверки:
```bash
#!/bin/bash
if ! nc -z localhost 8080 &>/dev/null; then
    echo "Web server port 8080 is not available"
    exit 1
fi
if [ ! -f "/var/www/mysite/index.html" ]; then
    echo "index.html does not exist" 
    exit 1
fi
if [ ! -s "/var/www/mysite/index.html" ]; then
    echo "index.html is empty"
    exit 1
fi
echo "Web server check passed"
exit 0
