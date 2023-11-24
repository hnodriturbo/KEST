# 11.3.1.11 Lab - Monitor and Manage System Resources

## Introduction
In this lab, you will use administrative tools to monitor and manage system resources.

## Recommended Equipment
- A computer running Windows with Internet access

## Instructions

### Part 1: Event Viewer

#### Step 1: Verify Windows Defender is running
- Instructions for accessing Windows Defender settings across different Windows versions are provided.
- Ensure that Real-time protection is turned on.

#### Step 2: Explore the Services console
- Open the Services console and locate the Windows Defender service.
- **Question:**
  - What is the status of the service?
    - `Running`

#### Step 3: Modify Windows Defender service and observe changes
- Instructions for turning off Windows Defender and refreshing the Services console to see the status change.
- **Question:**
  - After disabling the service, what is its new status?
    - `This windows I'm using doesn't offer me the options to disable the service since it's a vital service to the system. But it's ofcourse available to me to disable the windows defender applications through it's application and with administrative permissions.`

#### Step 4: Use Event Viewer to monitor service changes
- Instructions on how to use Event Viewer to find events related to Windows Defender.
- **Question:**
  - What is the source of the event and what is the severity level?
    - `can't find the answer to this question.`

### Part 2: Explore the Impact of Services

#### Step 1: Verify printing service
- Print a test page to record a listed printer.
- **Question:**
  - `Type your answers here.`

#### Step 2: Stop the print spooler and observe effects
- Stop the Print Spooler service and attempt to print again.
- **Question:**
  - What message did you receive and how would you fix this?
    - `Type your answers here.`

#### Step 3: Restart print spooler
- Restart the Print Spooler service and verify the ability to print.

#### Step 4: Explore DHCP Client service
- Stop the DHCP Client service and observe other affected services.
- **Question:**
  - When the DHCP Client stops, what other services will also be stopped?
    - `After printing a test page, you'll record details like the printer name, model, and possibly its status or IP address if it's a network printer.`
  - Why is it important to exercise care when managing services?
    - `When you stop the Print Spooler service and attempt to print, you'll likely receive an error message indicating that the printer cannot be accessed or the spooler service is not running. To fix this, restart the Print Spooler service through the Services app or command line.`

### Part 3: Monitor and record system usage with Administrative Tools

#### Step 1: Create a new data collector set
- Instructions on setting up a new data collector for monitoring memory usage.

#### Step 2: Format the data collector set
- Change log format settings and record the file path.
- **Question:**
  - What is the full path name to the example file name?
    - `C:\PerfLogs\Admin\New Data Collector\DataCollector01`

#### Step 3: Collect and view the data
- Start and then stop the data collector after simulating memory usage.
- **Question:**
  - What does the column farthest to the right show in the `DataCollector01.csv` file?
    - ` This value represents the latest measurement for that specific counter.`

#### Step 4: Clean up
- Instructions for deleting the data collector set and cleaning up generated logs.

## End of Document
