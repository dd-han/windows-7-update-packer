@echo off

cd /d %~dp0
dism /image:%1  /add-package /packagepath:windows6.1-kb2667402-v2-x64_15c04bd5944cd9b34a294a25b96911057593c465.msu /packagepath:windows6.1-kb2698365-x64_f3ad859582ad240c95b9ed867bc9b99e39d15ba9.msu /packagepath:windows6.1-kb2706045-x64_ffc82084794531c27bd4a670408d2c4a4d038ad8.msu /packagepath:windows6.1-kb2862330-v2-x64_c1a8b768d8c22640d0a80966d124f441eb625934.msu /packagepath:windows6.1-kb2894844-x64_71b051d4b2eae12423868e28b0e5b04a9e10c048.msu /packagepath:windows6.1-kb2900986-x64_a56afda70b8208665280cb79d0a6704bb7dcc3bb.msu /packagepath:windows6.1-kb2984972-x64_2545620eadc06a0a3fd426b5853b2e0b48187599.msu /packagepath:windows6.1-kb3004375-v3-x64_c4f55f4d06ce51e923bd0e269af11126c5e7196a.msu /packagepath:windows6.1-kb3031432-x64_e648abe279c8b0095a57271ffbab5d5d376da558.msu /packagepath:windows6.1-kb3046269-x64_9cdabeb9c2a859414c27c4f981d6b1334aee0ad5.msu /packagepath:windows6.1-kb3059317-x64_b68db33239bddcb59e881252cfc7b79d58a2f26b.msu /packagepath:Windows6.1-KB3020369-x64.msu

dism /image:%1  /add-package /packagepath:windows6.1-kb3125574-v4-x64_2dafb1d203c8964239af3048b5dd4b1264cd93b9.msu

dism /image:%1  /add-package /packagepath:windows6.1-kb3138612-x64_f7b1de8ea7cf8faf57b0138c4068d2e899e2b266.msu /packagepath:windows6.1-kb3150220-x64_4b29121b751476ed6b81ab570e2f607278d45824.msu /packagepath:windows6.1-kb3155178-x64_5db0e41e4bb12253f5c9f9bc5c1431b1b6073bf8.msu /packagepath:windows6.1-kb3156016-x64_97fa9ecb5f3a03a0739c6baeea3d9371c1474a6a.msu /packagepath:windows6.1-kb3156019-x64_0b5a11f41322e7a835887b5fe5715bc4d1334333.msu /packagepath:windows6.1-kb3159398-x64_dc2b2c11af4b38b0b632bd7f6d683d57a93b711c.msu /packagepath:windows6.1-kb3161949-x64_e2372fb5746e9474cec6ef1710f8d58ec5c6c000.msu /packagepath:windows6.1-kb3161958-x64_eb3a21d1d8175679bb60ed8a1df47320f9df0c59.msu /packagepath:windows6.1-kb3170455-x64_99dc1d99451e7f2d23d088b78a424c14300a5d5b.msu 

rem this package will broken offline image
rem /packagepath:windows6.1-kb3177467-x64_42467e48b4cfeb44112d819f50b0557d4f9bbb2f.msu

rem dotnet
dism /image:%1  /add-package /packagepath:windows6.1-kb4014504-x64_8ff7cfc3a121bf705c52c19403b5626148eafffd.msu

rem dism /image:%1  /add-package /packagepath:windows6.1-kb4019264-x64_c2d1cef74d6cb2278e3b2234c124b207d0d0540f.msu

dism /image:%1  /add-package /packagepath:windows6.1-kb4025341-x64_e2518cc83b86902d20302f114a7ebe4249efbe9c.msu

exit