# web.xml 配置
<!-- toc -->

## 加载Spring配置文件
**applicationContext.xml放到WEB-INF下**
```xml
<context-param>
    <param-name>contextConfigLocation</param-name>
    <param-value>WEB-INF/applicationContext.xml</param-value>
</context-param>
```
**applicaitonContext.xml放到resources文件夹中**
```xml
<context-param>
    <param-name>contextConfigLocation</param-name>
    <param-value>classpath:applicationContext.xml</param-value>
</context-param>
```

## 配置DispatcherServlet
**配置文件放到WEB-INF下, 文件名为${servlet-name}-servlet.xml**
```xml
<servlet>
    <servlet-name>spring</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <load-on-startup>1</load-on-startup>
</servlet>
<servlet-mapping>
    <servlet-name>spring</servlet-name>
    <url-pattern>/</url-pattern>
</servlet-mapping>
```
**指定配置文件位置**
```xml
<servlet>
    <servlet-name>spring</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
        <param-name>contextConfigLocation</param-name>
        <param-value>classpath:spring-servlet.xml</param-value>
    </init-param>
    <load-on-startup>1</load-on-startup>
</servlet>
<servlet-mapping>
    <servlet-name>spring</servlet-name>
    <url-pattern>/</url-pattern>
</servlet-mapping>
```
## 配置encoding
```xml
<filter>
    <filter-name>encodingFilter</filter-name>
    <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
    <init-param>
        <param-name>encoding</param-name>
        <param-value>UTF-8</param-value>
    </init-param>
    <init-param>
        <param-name>forceEncoding</param-name>
        <param-value>true</param-value>
    </init-param>
</filter>

<filter-mapping>
    <filter-name>encodingFilter</filter-name>
    <url-pattern>/*</url-pattern>
</filter-mapping>
```
## 获得项目的绝对路径
```xml
<context-param>
    <param-name>webAppRootKey</param-name>
    <param-value>ft.webapp</param-value>
</context-param>
<listener>
    <listener-class>org.springframework.web.util.WebAppRootListener</listener-class>
</listener>
```
在项目中使用`System.getProperty("ft.webapp")`来获得项目路径
