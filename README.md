# Dependencies for solution

Use the following commands to install the dependencies required for running this solution to the e1_ch8_PFlight challenge problem.

Install Dotnet

    wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb
    rm packages-microsoft-prod.deb

    sudo apt-get update; \
    sudo apt-get install -y apt-transport-https && \
    sudo apt-get update && \
    sudo apt-get install -y dotnet-sdk-3.1

Install Java

    sudo apt install default-jre

Install P & Coyote

    dotnet tool install --global P

# Building the solution

To build the P solution, run `bin/build.sh` from the project root.

# Running the solution

From the project root directory, run `bin/run.sh`

The output files from P will be stored in the `evaluation` directory under the
name of the test. Only tests that fail generate log files, so under normal
circumstances, alpha0 and foxtrot0 won't have log files because they are supposed
to work correctly.
