FROM alpine:latest
WORKDIR /app

COPY pocketbase /app/pocketbase
RUN chmod +x /app/pocketbase

# Create superuser only if not exists
if ! ./pocketbase admin list | grep -q "soupart.stephen@gmail.com"; then
    ./pocketbase admin create soupart.stephen@gmail.com Monvirus81!
fi
EXPOSE 10000
CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:10000"]
