_download_to_file(u,s){
	static r:=false,request:=comobjcreate("WinHttp.WinHttpRequest.5.1")
	if(!r||request.option(1)!=u)
		request.open("GET",u)
    ;request.SetProxy(2, "XXX.XXX.XXX.XXX:PORT") ; IF YOU NEED TO SET YOUR PROXY
	request.send()
	if(request.responsetext="failed"||request.status!=200||comobjtype(request.responsestream)!=0xd)
		return false
	p:=comobjquery(request.responsestream,"{0000000c-0000-0000-C000-000000000046}")
	f:=fileopen(s,"w")
	loop{
		varsetcapacity(b,8192)
		r:=dllcall(numget(numget(p+0)+3*a_ptrsize),ptr,p,ptr,&b,uint,8192, "ptr*",c)
		f.rawwrite(&b,c)
	}until (c=0)
	objrelease(p)
	f.close()
	return request.responsetext
}