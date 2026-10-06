FROM nginx:latest
COPY index.html /var/www/html/index.html

# 关键：容器启动时，读取环境变量 $FLAG 并替换网页里的 {{flag}}
CMD sed -i "s/{{flag}}/${FLAG}/g" /var/www/html/index.html && nginx -g "daemon off;"
EXPOSE 80