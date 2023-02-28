# Use the official Go image as the base image
FROM golang:1.17-alpine3.14

# Set the working directory in the container
WORKDIR /app

# Clone the repository to the container
RUN apk update && apk add --no-cache git
RUN git clone https://github.com/Mahesh-chinta/sample-code-build-config/edit/main/Dockerfile

# Build the Go application
RUN go build -o app

# Expose port 8080 for the application
EXPOSE 8080

# Start the application when the container starts
CMD [ "./app" ]
