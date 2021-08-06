# Daily_Reporting_Strategy

The powershell script will ensure the data from a particular table in SQLServer is retrieved in a comma separated format.

## There are two files attached here:

	1. reporting.ps1
	2. reportingLoginBased.ps1

A table here was created and data populated as shown below:

![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/SQLServerTablesContent.png?raw=true)

When running the script within the machine, the script will execute under windows authentication mechanism. In case, if there is a custom user created and mixed mode authentication is enabled, ensure the below privileges are available.

![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/SQLServerCustomUser.png?raw=true)

Now to configure this in window's scheduler to automate the process on a daily basis, This is a one time configuration.

## Kindly follow the below routine.

1. Goto RUN command and type the taskschd,msc to open a console to configure the TASKs.

![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/WindowsTaskScheduler.png?raw=true)

2. Create a new folder under the "Task Scheduler Library" - And inside that action a "Create Task" by right clicking on the folder.

![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/WindowsTaskCreation.png?raw=true)

3. Below are the thre vital steps to be followed:

	a. Configure the Task Name: - Ensure you mark this task to run with Highest Privilege so that there is no error recurring when we creating CSV file.
	
	![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/WindowsTaskNameRunWithPrivilege.png?raw=true)

	b. Configure the Trigger Duration:
	
	![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/WindowsTaskTriggerDuration.png?raw=true) 

	c. Configure the Powershell Script Execution:

	![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/WindowsTaskPowerShellBasedAction.png?raw=true) 

4. Once the above configuration is completed, the configuration can be seen as in below in the window.

![Index](https://github.com/vijayleom/Daily_Reporting_Strategy/blob/master/WindowsTaskDetails.png?raw=true)

Now the schedule Powershell Task will keep running on a scheduled basis by the Task Schedule as configured!

