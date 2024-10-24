FROM kjarosh/latex:2024.4

RUN apk add font-noto
# make FontAwesome from the TeXLive install available as a system font
RUN cp /opt/texlive/texmf-var/fonts/conf/texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive.conf \
    && fc-cache -fsv
