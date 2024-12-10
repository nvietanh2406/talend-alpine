# Sử dụng image openjdk:17-alpine
FROM openjdk:17-alpine

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy tất cả file của job Talend vào container
COPY ./DRE_FULLLOAD_STD_0.1 /app

RUN ls -lR /app

# Gán quyền thực thi cho file shell script
RUN chmod +x "/app/DRE_FULLLOAD_STD/" -R

# Lệnh mặc định để chạy job
#CMD ["/app/DRE_FULLLOAD_STD/DRE_FULLLOAD_STD_run.sh"]

# Sử dụng ENTRYPOINT để chạy script với tham số động
ENTRYPOINT ["/bin/sh", "/app/DRE_FULLLOAD_STD/DRE_FULLLOAD_STD_run.sh"]
