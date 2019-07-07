FROM ditsara/base:2.6
LABEL maintainer="Dan Itsara <dan@glazziq.com>"

RUN apt-get install -y wget apt-transport-https libxss1 \
    libappindicator3-1 libindicator7 gconf-service \
    libasound2 libgconf-2-4 libgtk-3-0 libnspr4 libx11-xcb1 libxtst6 \
    fonts-liberation libnss3 xdg-utils unzip libxrender1 &&\
  wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&\
  dpkg -i google-chrome*.deb &&\
  rm google-chrome-stable_current_amd64.deb &&\
  apt-get auto-clean

ENV BUNDLE_PATH=/bundles \
  BUNDLE_BIN=/bundles/bin \
  GEM_HOME=/bundles \
  PATH="/bundles/bin:$PATH"

COPY ruby-shared/home /root
RUN chmod +x /root/*.sh
