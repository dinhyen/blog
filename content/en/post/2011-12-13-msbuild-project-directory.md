---
categories:
- technology
date: "2011-12-13T00:00:00Z"
tags:
- msbuild
title: MSBuild Project Directory
---
We're using MSBuild in [Hudson](http://hudson-ci.org/) as part of our continuous integration process.  We put the MSBuild scripts in the same directory as the Visual Studio solution file. Everything has been working well until until we decided, as an experiment, to put the MSBuild scripts in a separate directory from the solution.  Then the build process started to fail with error MSB3202, "the project file was not found".

By using MSBuild's  "/verbosity:diagnostic" flag, we were able to look at the list of properties that MSBuild was using.  In particular, there was a property named MSBuildProjectDirectory which was set to the same directory as the scripts.  Our scripts use relative path to locate the projects; i.e.,

``` xml
<ItemGroup>
  <Projects Include="**\*.csproj" />
</ItemGroup>
```

It's no surprise then that because the MSBuildProjectDirectory was now pointing to the wrong directory, the projects could not be found.

Because MSBuildProjectDirectory is a reserved property, it can't be modified. We need another way to locate the projects by explicitly specifying the project directories.  Hudson provides a few options for retrieving the project directory.  For example, we can use the work space environment variable:

``` xml
<ItemGroup>
    <Projects Include="$(WORKSPACE)\**\*.csproj" />
</ItemGroup>
```
