# Simple bash script for the Raspberry Pi

echo "Restarting pywws..."
echo "Finding processes and kill them..."

# Killing all processes with the pywws pattern

pkill -f pywws

# Starting pywws

echo "Starting pywws..."

python -m pywws.LiveLog -vvv /home/pi/weather/data &

# Show done message

echo "Done!"
