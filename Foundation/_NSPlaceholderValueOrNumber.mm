__int64 __usercall _NSPlaceholderValueOrNumber@<rax>(__int64 a1@<rax>, char a2@<dil>)
{
  __int64 result; // rax
  void *v3; // rax
  __int64 v4; // rcx
  void *v5; // rax
  __int64 v6; // rax
  __int64 v7; // [rsp-8h] [rbp-10h]

  // cpv，我猜是const pointer value
  v7 = a1;
  result = _NSPlaceholderValueOrNumber_cpv;
  if ( !_NSPlaceholderValueOrNumber_cpv )
  {
    v3 = _objc_msgSend(&OBJC_CLASS___NSPlaceholderValue, "self", v7);
    result = NSAllocateObject(v3, 0LL, 0LL);

    // _NSPlaceholderValueOrNumber_cpv应该是个全局变量
    // 也就是说NSPlaceholderValue实例只会有一个
    _NSPlaceholderValueOrNumber_cpv = result;
  }

  //相应地 cpn应该是const pointer number..
  v4 = _NSPlaceholderValueOrNumber_cpn;
  if ( !_NSPlaceholderValueOrNumber_cpn )
  {
    v5 = _objc_msgSend(&OBJC_CLASS___NSPlaceholderNumber, "self", v7);
    v6 = NSAllocateObject(v5, 0LL, 0LL);
    v4 = v6;

    // 同理NSPlaceholderNumber实例只会有一个
    _NSPlaceholderValueOrNumber_cpn = v6;

    result = _NSPlaceholderValueOrNumber_cpv;
  }

  if ( a2 ) //a2为true则使用cpn，即返回NSPlaceholderNumber实例
  {
    result = v4;
  }

  // btw，这几兄弟的继承关系是这样的：NSPlaceholderNumber -> NSPlaceholderValue -> NSNumber -> NSValue
  return result;
}