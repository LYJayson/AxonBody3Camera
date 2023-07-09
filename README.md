# AxonBody3Camera
FiveM-AxonBody3Camera

Based on RCP's Axon Body Camera Development

```tex
RegisterCommand
/recStart
/recStop
```

# File

AxonBody3Record is a Csharp source file

qb-AxonBody3Camera is a file structure recognized by FiveM

# Bug

The current issue encountered is that an exception was thrown while entering the recording command and recording cannot proceed

```tex
System.NullReferenceException: Object reference not set to an instance of an object.
```

```log
[   1840985] [b2802_GTAProce]             MainThrd/ System.NullReferenceException: Object reference not set to an instance of an object. 
[   1840985] [b2802_GTAProce]             MainThrd/  
[   1840985] [b2802_GTAProce]             MainThrd/  
[   1840985] [b2802_GTAProce]             MainThrd/ Server stack trace:  
[   1840985] [b2802_GTAProce]             MainThrd/   at CitizenFX.Core.InternalManager.PrintError (System.String where, System.Exception what) 
[0x00081] in C:\gl\builds\master\fivem\code\client\clrcore\InternalManager.cs:595  
[   1840985] [b2802_GTAProce]             MainThrd/   at CitizenFX.Core.InternalManager.CallRef (System.Int32 refIndex, System.Byte[] argsSerialized, System.IntPtr& retvalSerialized, System.Int32& retvalSize) 
[0x000b6] in C:\gl\builds\master\fivem\code\client\clrcore\InternalManager.cs:527  
[   1840985] [b2802_GTAProce]             MainThrd/   at (wrapper remoting-invoke-with-check) CitizenFX.Core.InternalManager:CallRef (int,byte[],intptr&,int&) 
[   1840985] [b2802_GTAProce]             MainThrd/   at (wrapper xdomain-dispatch) CitizenFX.Core.InternalManager:CallRef (object,byte[]&,byte[]&,int,byte[],int&) 
[   1840985] [b2802_GTAProce]             MainThrd/  
[   1840985] [b2802_GTAProce]             MainThrd/ Exception rethrown at [0]:  
[   1840985] [b2802_GTAProce]             MainThrd/   at (wrapper xdomain-invoke) CitizenFX.Core.InternalManager:CallRef (int,byte[],intptr&,int&) 
[   1840985] [b2802_GTAProce]             MainThrd/   at (wrapper remoting-invoke-with-check) CitizenFX.Core.InternalManager:CallRef (int,byte[],intptr&,int&) 
[   1840985] [b2802_GTAProce]             MainThrd/   at CitizenFX.Core.MonoScriptRuntime.CallRef (System.Int32 refIndex, System.Byte[] argsSerialized, System.Int32 argsSize, System.IntPtr& retvalSerialized, System.Int32& retvalSize) [0x00013] in C:\gl\builds\master\fivem\code\client\clrcore\MonoScriptRuntime.cs:228
```



