docker run -d \
    -p 8086:8080 \
    --name "mlopslab" \
    -v "${PWD}:/workspace" \
    --env AUTHENTICATE_VIA_JUPYTER="password" \
    --restart always \
    mlopslab:latest