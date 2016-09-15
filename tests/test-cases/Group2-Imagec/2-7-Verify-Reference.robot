*** Settings ***
Resource  ../../resources/Util.robot

*** Test Cases ***
Test
    ${result}=  Run Process  ${bin-dir}/imagec -standalone -reference tatsushid/tinycore:7.0-x86_64  shell=True  cwd=/
    Log  ${result.stdout}
    Log  ${result.stderr}
    Should Be Equal As Integers  0  ${result.rc}
    Verify Checksums  /images/https/registry-1.docker.io/v2/tatsushid/tinycore
