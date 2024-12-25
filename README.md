## Сборник скриптов Bash найденных в Интернете и Telegram каналах.

### Ссылки

[Bash Function & How to Use It {Variables, Arguments, Return}](https://phoenixnap.com/kb/bash-function)

[LXC Proxmox Bash](https://github.com/whiskerz007/proxmox_portainer_lxc/)

[Bash Functions Guide [Arguments, Return Value, Script Examples]](https://codefather.tech/blog/bash-functions/)

[Онлайн-терминал для обработки команд Linux](https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg&mem=192)

[Тестирование Bash-приложений](https://habr.com/ru/articles/278937/)

[Сайт с тестовыми заданиями по настройки Linux серверов](https://sadservers.com/scenarios)

[Сборник bash скриптов для Proxmox](https://github.com/ddrimus/proxmox-scripts)

[Proxmox VE Helper-Scripts](https://github.com/tteck/Proxmox)

[Free Introduction to Bash Scripting eBook](https://github.com/bobbyiliev/introduction-to-bash-scripting?tab=readme-ov-file)


### Заметки


Вывод MAC адреса сетевого подключения 

```console
ip l | awk '/ether/{ gsub(":","-") ; print $2}' | tr '[:lower:]' '[:upper:]'
```
