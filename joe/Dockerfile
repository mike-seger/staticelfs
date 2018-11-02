FROM centos:latest
RUN yum update -y
RUN yum install -y autoconf automake mercurial glibc-static gcc make which; \
	cd /root; \
	hg clone http://hg.code.sf.net/p/joe-editor/mercurial joe-editor-mercurial; \
	cd /root/joe-editor-mercurial ; \
	./autojoe ; \
	./configure --prefix=/usr --sysconfdir=/etc LDFLAGS="-static" ; \
	make; \
	mkdir -p /opt/bin ; \
	cp -a syntax /opt/bin ; \
	cp joe/joe /opt/bin ;

CMD ["/bin/bash"]
