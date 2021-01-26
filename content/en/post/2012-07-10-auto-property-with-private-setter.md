---
categories:
- technology
date: "2012-07-10T00:00:00Z"
tags:
- c#
title: Auto property with private setter
---
Sometimes I'd like to only allow a property to be set in the constructor. Something like this:
``` csharp
private Foo _foo;
public Foo Foo
{
	get { return _foo; }
}

public Bar(Foo foo)
{
	_foo = foo;
}
```

This neat little pattern lets you do the same with fewer members (and lines of code):
``` csharp
public Foo { get; private set; }

public Bar(Foo foo)
{
	Foo = foo;
}
```
