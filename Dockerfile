FROM rust:latest
WORKDIR /myawesomeapp
# copy the source file onto the /app directory
COPY . .
# compile into executable
RUN cargo build
# run the project
ENTRYPOINT ["./target/debug/minigrep", "to" , "poem.txt"]