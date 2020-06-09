[Index][home] |> Java |> Code Snippets

# Java Code Snippets
- current time in ISO format
```java
String dateString = ZonedDateTime.now(ZoneOffset.UTC)
                        .format(DateTimeFormatter.ISO_INSTANT)
```


[home]: /
