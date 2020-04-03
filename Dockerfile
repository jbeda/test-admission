FROM golang:1.14

# Set the Current Working Directory inside the container
WORKDIR $GOPATH/src/github.com/jbeda/test-admission

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Install the package
RUN go install -v ./...

# This container exposes port 8080 to the outside world
EXPOSE 443

# Run the executable
CMD ["test-admission"]