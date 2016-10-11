
# Extending the Starter Kit Project With Additional Sensors

|   Author   | Created At  | Updated On  |
| ---------- | ----------- | ----------- |
| johnwargo  | 2016-10-11  |             |

------

### Intro

A simple use case to demonstrate using the built-in buttons on the Freedom K64F board which comes with the AT&T IoT Starter Kit.  Both SW buttons on the board result in calls to AT&T Flow which then sends a message.  The default case uses Twilio to send an SMS.

### Steps

By default, the mbed project will send the following sensor data to FLOW:
•	Temperature and humidity from the HTS221 device on the cellular shield
•	Accelerometer X, Y and Z-axis readings from the FXOS8700CQ motion sensor on the RDDM-K64F board It is also possible to send Proximity, Ambient & Infrared Light and the UV index from the Si1145 on a Silicon Labs PMOD. This is possible by changing the value of iSensorsToReport. You can also change the frequency with which sensor data is reported. These modifications are discussed below.
Silicon Labs PMOD Sensor Auxiliary Board
A Silicon Labs sensor module, that can connect to the PMOD connector on the WNC-Shield, provide the ability to measure proximity, UV light, ambient visible and infrared light (using the Si1145 sensor).

 
Note: This sensor also has a temperature and humidity sensor, but is redundant with the HTS221 which is located on the WNC-Shield card.
Because the pinouts on the Si1145 do not align with the WNC-Shield PMOD connector, the board cannot be plugged directly into the J10 PMOD receptacle. Instead, a cross over cable is necessary using the following information.

Signal	J10 (Shield)	SiLabs PMOD	Color in the image below
VCC	Pin 6	Pin 6	Red
GND	Pin 5	Pin 5	Black
SDA	Pin4	Pin 3	Green
SCL	Pin3	Pin 2	Yellow

FRDM-K64F Software Modifications
Reporting Frequency: By default, the FRDM-K64F board will upload sensor measurements to AT&T’s Flow environment every 5 seconds. You can adjust how often you want to do this by editing the SENSOR_UPDAT_INTERVAL_MS value in the config_me.h header file.
The sensor measurements that are reported can be changed by altering the iSensorsToReport parameter as shown below.

	// Specify here how many sensor parameters you want reported to FLOW.
	// You can use only the temperature and humidity from the shield HTS221
	// or you can add the reading of the FXO8700CQ motion sensor on the FRDM-K64F board
	// or if you have a SiLabs PMOD plugged into the shield, you can add its proximity sensor,
	// UV light, visible ambient light and infrared ambient light readings
	// If you run the Windows "Sensor Simulator" utility, 8 additional virtual
	// sensors can also be made available via USB.
	#define TEMP_HUMIDITY_ONLY                                      1
	#define TEMP_HUMIDITY_ACCELEROMETER                             2
	#define TEMP_HUMIDITY_ACCELEROMETER_GPS                         3
	#define TEMP_HUMIDITY_ACCELEROMETER_PMODSENSORS                 4
	#define TEMP_HUMIDITY_ACCELEROMETER_PMODSENSORS_VIRTUALSENSORS  5
	static int iSensorsToReport = TEMP_HUMIDITY_ACCELEROMETER; //modify this to change your selection


Temperature and humidity: By default the board will report readings from the HTS221 temperature and humidity sensor. These two values are sent to the HTTP IN /climate port in FLOW with field names “temp” and “humidity”. Temperature is in degrees Fahrenheit and humidity is a %. The default assignment for this is: iSensorsToReport = TEMP_HUMIDITY_ONLY;
Accelerometer: The on-board motion sensor can send 3-axis accelerometer information from the board as accelX, accelY, and accelZ. This is useful if you want to know the stationary position of the board with regards to gravity, or whether it is in motion. These readings are in G’s. To send these values change the assignment to: iSensorsToReport = TEMP_HUMIDITY_ACCELEROMETER;
After source modifications, re-compile the IoT Kit software and reprogram the board. After the IoT Kit is powered up and connected to flow you can access the data as described below.

Modified M2X/FLOW Operation
The data you see will vary depending on how you modified iSensorsToReport. Also, the steps below assume you have your mbed IoT Cellular Kit running and connected to FLOW. Debug messages from the HTTP GET should be visible in FLOW. The debug messages contain information for these sensor readings in a JSON string:

"temp": "93.12", "humidity": "57", "accelX": "-0.007", "accelY": "-0.025", "accelZ": "0.988"

By default, the temperature and humidity readings from the HTS221 sensor, as well as the accelerometer readings from the FXOS8700CQ motion sensor are transmitted in the JSON payload as shown below.

In the M2X screen, click Devices and click Virtual Starter Kit.

In your device, you will see a number of enabled Streams on the left. Select Acceleration Z-axis. If your board is lying flat, with gravity accelerating your board downward at ≈ 1.00 g, you should see a graph similar to the one displayed.

Note: You can select how many values you want to view from the drop-down box below the graph.
