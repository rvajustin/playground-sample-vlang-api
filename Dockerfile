FROM thevlang/vlang:alpine

COPY . /app

WORKDIR /app

RUN v build main.v

EXPOSE 8080

CMD ["./main"]