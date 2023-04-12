import psutil


sensors = psutil.sensors_battery()
battery = int(sensors[0])

print(f"Battery: {battery}%")
