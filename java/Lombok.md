# Lombok
Lombok注解
* `@Data`：注解在类上，将类提供的所有属性都添加get、set方法，并添加、equals、canEquals、hashCode、toString方法
* `@Setter`：注解在类上，为所有属性添加set方法、注解在属性上为该属性提供set方法
* `@Getter`：注解在类上，为所有的属性添加get方法、注解在属性上为该属性提供get方法
* `@NotNull`：在参数中使用时，如果调用时传了null值，就会抛出空指针异常
* `@Synchronized`: 用于方法，可以锁定指定的对象，如果不指定，则默认创建一个对象锁定
* `@Log`: 作用于类，创建一个log属性
* `@Builder`：使用builder模式创建对象
* `@NoArgsConstructor`：创建一个无参构造函数
* `@AllArgsConstructor`：创建一个全参构造函数
* `@ToStirng`：创建一个toString方法
* `@Accessors(chain = true)`: 使用链式设置属性，set方法返回的是this对象。
* `@RequiredArgsConstructor`：创建对象
* `@UtilityClass`: 工具类
* `@ExtensionMethod`: 设置父类
* `@FieldDefaults`：设置属性的使用范围，如private、public等，也可以设置属性是否被final修饰。
* `@Cleanup`: 关闭流、连接点。
* `@EqualsAndHashCode`：重写equals和hashcode方法。
* `@toString`：创建toString方法。
