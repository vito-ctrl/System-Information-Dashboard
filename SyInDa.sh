#!/usr/bin/bash
echo ===============================================
echo System Information Dashboard
echo ===============================================
#dispalaying username and password 
printf "username : %s \n" "$(whoami)"
printf "hostname : %s \n" "$(hostname)"

#shows current date and time
printf "date : %s \n" "$(date)"

#list system uptime
printf "your system up time : %s \n" "$(uptime -p)"

#show available disk space
echo -------------available disk space--------------
if ! command -v free &> /dev/null; then
	echo "error : free command not founf"
else
	echo `df -h --output=source,size,used,avail`
fi

#dispalay RAM usage
echo ------------------RAM usage--------------------
echo `free -l -h`

# CPU Information Section
echo "---------------CPU Information-----------------"
printf "CPU Vendor:\t%s\n" "$(grep 'vendor' /proc/cpuinfo | uniq | cut -d':' -f2)"
printf "CPU Model :\t%s\n" "$(grep 'model name' /proc/cpuinfo | uniq | cut -d':' -f2)"
printf "CPU Cores :\t%s\n" "$(nproc)"
printf "Core IDs  :\t%s\n" "$(grep 'core id' /proc/cpuinfo | sort | uniq | wc -l)"
