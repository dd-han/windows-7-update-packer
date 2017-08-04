@echo off

cd /d %~dp0
dism /image:%1  /add-package /packagepath:windows6.1-kb2667402-v2-x86_eec6812d9c6f710a6c1e640e8b928c99f215f39e.msu /packagepath:windows6.1-kb2698365-x86_d9f8e37cc61ab4abce802c29fe20a8e270321373.msu /packagepath:windows6.1-kb2862330-v2-x86_a6f3c9b5811bd869cf6834acb96c4a0232588c9b.msu /packagepath:windows6.1-kb2894844-x86_d628cb41a17b6cee85c3bdf3e4612219fb7257ba.msu /packagepath:windows6.1-kb2900986-x86_a993e450237ad5109c06691b47cea6aedb86642f.msu /packagepath:windows6.1-kb2984972-x86_0447ea81b8cfafde3f7454721070c6d6599c58d7.msu /packagepath:windows6.1-kb3004375-v3-x86_822f779b87d3cd4ef4de004c344abce202a8aac6.msu /packagepath:windows6.1-kb3031432-x86_6ba33eba05ec8fe744e2786f6b72965d119274d8.msu /packagepath:windows6.1-kb3046269-x86_dad279443dc5e3446bb2b478252c90d5f115faf1.msu /packagepath:windows6.1-kb3059317-x86_7dbad42dd71389bb65948b81220fc019d77c8b77.msu /packagepath:Windows6.1-KB3020369-x86.msu

dism /image:%1  /add-package /packagepath:windows6.1-kb3125574-v4-x86_ba1ff5537312561795cc04db0b02fbb0a74b2cbd.msu

dism /image:%1  /add-package /packagepath:windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu /packagepath:windows6.1-kb3150220-x86_f3529b8f2f21ea56c6e997ff654d59e4f65d2d6e.msu /packagepath:windows6.1-kb3155178-x86_9a1f15d917191a010d323e7e9dc7e6b211524ed6.msu /packagepath:windows6.1-kb3156016-x86_ea2cf88a256d4138109847ddc5cec66f3f660efa.msu /packagepath:windows6.1-kb3156019-x86_842ffb1d49c4540558396cae3b599d1bef9dd485.msu /packagepath:windows6.1-kb3159398-x86_c4fa9c67178bef5dbcbd72cde2fe94f5126337e5.msu /packagepath:windows6.1-kb3161949-x86_0055d0d1e103d374e042f31ebdd26931853b882b.msu /packagepath:windows6.1-kb3161958-x86_68c2ffd3c03fa0450040c1dc6bcf3cff38f76fe1.msu /packagepath:windows6.1-kb3170455-x86_34e8e3608186935f5d527d03488295409ff39008.msu 

rem this package will broken offline image
rem /packagepath:windows6.1-kb3177467-x86_7fa40e58f6a8e56eb78b09502e5c8c6c1acf0158.msu 

rem dotnet
dism /image:%1  /add-package /packagepath:windows6.1-kb4014504-x86_19943397671b6e639eaa94f91ecc506de823496b.msu

rem dism /image:%1  /add-package /packagepath:windows6.1-kb4019264-x86_aaf785b1697982cfdbe4a39c1aabd727d510c6a7.msu

dism /image:%1  /add-package /packagepath:windows6.1-kb4025341-x86_13034fc05179eb9a77c9302b42ef40f85e71b29b.msu

exit