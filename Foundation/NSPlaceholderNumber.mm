NSPlaceholderNumber *__cdecl -[NSPlaceholderNumber init](NSPlaceholderNumber *self, SEL a2)
{
  // placeholder 就意味着之后肯定是会被取代的，如果不会被取代，就没有 init 出来的必要的意思吗...
  return 0LL;
}

NSPlaceholderNumber *__cdecl -[NSPlaceholderNumber initWithInt:](NSPlaceholderNumber *self, SEL a2, int a3)
{
  int v4; // [rsp+Ch] [rbp-4h]

  v4 = a3;

  // 其它的 initWithXXX: 等方法也都是调用 CFNumberCreate，唯一的区别是指定的数据长度不同
  return (NSPlaceholderNumber *)CFNumberCreate(kCFAllocatorDefault, 3LL, &v4);
}

NSPlaceholderNumber *__cdecl -[NSPlaceholderNumber initWithCoder:](NSPlaceholderNumber *self, SEL a2, id a3)
{
  __int64 v3; // rax
  id v4; // rbx
  void *v5; // r15
  void *v6; // rax
  NSPlaceholderNumber *v8; // rax
  NSPlaceholderNumber *v9; // rbx
  unsigned __int8 v10; // al
  void *v11; // rax

  v4 = a3;
  if ( !(unsigned __int8)_objc_msgSend(a3, "allowsKeyedCoding", v3) )
    return (NSPlaceholderNumber *)newDecodedNumber(v4);
  v5 = (void *)NSClassFromObject(v4);
  if ( v5 == _objc_msgSend(&OBJC_CLASS___NSKeyedUnarchiver, "self")
    || (unsigned __int8)_objc_msgSend(v4, "containsValueForKey:", CFSTR("NS.number")) )
  {
    v6 = _objc_msgSend(v4, "_decodePropertyListForKey:", CFSTR("NS.number"));
    return (NSPlaceholderNumber *)_objc_msgSend(v6, "retain");
  }
  if ( (unsigned __int8)_objc_msgSend(v4, "containsValueForKey:", CFSTR("NS.boolval")) )
  {
    v10 = (unsigned __int64)_objc_msgSend(v4, "decodeBoolForKey:", CFSTR("NS.boolval"));
    v8 = (NSPlaceholderNumber *)_objc_msgSend(self, "initWithBool:", v10);
  }
  else if ( (unsigned __int8)_objc_msgSend(v4, "containsValueForKey:", CFSTR("NS.intval")) )
  {
    v11 = _objc_msgSend(v4, "decodeInt64ForKey:", CFSTR("NS.intval"));
    v8 = (NSPlaceholderNumber *)_objc_msgSend(self, "initWithLongLong:", v11);
  }
  else
  {
    if ( !(unsigned __int8)_objc_msgSend(v4, "containsValueForKey:", CFSTR("NS.dblval")) )
    {
      v9 = 0LL;
      _objc_msgSend(
        &OBJC_CLASS___NSException,
        "raise:format:",
        NSInternalInconsistencyException,
        CFSTR("*** -[NSPlaceholderNumber initWithCoder:]: unknown number type"));
      return v9;
    }
    _objc_msgSend(v4, "decodeDoubleForKey:", CFSTR("NS.dblval"));
    v8 = (NSPlaceholderNumber *)_objc_msgSend(self, "initWithDouble:");
  }
  return v8;
}