## define variables
builder_name="lqwangxg/node"
app_name=/root/tsnode

docker run -it --rm   -w /app   -v :/app   -v ~/.npm/:/root/.npm/      npm run build
