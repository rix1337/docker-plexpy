FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache gcc libc-dev python3-dev

# dependencies
RUN pip install --upgrade pip
RUN pip install python-Levenshtein rsscrawler --no-cache-dir

# add local files
COPY root/ /

# volumes and ports
VOLUME /config /jd2/folderwatch
EXPOSE 9090
