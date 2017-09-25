FROM ubuntu:16.04

# Copy installation scripts in
COPY *.sh ./

# Prepare the system
RUN ./setup.sh
# Install dependencies
RUN ./dependencies.sh
# Install extras
RUN ./extras.sh
# Install libsrtp 2.0.0 (To reduce risk of broken interoperability with future WebRTC versions)
RUN ./libsrtp.sh
# Install usrsctp for data channel support
RUN ./usrsctp.sh
# Install websocket dependencies
RUN ./websockets.sh

# Clone, build and install the gateway
RUN ./janus.sh

# Declare the ports we use
EXPOSE 80 7088 8088 8188

# Define the default start-up command
CMD ./startup.sh
