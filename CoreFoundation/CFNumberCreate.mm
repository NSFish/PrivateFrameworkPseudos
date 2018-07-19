unsigned __int64 __fastcall CFNumberCreate(__objc2_class **a1, __int64 a2, unsigned int *a3)
{
  unsigned int *v3; // r12
  __objc2_class **v4; // r15
  double v5; // rcx
  __m128i v6; // xmm0
  bool v7; // dl
  bool v8; // sf
  signed __int64 v9; // r12
  unsigned int v10; // er14
  unsigned int v11; // eax
  __objc2_class **v12; // rdi
  double v13; // rax
  signed __int64 v14; // rax
  __m128i v15; // xmm0
  bool v16; // cf
  bool v17; // zf
  signed __int64 v18; // r13
  unsigned int v19; // ecx
  __int64 v20; // rax
  signed __int64 v21; // rbx
  signed __int64 v22; // rax
  __int64 v23; // rcx
  signed __int64 v24; // rtt
  signed __int64 v25; // rcx
  __int64 v26; // rcx
  __int64 v27; // rcx
  signed __int64 v28; // rax
  signed __int64 v29; // rtt
  signed __int64 v30; // rax
  unsigned int v31; // ecx
  signed __int64 v32; // rtt
  unsigned int *v34; // [rsp+0h] [rbp-40h]
  __int64 v35; // [rsp+8h] [rbp-38h]
  signed __int64 v36; // [rsp+10h] [rbp-30h]

  v3 = a3;
  v4 = a1;
  if ( !a1 )
  {
    v4 = (__objc2_class **)_CFGetTSD(1LL);
    if ( !v4 )
      v4 = kCFAllocatorSystemDefault;
  }
  if ( __CFTaggedNumberClass
    && (kCFAllocatorSystemDefault == v4
     || (!v4 || (__objc2_class **)kCFAllocatorDefault == v4)
     && kCFAllocatorSystemDefault == (__objc2_class **)CFAllocatorGetDefault())
    && __CFNumberCaching != 2 )
  {
    switch ( __CFNumberTypeTable[a2] & 0x1F )
    {
      case 1:
        *(_QWORD *)&v5 = *(char *)v3;
        return objc_debug_taggedpointer_obfuscator ^ (__CFNumberCanonicalTypeIndex[__CFNumberTypeTable[a2] & 7] | 16LL * *(_QWORD *)&v5 & 0xFFFFFFFFFFFFFF0LL | 0xB000000000000000LL);
      case 2:
        *(_QWORD *)&v5 = *(signed __int16 *)v3;
        return objc_debug_taggedpointer_obfuscator ^ (__CFNumberCanonicalTypeIndex[__CFNumberTypeTable[a2] & 7] | 16LL * *(_QWORD *)&v5 & 0xFFFFFFFFFFFFFF0LL | 0xB000000000000000LL);
      case 3:
        *(_QWORD *)&v5 = (signed int)*v3;
        return objc_debug_taggedpointer_obfuscator ^ (__CFNumberCanonicalTypeIndex[__CFNumberTypeTable[a2] & 7] | 16LL * *(_QWORD *)&v5 & 0xFFFFFFFFFFFFFF0LL | 0xB000000000000000LL);
      case 4:
        v5 = *(double *)v3;
        goto LABEL_21;
      case 5:
        v6 = _mm_cvtsi32_si128(*v3);
        *(_QWORD *)&v5 = (unsigned int)(signed int)*(float *)v6.m128i_i32;
        if ( *(float *)v6.m128i_i32 != (float)SLODWORD(v5) )
          goto LABEL_23;
        v7 = *(_QWORD *)&v5 == 0LL;
        v8 = _mm_cvtsi128_si32(v6) < 0;
        break;
      case 6:
        *(_QWORD *)&v5 = (unsigned int)(signed int)*(double *)v3;
        if ( *(double *)v3 != (double)SLODWORD(v5) )
          goto LABEL_23;
        v7 = *(_QWORD *)&v5 == 0LL;
        v8 = *(_QWORD *)v3 < 0;
        break;
      default:
        goto LABEL_23;
    }
    if ( !v7 || !v8 )
    {
LABEL_21:
      if ( (unsigned __int64)(*(_QWORD *)&v5 + 0x7FFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFELL )
        return objc_debug_taggedpointer_obfuscator ^ (__CFNumberCanonicalTypeIndex[__CFNumberTypeTable[a2] & 7] | 16LL * *(_QWORD *)&v5 & 0xFFFFFFFFFFFFFF0LL | 0xB000000000000000LL);
    }
  }
LABEL_23:
  v36 = -2LL;
  v10 = __CFNumberTypeTable[a2];
  if ( !(v10 & 0x20) )
  {
    if ( kCFAllocatorSystemDefault != v4
      && (v4 && (__objc2_class **)kCFAllocatorDefault != v4
       || kCFAllocatorSystemDefault != (__objc2_class **)CFAllocatorGetDefault())
      || __CFNumberCaching )
    {
      goto LABEL_52;
    }
    switch ( v10 & 0x1F )
    {
      case 1u:
        v14 = *(char *)v3;
        if ( (unsigned __int8)(*(_BYTE *)v3 + 1) > 0xDu )
          goto LABEL_52;
        break;
      case 2u:
        v14 = *(signed __int16 *)v3;
        v19 = (unsigned __int16)(v14 + 1);
        goto LABEL_48;
      case 3u:
        v14 = (signed int)*v3;
        v19 = v14 + 1;
LABEL_48:
        if ( v19 > 0xD )
          goto LABEL_52;
        break;
      case 4u:
        v14 = *(_QWORD *)v3;
        if ( (unsigned __int64)(*(_QWORD *)v3 + 1LL) > 0xD )
          goto LABEL_52;
        break;
      default:
        goto LABEL_52;
    }
    v36 = v14;
    v12 = (__objc2_class **)__CFNumberCache[v14 + 1];
    if ( !v12 )
    {
LABEL_52:
      v35 = a2;
      v18 = (unsigned __int16)(((v10 >> 3) & 8) + 8);
      goto LABEL_53;
    }
    return CFRetain(v12);
  }
  if ( v10 & 0x40 )
  {
    v13 = *(double *)v3;
    if ( !*(_QWORD *)v3 )
    {
      v12 = &__kCFNumberFloat64Zero;
      return CFRetain(v12);
    }
    if ( v13 == 1.0 )
    {
      v12 = &__kCFNumberFloat64One;
      return CFRetain(v12);
    }
    if ( COERCE_DOUBLE(_mm_and_si128(_mm_load_si128((const __m128i *)&xmmword_240910), (__m128i)*(unsigned __int64 *)&v13)) >= 1.797693134862316e308/*+Inf*/ )
    {
      v16 = v13 > 0.0;
      v17 = v13 == 0.0;
LABEL_73:
      v12 = &__kCFNumberPositiveInfinity;
      if ( !v16 && !v17 )
        v12 = &__kCFNumberNegativeInfinity;
      return CFRetain(v12);
    }
  }
  else
  {
    v11 = *v3;
    if ( !*v3 )
    {
      v12 = &__kCFNumberFloat32Zero;
      return CFRetain(v12);
    }
    if ( v11 == 1065353216 )
    {
      v12 = &__kCFNumberFloat32One;
      return CFRetain(v12);
    }
    v15 = _mm_cvtsi32_si128(v11);
    if ( COERCE_FLOAT(_mm_and_si128(_mm_load_si128((const __m128i *)&xmmword_240920), v15)) >= 3.4028237e38/*+Inf*/ )
    {
      v16 = *(float *)v15.m128i_i32 > 0.0;
      v17 = *(float *)v15.m128i_i32 == 0.0;
      goto LABEL_73;
    }
  }
  v35 = a2;
  v18 = 8LL;
LABEL_53:
  v34 = v3;
  if ( CFNumberGetTypeID_initOnce != -1 )
    dispatch_once(&CFNumberGetTypeID_initOnce, &__block_literal_global_17);
  v9 = 0LL;
  v20 = _CFRuntimeCreateInstance(v4, 22LL, v18, 0LL);
  v21 = v20;
  if ( v20 )
  {
    v22 = *(_QWORD *)(v20 + 8);
    v23 = __CFNumberCanonicalTypeIndex[v10 & 0x1F] & 7;
    do
    {
      v24 = v22;
      v22 = _InterlockedCompareExchange((volatile signed __int64 *)(v21 + 8), v23 | v22 & 0xFFFFFFFFFFFFFFC0LL, v22);
    }
    while ( v24 != v22 );
    __CFNumberInit(v21, v35, v34);
    v9 = v21;
    if ( v36 != -2 )
    {
      *(_QWORD *)(v21 + 16) = v36;
      if ( v21 >= 0 )
        goto LABEL_79;
      v25 = (((unsigned __int64)v21 ^ objc_debug_taggedpointer_obfuscator) >> 60) & 7;
      if ( v25 == 7 )
        LOWORD(v25) = (unsigned __int8)(((unsigned __int64)v21 ^ objc_debug_taggedpointer_obfuscator) >> 52) + 8;
      if ( (unsigned __int16)v25 != 3 )
LABEL_79:
        v26 = *(_QWORD *)(v21 + 8);
      else
        LOBYTE(v26) = v21 ^ objc_debug_taggedpointer_obfuscator;
      v27 = __CFNumberCanonicalTypes[v26 & 7];
      v28 = *(_QWORD *)(v21 + 8);
      do
      {
        v29 = v28;
        v28 = _InterlockedCompareExchange((volatile signed __int64 *)(v21 + 8), v28 & 0xFFFFFFFFFFFFFFC0LL | 2, v28);
      }
      while ( v29 != v28 );
      if ( _InterlockedCompareExchange(&__CFNumberCache[v36 + 1], v21, 0LL) )
      {
        v30 = *(_QWORD *)(v21 + 8);
        v31 = __CFNumberCanonicalTypeIndex[v27] & 7;
        do
        {
          v32 = v30;
          v30 = _InterlockedCompareExchange((volatile signed __int64 *)(v21 + 8), v31 | v30 & 0xFFFFFFFFFFFFFFC0LL, v30);
        }
        while ( v32 != v30 );
      }
      else
      {
        CFRetain(v21);
      }
      v9 = v21;
    }
  }
  return v9;
}