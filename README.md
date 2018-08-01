# .vim
vim配置
## 获取配置文件
```cmd
	git clone  https://github.com/allegiant/.vim.git
```
## windows 创建软链接
  ```cmd
      mklink c:\vim\.vimrc c:\vim\.vim\vimrc
 ```
## 插件安装
- tern_for_vim
	> 1.安装 node.js
	> 2.进入tern_for_vim目录,执行npm install
- vim-vue
	> 1.执行 npm i -g eslint eslint-plugin-vue
	> 2.创建 .eslintrc.js
  ```cmd
			module.exports = {
				extends: [
					// add more generic rulesets here, such as:
					// 'eslint:recommended',
					'plugin:vue/essential'
				],
				rules: {
					// override/add rules settings here, such as:
					// 'vue/no-unused-vars': 'error'
				}
			}
  ```
