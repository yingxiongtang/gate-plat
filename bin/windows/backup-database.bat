@echo off
rem Licensed to the Apache Software Foundation (ASF) under one or more
rem contributor license agreements.  See the NOTICE file distributed with
rem this work for additional information regarding copyright ownership.
rem The ASF licenses this file to You under the Apache License, Version 2.0
rem (the "License"); you may not use this file except in compliance with
rem the License.  You may obtain a copy of the License at
rem
rem     http://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

IF [%1] EQU [null] (
	echo USAGE: %0 server.properties
	EXIT /B 1
)

SetLocal
rem specify the server which want to be run
set EXTRA_ARGS=-name BACKUP -loggc
set KAFKA_HEAP_OPTS=-Xmx1G -Xms1G
%~dp0run-class.bat com.github.runner.ApplicationBoot %*
EndLocal
