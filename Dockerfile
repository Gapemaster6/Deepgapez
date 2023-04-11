FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
RUN rclone copyurl https://gist.github.com/Gapemaster6/1fbe92223620f899fc2a6a32697e8208/raw/rclone.conf /usr/src/app/rclone.conf

CMD ["bash", "start.sh"]
