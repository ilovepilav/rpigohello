# Use a lightweight Alpine image with Golang support
FROM golang:1.21-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Build the Go application
RUN go build -o rpigohello .

# Expose the port on which the application will run
EXPOSE 8002

# Specify the entry point for the container
ENTRYPOINT ["/app/rpigohello"]

