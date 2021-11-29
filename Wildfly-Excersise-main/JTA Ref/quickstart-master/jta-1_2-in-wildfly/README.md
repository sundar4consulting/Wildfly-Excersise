JTA 1.2 in Wildfly .
===

Author: Sundar<br/>
Level: Intermediate<br/>
Technologies: JTA, JPA, JMS

What is it?
---

This  demonstrates how to use new JTA 1.2 features inside WildFly application server.


`QuickstartEntityRepository` and `QuickstartQueue` classes demonstrace usage of `@Transactional` annotation.
`TransactionScopedPojo` class demonstrates `@TransactionScoped` annotation. `TestCase` class is used to drive the example.


Build and Deploy the 
---

In order to run  in the managed Wildfly application server, run the following command:

```
mvn clean install
```

In order to run quickstart in the remote Wildfly application server, run the following command:

```
mvn clean install -Parq
```
