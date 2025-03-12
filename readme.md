# configure `C++` in windows for CP
this is for windows with cmd.

## download compiler form 
```
https://winlibs.com/
```
configure path in `Environment variable -> system variables -> path` and add the `bin` path of winlilbs into it to configure c++ compiler.

## configure c++ snippet (c++ template) in `VS Code`
```
{
	"New C++ File": {
		"prefix": "q1",
		"body": [
			"/**",
			" *    author:  caelumpirata",
			" *    created: ${CURRENT_DATE}.${CURRENT_MONTH}.${CURRENT_YEAR} ${CURRENT_HOUR}:${CURRENT_MINUTE}:${CURRENT_SECOND}",
			"**/",
			"#include <bits/stdc++.h>",
			"",
			"using namespace std;",
			"",
			"int main() {",
			"  ios::sync_with_stdio(false);",
			"  cin.tie(nullptr);",
			"",
			"  return 0;",
			"}"
		],
		"description": "C++ template with author and timestamp"
	},
	"LeetCode Template": {
		"prefix": "lc",
		"body": [
			"/**",
			" *    author:  caelumpirata",
			" *    created: ${CURRENT_DATE}.${CURRENT_MONTH}.${CURRENT_YEAR} ${CURRENT_HOUR}:${CURRENT_MINUTE}:${CURRENT_SECOND}",
			"**/",
			"#include <bits/stdc++.h>",
			"",
			"using namespace std;",
			"",
			"class Solution {",
			"public:",
			"  ${1:int} ${2:functionName}() {",
			"",
			"  }",
			"};",
			"",
			"int main() {",
			"  ios::sync_with_stdio(false);",
			"  cin.tie(nullptr);",
			"  Solution sol;",
			"  cout << sol.${2}();",
			"  return 0;",
			"}"
		],
		"description": "LeetCode template with dynamic return type and function name"
	}
}
```
