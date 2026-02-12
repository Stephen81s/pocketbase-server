FROM alpine:latest
WORKDIR /app
COPY pocketbase.exe /app/pocketbase
RUN chmod +x /app/pocketbase
EXPOSE 10000
CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:10000"]
