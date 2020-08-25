# .NET Framework

ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS and JavaScript.

## Prerequisite
OS - Windows10 or Windows server 2012 or higher.

Must installed Docker for windows and switch to windows containers...

## Installation

#### Step 1

Use the source code in  [git](https://github.com/Gar0o0/DevOps.git) 

#### Step 2

To build docker image - 
In root folder run the folowing command.


```bash
docker build -t dotnetapp .
```
#### Step 3
To run docker container - run this command.

```bash
docker run -d -p 80:80 dotnetapp
```
#### Step 4 
check the application in your local machine in port 80


## Thanks 
