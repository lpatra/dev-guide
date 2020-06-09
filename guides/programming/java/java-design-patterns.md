[Index][home] > Java > Code Snippets

# Java Design Paterns

---
## Creating Objects
- Avoid exceptions from constructors
  - constructors mostly should be initialising variables passed as params
  - so use a factory pattern if you need to initialise the class by doing some other operations like loading a file etc..
    - [constructors vs static factory method](https://www.baeldung.com/java-constructors-vs-static-factory-methods){:target="_blank" rel="noopener"}

---
## Implementing Interfaces
- If you are implementing an interface then the class should not have any other public methods other than the interface, else over time some one might start using the class instead of the interface


[home]: /dev-guide
