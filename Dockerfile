FROM node:8

# Install Cypress dependencies
RUN apt-get update && \
  apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb \
    python-dev \
    zip \
    jq

# Get necessary repositories and dependencies for yarn
RUN apt-get update && apt-get install -y apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install the latest yarn and alias it
RUN apt-get update && apt-get install -y yarn && \
    echo "alias yarn='/usr/bin/yarn'" >> ~/.bashrc

# Get pip
RUN curl -O https://bootstrap.pypa.io/get-pip.py

# Install pip and AWS EB CLI
RUN python get-pip.py
RUN pip install --upgrade pip \
        awsebcli \
        awscli

# Change current time zone to Europe/Helsinki Time zone
RUN date && \
    cp -f /usr/share/zoneinfo/Europe/Helsinki /etc/localtime && \
    date

# Versions of local tools
RUN node -v
RUN npm -v
RUN yarn -v
