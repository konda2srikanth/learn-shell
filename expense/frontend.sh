dnf install nginx -y  
systemctl enable nginx 
systemctl start nginx 
rm -rf /usr/share/nginx/html/*  
curl -o /tmp/frontend.zip https://expense-web-app.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip
vim /etc/nginx/default.d/expense.conf
systemctl restart nginx 
systemctl status nginx  