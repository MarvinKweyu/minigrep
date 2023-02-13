FROM alpine:latest
# Set the working directory 
WORKDIR /myawesomeapp
# Copy main app from current directory to container 
COPY minigrep .
COPY poem.txt .
# Run the application 
ENTRYPOINT ["./target/debug/minigrep", "to" , "poem.txt"]