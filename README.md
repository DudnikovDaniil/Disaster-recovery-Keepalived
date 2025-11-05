# Домашнее задание к занятию «Disaster recovery и Keepalived»
**Студент:** Дудников Даниил

## Задание 1: HSRP в Cisco Packet Tracer
- Настроено отслеживание интерфейсов для HSRP групп
- Демонстрация автоматического переключения при обрыве связи
- Проверена работоспособность сети между PC0 и Server0

### Файлы:
- `task1-cisco/network_topology.pkt` - схема сети
- `task1-cisco/hsrp_configuration.png` - настройки маршрутизаторов
- `task1-cisco/network_topology_ping_test.png` - проверка связи

## Задание 2: Keepalived на Linux
- Настроен веб-сервер nginx на порту 8080
- Создан bash-скрипт проверки порта и файла index.html
- Настроен Keepalived с отслеживанием каждые 3 секунды
- Демонстрация переключения VIP при недоступности сервиса

### Файлы:
- `task2-keepalived/keepalived.conf` - конфигурация MASTER
- `task2-keepalived/keepalived_backup.conf` - конфигурация BACKUP  
- `task2-keepalived/check_web_server.sh` - bash-скрипт проверки
- `task2-keepalived/keepalived_configuration_files.png` - конфиги и скрипт
- `task2-keepalived/keepalived_switch_logs.png` - логи переключения
- `task2-keepalived/vip_switch_demonstration.png` - демонстрация VIP
- `task2-keepalived/vip_on_server2.png` - VIP на backup сервере

## Результаты:
- Отработаны механизмы отказоустойчивости HSRP и Keepalived
- Системы корректно переключаются при неисправностях
- Обеспечивается высокая доступность сетевых сервисов
