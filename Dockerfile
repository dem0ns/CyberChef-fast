# CyberChef-faster — builds this repository's source, serves with nginx
FROM node:24-alpine AS build
WORKDIR /src
COPY . .
RUN npm install --no-audit --no-fund \
 && npm run build \
 && rm -f build/prod/BundleAnalyzerReport.html build/prod/CyberChef_*.zip build/prod/sha256digest.txt

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /src/build/prod/ /usr/share/nginx/html/
EXPOSE 80
