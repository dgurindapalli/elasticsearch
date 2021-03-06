@echo off

rem Copyright Elasticsearch B.V. and/or licensed to Elasticsearch B.V. under one
rem or more contributor license agreements. Licensed under the Elastic License;
rem you may not use this file except in compliance with the Elastic License.

setlocal enabledelayedexpansion
setlocal enableextensions

set ES_ADDITIONAL_SOURCES=x-pack-env;x-pack-security-env
call "%~dp0elasticsearch-cli.bat" ^
  org.elasticsearch.xpack.security.authc.esnative.tool.SetupPasswordTool ^
  %* ^
  || exit /b 1

endlocal
endlocal
