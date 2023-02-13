# give the initial image a name
FROM rust:latest as build-image
# Set the working directory 
WORKDIR /myawesomeapp
# Copy source file from current directory to container 
COPY . .
# Build the application
RUN cargo build
#* build the final image 
# give this a name
FROM alpine:latest as runtime-image
# Set the working directory 
WORKDIR /myawesomeapp
# copy the compiled code  from the initial image onto the runtime image
COPY --from=build-image /myawesomeapp/target/debug/minigrep .
COPY --from=build-image /myawesomeapp/poem.txt .
# Run the application 
ENTRYPOINT ["./minigrep", "to" , "poem.txt"]