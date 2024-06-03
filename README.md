# moeflow-deploy

用于自己部署萌翻服务的配置。

请参见部署视频演示 https://www.bilibili.com/video/BV1EX4y1J7MA/

## docker-compose

建议的部署方式。

1. clone 此repo
2. 将 `.env-backend.sample` 模板复制为 `.env-backend` ，并按模板内说明设置环境变量
3. 将 `.env.sample` 模板复制为 `.env` ，并按模板内说明设置环境变量
4. 运行 `docker-compose up`

## FAQ

### 修改主页内容

升级前端版本至 `v1.0.3` 后端版本至 `v1.0.8` 后，即可在管理员页面-站点管理中，设置主页 HTML 和 CSS，以下为示例：

主页 HTML

```html
<div class="homepage-title">
  <h1>欢迎使用萌翻！</h1>
  <p>
    <a href="login">登陆</a>
  </p>
  <p>
    <a href="register">注册</a>
  </p>
</div>
<div class="homepage-footer">备案号</div>
```

主页 CSS

```css
html {
  width: 100%;
  height: 100%;
}
body {
  width: 100%;
  height: 100%;
  margin: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.homepage-title {
  flex: auto;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.homepage-footer {
  height: 50px;
  text-align: center;
}
```
