[Index][home] > Java > Testing

---
## JUnit Testing
### Asserting Exception and its message 
```java
public class FeatureTest {
    @Rule
    public ExpectedException expectedException = ExpectedException.none();

    @Test
    public myTest() throws Exception {
        expectedException.expect(RuntimeException.class);
        expectedException.expectMessage("My exception message");

        // code that throws follows
    }
}
```



[home]: /dev-guide
