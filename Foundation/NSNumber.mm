NSNumber *__cdecl +[NSNumber allocWithZone:](NSNumber_meta *self, SEL a2, _NSZone *a3)
{
  NSNumber *result; // rax

  if ( (NSNumber_meta *)__NSNumberClass == self )
    result = (NSNumber *)_NSPlaceholderValueOrNumber((__int64)&__NSNumberClass, 1);
  else
    result = (NSNumber *)NSAllocateObject(self, 0LL, a3);
  return result;
}

