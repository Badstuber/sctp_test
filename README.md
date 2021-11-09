# sctp_test

## How to execute the test case:

- docker-compose build
- docker-compose up
- Open new terminal to use client
- docker ps
- docker exec -it client_container_id bash
- cd cases
- robot --varbiable ipaddress:{name_of_server_container} test_sctp.robot
- Variables that you can use from cli are: ipaddress, port and message. ipaddress should be the name of the server container for the test to pass.
- Default values for variables can be found in test_sctp.robot file
