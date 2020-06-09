[Index][home] > Java > Multithreading

---
# Java Multithreading

## Threads 
- Start a thread
```java
Thread t = new Thread(() -> "Hello");
t.start()
```
- wait for thread t to complete
```java
t.join()
```
- stop a thread
```java
thread.interrupt();
```


[home]: /dev-guide
