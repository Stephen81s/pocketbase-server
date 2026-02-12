FROM alpine:latest
WORKDIR /app

COPY pocketbase /app/pocketbase
RUN chmod +x /app/pocketbase

# Create superuser automatically
RUN /app/pocketbase superuser upsert soupart.stephen@gmail.com Monvirus81!

EXPOSE 10000
CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:10000"]
