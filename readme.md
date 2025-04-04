# configure `C++` in windows for CP
this is for windows with cmd.

## download compiler form 
```
https://winlibs.com/
```
configure path in `Environment variable -> system variables -> path` and add the `bin` path of winlilbs into it to configure c++ compiler.

## configure c++ snippet (c++ template) in `VS Code`

press `Ctrl + Shift + P` >> `Snippets: Configure Snippets` >> `cpp.json` and paste 

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
now when you create new file, say `sol.cpp`, and to import the template now just type `q1` and press enter.

## build and run from anywhere 
to do this,
create `sol.bat` file and place it anywhere you want. (i put it inside D:\CP\)
make sure to add `sol.bat` to `System PATH`.

```
@echo off
g++ sol.cpp -o sol -O2 -Wall -Wextra -std=c++20 -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -fmax-errors=1
sol.exe
del sol.exe
```
after creating it,
Search "Environment Variables" in Windows.
Edit "Path" under System Variables.
Click New → Add the path D:\CP\.
Now, you can run `sol.bat` from any folder!
