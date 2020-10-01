# file="/sys/class/backlight/intel_backlight/brightness"
file="/sys/class/backlight/amdgpu_b10/brightness"

current=$(cat "$file")

if [ "$1" = "-inc" ]
then
	new=$((current + $2))
	if [ $new -lt 937 ]
	then
		echo $new | cat >$file
	fi
elif [ "$1" = "-dec" ]
then
	new=$((current - $2))
	if [ $new -gt 0 ]
	then
		echo $new | cat >$file
	fi
fi
