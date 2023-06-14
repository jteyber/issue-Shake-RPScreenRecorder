# issue-Shake-RPScreenRecorder
example to show the known limitation with RPScreenRecorder library : 
Shake internally uses the native RPScreenRecorder library which automatically disables the screen rotation of the main application UIWindow object.

A workaround was on Shake 15.1.1 not on > 16

# videos demo 

## SDK v15.1.1 - OK

https://github.com/jteyber/issue-Shake-RPScreenRecorder/assets/127939388/7666611d-94f0-4a85-adec-c0fdc93deda1

## SDK v16 - KO

https://github.com/jteyber/issue-Shake-RPScreenRecorder/assets/127939388/c67a2d00-ea85-4f38-a165-33f73f37ece3


## SDK v16.2 - KO

https://github.com/jteyber/issue-Shake-RPScreenRecorder/assets/127939388/abb5c929-b043-4fc3-ae49-441d8fe82e59

## SDK v16.2 using isUserFeedbackEnabled - KO

https://github.com/jteyber/issue-Shake-RPScreenRecorder/assets/127939388/a65d74c9-ed0c-45aa-bab2-279ed15084f7




