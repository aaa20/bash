#!/bin/bash
# inpath -- Проверяет допустимость пути к указанной программе 
# или ее доступность в каталогах из списка PATH 

in_path()
{
 # Получает команду и путь, пытается отыскать команду. Возвращает 0, если
 # команда найдена и является выполняемым файлом; 1 – если нет. Обратите 
 # внимание, что эта функция временно изменяет переменную окружения 
 # IFS (Internal Field Separator – внутренний разделитель полей), но 
 # восстанавливает ее перед завершением.

  cmd=$1	ourpath=$2	result=1
  oldIFS=$IFS	IFS=":"
  
  for directory in "$ourpath"
  do
    if [ -x $directory/$cmd ] ; then
      result=0		# Если мы здесь, значит, команда найдена.
    fi
  done

  IFS=$oldIFS
  return $result
}

checkForCmdInPath()
{
  var=$1
  if [ "$var" != "" ] ; then
    if [ "${var:0:1}" = "/" ] ; then
      if [ ! -x $var ] ; then
        return 1
      fi
    elif ! in_path $var "$PATH" ; then
      return 2
    fi
  fi
}


if [ $# -ne 1 ] ; then
  echo "Usage: $0 command" >&2
  exit 1
fi

checkForCmdInPath "$1"
case $? in
  0 ) echo "$1 found in $PATH" ;;
  1 ) echo "$1 not found or not executable" ;;
  2 ) echo "$1 not found in $PATH" ;;
esac

exit 0
