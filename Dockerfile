FROM node:22.16.0-alpine

ENV NODE_ENV production
ENV PORT 3001

WORKDIR /app
RUN apk add --update --no-cache git && \
	git clone --single-branch --depth=1 https://github.com/nourpups/intergram.git && \
	cd intergram && \
	npm install --force \
    npm run build

EXPOSE 3001

WORKDIR /app/intergram
ENTRYPOINT ["sleep", "infinity"]