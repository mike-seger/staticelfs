FROM centos:latest
RUN yum update -y
RUN yum install -y autoconf automake mercurial glibc-static gcc make which; \
	cd /root; \
	hg clone http://hg.code.sf.net/p/joe-editor/mercurial joe-editor-mercurial; \
	cd /root/joe-editor-mercurial ; \
	./autojoe ; \
	./configure --prefix=/usr --sysconfdir=/etc LDFLAGS="-static" ; \
	make; \
	make install; \
	mkdir -p /opt/bin/.joe ; \
	cp -R /usr/share/joe/colors /opt/bin/.joe ; \
	cp -R /usr/share/joe/syntax /opt/bin/.joe ; \
	cp /etc/joe/joerc /opt/bin/.joe ; \
	cp /usr/bin/joe /opt/bin ;

CMD ["/bin/bash"]
