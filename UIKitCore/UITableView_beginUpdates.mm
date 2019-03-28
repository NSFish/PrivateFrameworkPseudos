void __cdecl -[UITableView beginUpdates](UITableView *self, SEL a2)
{
  __int64 v2; // rax
  __int64 v3; // rax
  __int64 v4; // rax
  __int64 v5; // r14
  __int64 v6; // r14
  void *v7; // rax
  __int64 v8; // [rsp+0h] [rbp-30h]

  v8 = v2;
  v3 = __UILogGetCategoryCachedImpl("TableViewClientOperations", &beginUpdates___s_category);
  if ( *(_BYTE *)v3 & 1 )
  {
    v5 = *(_QWORD *)(v3 + 8);
    if ( (unsigned __int8)os_log_type_enabled(*(_QWORD *)(v3 + 8), 16LL) )
    {
      v6 = objc_retain(v5, 16LL);
      v7 = objc_msgSend(self, "class", v8);
      *((_DWORD *)&v8 - 8) = 138412546;
      *(__int64 *)((char *)&v8 - 28) = (__int64)v7;
      *((_WORD *)&v8 - 10) = 2048;
      *(__int64 *)((char *)&v8 - 18) = (__int64)self;
      _os_log_impl(&dword_0, v6, 16LL, aPCalledBeginup, &v8 - 4, 22LL);
      objc_release(v6);
    }
  }
  v4 = *(__int64 *)((char *)&self->_swipeToDeleteCell + 1);
  if ( !v4 )
  {
    -[UITableView _setupCellAnimations](self, "_setupCellAnimations", v8);
    v4 = *(__int64 *)((char *)&self->_swipeToDeleteCell + 1);
  }
  *(UITableViewCell **)((char *)&self->_swipeToDeleteCell + 1) = (UITableViewCell *)(v4 + 1);
}

void __cdecl -[UITableView _setupCellAnimations](UITableView *self, SEL a2)
{
  -[UITableView _updateVisibleCellsNow:isRecursive:](self, "_updateVisibleCellsNow:isRecursive:", 0LL, 0LL);
  *(_QWORD *)((char *)&self->_tableFlags + 1) = (*(_QWORD *)((char *)&self->_tableFlags + 1) >> 1) & 0x20000000000LL | *(_QWORD *)((char *)&self->_tableFlags + 1) & 0xFFFFBDFFFFFFFFFFLL | 0x400000000000LL;
  -[UITableView _suspendReloads](self, "_suspendReloads");
}

void __cdecl -[UITableView _updateVisibleCellsNow:isRecursive:](UITableView *self, SEL a2, bool a3, bool a4)
{
  double v4; // xmm1_8
  BOOL v5; // er14
  BOOL v6; // ebx
  char *v7; // r12
  signed __int64 *v8; // r13
  int v9; // eax
  __int64 v10; // xmm0_8
  __int64 v11; // rdx
  __int64 v12; // rax
  double v13; // xmm0_8
  char *v14; // rcx
  const __CFString *v15; // rdx
  __int64 v16; // rsi
  __int64 v17; // rcx
  __int64 v18; // rdx
  __int64 v19; // rsi
  double v20; // xmm1_8
  _NSRange v21; // ax
  unsigned __int64 v22; // rcx
  _NSRange v23; // ax
  char *v24; // rsi
  char *v25; // r9
  unsigned __int64 v26; // rcx
  __int64 v27; // r8
  char *v28; // rbx
  unsigned __int64 v29; // rcx
  double v30; // rdi
  unsigned __int64 v31; // rax
  char *v32; // rcx
  unsigned int v33; // ecx
  unsigned __int8 v34; // cf
  unsigned __int64 v35; // rbx
  __int64 v36; // r14
  char *v37; // r13
  UIDictationConnection *v38; // rax
  id v39; // rdx
  id v40; // r8
  bool v41; // r9
  char *v42; // rsi
  void *v43; // rax
  UIDictationConnection *v44; // rax
  struct objc_object *v45; // rdx
  char *v46; // rcx
  struct objc_object *v47; // r8
  bool v48; // r9
  __int64 v49; // rax
  void *v50; // rax
  unsigned __int64 v51; // rax
  unsigned __int64 v52; // rbx
  void *v53; // rdi
  char *v54; // r15
  void *v55; // rax
  void *v56; // r13
  void *v57; // rax
  __int64 v58; // r12
  char *v59; // rsi
  UIDictationConnection *v60; // rdi
  id v61; // rdx
  id v62; // rcx
  id v63; // r8
  bool v64; // r9
  void *v65; // rdi
  char *v66; // r14
  void *v67; // rax
  void *v68; // rbx
  void *v69; // rax
  __int64 v70; // r12
  char *v71; // rsi
  UIDictationConnection *v72; // rdi
  id v73; // rdx
  id v74; // rcx
  id v75; // r8
  bool v76; // r9
  unsigned __int64 v77; // r12
  void *v78; // r13
  struct objc_object *v79; // rdx
  struct objc_object *v80; // rcx
  UIDictationConnection *v81; // rbx
  struct objc_object *v82; // r8
  bool v83; // r9
  id v84; // rdx
  id v85; // rcx
  id v86; // r8
  bool v87; // r9
  unsigned __int64 v88; // r14
  unsigned __int64 v89; // r15
  void *v90; // r13
  struct objc_object *v91; // rdx
  struct objc_object *v92; // rcx
  UIDictationConnection *v93; // rbx
  struct objc_object *v94; // r8
  bool v95; // r9
  id v96; // rdx
  id v97; // rcx
  id v98; // r8
  bool v99; // r9
  id v100; // rdx
  id v101; // rcx
  id v102; // r8
  bool v103; // r9
  bool v104; // r14
  const char *v105; // rsi
  signed __int64 v106; // rcx
  __int16 v107; // r8
  void *v108; // rdi
  signed __int64 v109; // rax
  signed __int64 v110; // rcx
  __int16 v111; // dx
  _UITableViewSeparatorView *v112; // rax
  _UITableViewSeparatorView *v113; // rax
  UIDictationConnection *v114; // rdi
  id v115; // rdx
  id v116; // rcx
  id v117; // r8
  bool v118; // r9
  char v119; // al
  void *v120; // r15
  void *v121; // rbx
  void *v122; // rax
  const char *v123; // rsi
  unsigned int v124; // ebx
  signed __int64 v125; // rax
  signed __int64 v126; // rcx
  __int16 v127; // dx
  _UITableViewSubviewManager *v128; // rbx
  char *v129; // r13
  unsigned __int64 v130; // r15
  char *v131; // rbx
  void *v132; // rax
  void *v133; // r14
  __int64 v134; // rax
  const char *v135; // rsi
  _UITableViewSubviewManager *v136; // rdx
  void *v137; // rax
  UIDictationConnection *v138; // rbx
  id v139; // rdx
  id v140; // rcx
  id v141; // r8
  bool v142; // r9
  UIDictationConnection *v143; // rdi
  unsigned __int64 v144; // rax
  signed __int64 v145; // rsi
  void *v146; // rax
  UIDictationConnection *v147; // rbx
  id v148; // rdx
  id v149; // rcx
  id v150; // r8
  bool v151; // r9
  UIDictationConnection *v152; // r13
  struct objc_object *v153; // rdx
  struct objc_object *v154; // rcx
  void *v155; // rbx
  struct objc_object *v156; // r8
  bool v157; // r9
  __int64 v158; // r15
  unsigned __int64 v159; // r12
  char v160; // al
  signed __int64 v161; // rcx
  _UITableViewSubviewManager *v162; // rbx
  __int64 v163; // rax
  UIDictationConnection *v164; // rbx
  UIDictationConnection *v165; // rsi
  struct objc_object *v166; // rdx
  struct objc_object *v167; // rcx
  struct objc_object *v168; // r8
  bool v169; // r9
  __int64 v170; // rax
  __int64 v171; // r12
  void *v172; // rax
  __int64 v173; // rcx
  UIDictationConnection *v174; // rdi
  id v175; // rdx
  id v176; // rcx
  id v177; // r8
  bool v178; // r9
  signed __int64 v179; // rax
  signed __int64 v180; // rdx
  __int16 v181; // si
  double v182; // xmm0_8
  signed __int64 v183; // rax
  signed __int64 v184; // rcx
  __int64 v185; // rdx
  signed __int64 v186; // rsi
  UIDictationConnection *v187; // r15
  id v188; // rdx
  id v189; // rcx
  id v190; // r8
  bool v191; // r9
  id v192; // rdx
  id v193; // rcx
  id v194; // r8
  bool v195; // r9
  void *v196; // rax
  __int64 v197; // rax
  UIDictationConnection *v198; // rbx
  const __CFString *v199; // rdi
  UIDictationConnection *v200; // r14
  id v201; // rdx
  id v202; // rcx
  id v203; // r8
  bool v204; // r9
  void *v205; // rax
  UIDictationConnection *v206; // r12
  __int64 v207; // rax
  __int64 v208; // rbx
  UIDictationConnection *v209; // rdi
  id v210; // rdx
  id v211; // rcx
  id v212; // r8
  bool v213; // r9
  UIDictationConnection *v214; // rdi
  id v215; // rdx
  id v216; // rcx
  id v217; // r8
  bool v218; // r9
  id v219; // rdx
  id v220; // rcx
  id v221; // r8
  bool v222; // r9
  _UITableViewSubviewManager *v223; // rbx
  __int64 v224; // rax
  UIDictationConnection *v225; // rbx
  UIDictationConnection *v226; // rsi
  struct objc_object *v227; // rdx
  struct objc_object *v228; // rcx
  struct objc_object *v229; // r8
  bool v230; // r9
  __int64 v231; // rax
  UIDictationConnection *v232; // r14
  char *v233; // r12
  void *v234; // rax
  __int64 v235; // rcx
  id v236; // rdx
  id v237; // rcx
  id v238; // r8
  bool v239; // r9
  bool v240; // al
  bool v241; // al
  void *v242; // rax
  __int64 v243; // rax
  UIDictationConnection *v244; // r15
  const __CFString *v245; // rdi
  id v246; // rdx
  id v247; // rcx
  id v248; // r8
  bool v249; // r9
  void *v250; // rax
  UIDictationConnection *v251; // r15
  __int64 v252; // rax
  UIDictationConnection *v253; // rbx
  char *v254; // rax
  id v255; // rdx
  id v256; // rcx
  id v257; // r8
  bool v258; // r9
  id v259; // rdx
  id v260; // rcx
  id v261; // r8
  bool v262; // r9
  id v263; // rdx
  id v264; // rcx
  id v265; // r8
  bool v266; // r9
  const __CFString *v267; // [rsp-20h] [rbp-310h]
  __int64 v268; // [rsp-18h] [rbp-308h]
  char *v269; // [rsp-10h] [rbp-300h]
  __int64 v270; // [rsp-8h] [rbp-2F8h]
  bool v271; // [rsp+0h] [rbp-2F0h]
  void **v272; // [rsp+8h] [rbp-2E8h]
  __int64 v273; // [rsp+10h] [rbp-2E0h]
  __int64 (__fastcall *v274)(); // [rsp+18h] [rbp-2D8h]
  void *v275; // [rsp+20h] [rbp-2D0h]
  char *v276; // [rsp+28h] [rbp-2C8h]
  UIDictationConnection *v277; // [rsp+30h] [rbp-2C0h]
  int v278; // [rsp+38h] [rbp-2B8h]
  double v279[4]; // [rsp+40h] [rbp-2B0h]
  char v280; // [rsp+60h] [rbp-290h]
  __int64 v281; // [rsp+68h] [rbp-288h]
  __int64 v282; // [rsp+70h] [rbp-280h]
  __int64 v283; // [rsp+78h] [rbp-278h]
  char v284; // [rsp+80h] [rbp-270h]
  __int64 v285; // [rsp+88h] [rbp-268h]
  char *v286; // [rsp+90h] [rbp-260h]
  __int64 v287; // [rsp+98h] [rbp-258h]
  __int128 v288; // [rsp+A0h] [rbp-250h]
  __int128 v289; // [rsp+B0h] [rbp-240h]
  __int128 v290; // [rsp+C0h] [rbp-230h]
  __int128 v291; // [rsp+D0h] [rbp-220h]
  const __CFString *v292; // [rsp+E0h] [rbp-210h]
  __int64 v293; // [rsp+E8h] [rbp-208h]
  char *v294; // [rsp+F0h] [rbp-200h]
  __int64 v295; // [rsp+F8h] [rbp-1F8h]
  __int128 v296; // [rsp+100h] [rbp-1F0h]
  __int128 v297; // [rsp+110h] [rbp-1E0h]
  double v298; // [rsp+120h] [rbp-1D0h]
  unsigned __int64 v299; // [rsp+128h] [rbp-1C8h]
  char *v300; // [rsp+130h] [rbp-1C0h]
  UIDictationConnection *v301; // [rsp+138h] [rbp-1B8h]
  unsigned __int64 v302; // [rsp+140h] [rbp-1B0h]
  double v303; // [rsp+148h] [rbp-1A8h]
  SEL v304; // [rsp+150h] [rbp-1A0h]
  int v305; // [rsp+15Ch] [rbp-194h]
  UIDictationConnection *v306; // [rsp+160h] [rbp-190h]
  char *v307; // [rsp+168h] [rbp-188h]
  char *v308; // [rsp+170h] [rbp-180h]
  const __CFString *v309; // [rsp+178h] [rbp-178h]
  __int64 v310; // [rsp+180h] [rbp-170h]
  char *v311; // [rsp+188h] [rbp-168h]
  double v312; // [rsp+190h] [rbp-160h]
  int v313; // [rsp+19Ch] [rbp-154h]
  __int128 v314; // [rsp+1A0h] [rbp-150h]
  __int128 v315; // [rsp+1B0h] [rbp-140h]
  char *v316; // [rsp+1C8h] [rbp-128h]
  unsigned __int64 v317; // [rsp+1D0h] [rbp-120h]
  const char *v318; // [rsp+1D8h] [rbp-118h]
  const char *v319; // [rsp+1E0h] [rbp-110h]
  unsigned __int64 v320; // [rsp+1E8h] [rbp-108h]
  char *v321; // [rsp+1F0h] [rbp-100h]
  unsigned __int64 v322; // [rsp+1F8h] [rbp-F8h]
  char *v323; // [rsp+200h] [rbp-F0h]
  char *v324; // [rsp+208h] [rbp-E8h]
  BOOL v325; // [rsp+214h] [rbp-DCh]
  char *v326; // [rsp+218h] [rbp-D8h]
  signed __int64 *v327; // [rsp+220h] [rbp-D0h]
  unsigned __int64 *v328; // [rsp+228h] [rbp-C8h]
  double v329; // [rsp+230h] [rbp-C0h]
  void *v330; // [rsp+238h] [rbp-B8h]
  char v331; // [rsp+240h] [rbp-B0h]

  v5 = a4;
  v6 = a3;
  v7 = (char *)self;
  v8 = (signed __int64 *)((char *)&self->_coalescedContentSizeDelta + 1);
  if ( !a4 )
  {
    if ( *(_QWORD *)((char *)&self->_tableFlags + 1) & 0x2400000000000LL
      || *(_QWORD *)((char *)&self->_indexOverlaySelectionView + 1) > 0LL
      || !*(UITableViewDataSource **)((char *)&self->_dataSource + 1) )
    {
      return;
    }
    -[UITableView _updateShowScrollIndicatorsFlag](self, "_updateShowScrollIndicatorsFlag");
    -[UITableView _reapTentativeViews](self, "_reapTentativeViews");
  }
  ((void (__cdecl *)(UITableView *, SEL))objc_msgSend)(self, "_suspendReloads");
  LOBYTE(v9) = 1;
  v313 = v9;
  v304 = a2;
  LODWORD(v318) = v6;
  if ( !_bittest64((const signed __int64 *)((char *)&self->_tableFlags + 1), 0x2Du) && (_BYTE)v6 )
  {
    v313 = 0;
    -[UITableView _setNeedsVisibleCellsUpdate:withFrames:](self, "_setNeedsVisibleCellsUpdate:withFrames:", 0LL, 0LL);
  }
  v316 = (char *)objc_msgSend(*(void **)((char *)&self->_dataSource + 1), "numberOfRows");
  -[UIScrollView contentSize](self, "contentSize");
  v298 = v4;
  objc_msgSend_stret(v279, (const char *)self, "_contentInset");
  v10 = *(__int64 *)&v279[0];
  v303 = v279[0];
  if ( !(_BYTE)v5 && _bittest64((const signed __int64 *)((char *)&self->_tableFlags + 9), 0x38u) )
  {
    v11 = *(__int64 *)((char *)&self->_shadowUpdatesController + 1);
    v12 = *(unsigned __int64 *)((char *)&self->_preReloadVisibleRowRange.var0 + 1);
    if ( v12 + v11 > (unsigned __int64)v316 )
    {
      v12 = (__int64)&v316[-v11];
      *(unsigned __int64 *)((char *)&self->_preReloadVisibleRowRange.var0 + 1) = (unsigned __int64)&v316[-v11];
    }
    if ( v12 )
    {
      -[UIScrollView contentOffset](self, "contentOffset");
      v330 = (void *)v10;
      v13 = v303;
      -[UITableView _contentOffsetYForRestoringScrollPositionOfFirstVisibleRowWithContentInsetTop:](
        self,
        "_contentOffsetYForRestoringScrollPositionOfFirstVisibleRowWithContentInsetTop:",
        v303);
      v4 = v13;
      v10 = (__int64)v330;
      -[UITableView setContentOffset:](self, "setContentOffset:", *(double *)&v330, v4);
    }
  }
  objc_msgSend_stret(&v309, (const char *)self, "_visibleBounds");
  if ( !(unsigned __int8)-[UITableView _estimatesHeights](self, "_estimatesHeights") )
    goto LABEL_220;
  v270 = *(_QWORD *)&v312;
  v269 = v311;
  v268 = v310;
  v267 = v309;
  CGRectGetMinY(self, v310, v309, v311);
  v330 = (void *)v10;
  v14 = *(char **)((char *)&self->_visibleBounds.var0.var1 + 1);
  v15 = *(const __CFString **)((char *)&self->_estimatedSectionFooterHeight + 1);
  v16 = *(_QWORD *)((char *)&self->_visibleBounds.var0.var0 + 1);
  v270 = *(_QWORD *)((char *)&self->_visibleBounds.var1.var0 + 1);
  v269 = v14;
  v268 = v16;
  v267 = v15;
  CGRectGetMinY(self, v16, v15, v14);
  if ( *(double *)&v10 <= *(double *)&v330 )
  {
LABEL_220:
    v270 = *(_QWORD *)&v312;
    v269 = v311;
    v268 = v310;
    v267 = v309;
    v23 = ((_NSRange (__cdecl *)(UITableView *, SEL, CGRect))objc_msgSend)(
            self,
            "_visibleGlobalRowsInRect:",
            *(CGRect *)&v267);
    goto LABEL_23;
  }
  v17 = *(_QWORD *)((char *)&self->_visibleBounds.var0.var1 + 1);
  v18 = *(_QWORD *)((char *)&self->_estimatedSectionFooterHeight + 1);
  v19 = *(_QWORD *)((char *)&self->_visibleBounds.var0.var0 + 1);
  v270 = *(_QWORD *)((char *)&self->_visibleBounds.var1.var0 + 1);
  CGRectGetMinY(self, v19, v18, v17);
  v330 = (void *)v10;
  CGRectGetMinY(self, v310, v309, v311);
  v20 = *(double *)&v330 - *(double *)&v10;
  CGRectDivide(&v314, &v292, 1LL);
  -[UIScrollView contentSize](self, "contentSize", v20);
  *(double *)&v330 = v20;
  *(_OWORD *)&v269 = v315;
  *(_OWORD *)&v267 = v314;
  v21 = ((_NSRange (__cdecl *)(UITableView *, SEL, CGRect, bool))objc_msgSend)(
          self,
          "_visibleGlobalRowsInRect:canGuess:",
          *(CGRect *)&v267,
          0);
  v322 = v21.var0;
  v317 = v21.var1;
  -[UIScrollView contentSize](self, "contentSize");
  v4 = v20 - *(double *)&v330;
  *(double *)&v10 = 0.0;
  if ( v4 != 0.0 )
  {
    *(double *)&v330 = v4;
    -[UIScrollView contentOffset](self, "contentOffset");
    v4 = v4 + *(double *)&v330;
    -[UITableView setContentOffset:](self, "setContentOffset:", 0.0, v4);
  }
  v270 = v295;
  v269 = v294;
  v268 = v293;
  v267 = v292;
  v23 = ((_NSRange (__cdecl *)(UITableView *, SEL, CGRect))objc_msgSend)(
          self,
          "_visibleGlobalRowsInRect:",
          *(CGRect *)&v267);
  v22 = v23.var1;
  v23.var1 = v317;
  if ( v317 )
  {
    if ( v22 )
    {
      v23.var0 = NSUnionRange(v322, v317, v23.var0);
LABEL_23:
      v24 = (char *)v23.var0;
      goto LABEL_24;
    }
    v24 = (char *)v322;
  }
  else
  {
    v24 = (char *)v23.var0;
    v23.var1 = v22;
  }
LABEL_24:
  v328 = (unsigned __int64 *)((char *)&self->_subviewManager + 1);
  v25 = *(char **)((char *)&self->_visibleRows.var0 + 1);
  if ( v25 )
  {
    if ( !v23.var1 )
    {
      v29 = 0LL;
      v30 = 0.0;
      v320 = 0LL;
      v27 = 0LL;
      v28 = 0LL;
      v23.var1 = 0LL;
      goto LABEL_59;
    }
    v26 = *v328;
    if ( (unsigned __int64)v24 >= *v328 )
    {
      v28 = &v24[-v26];
      if ( (unsigned __int64)v24 <= v26 )
      {
        v320 = 0LL;
        v27 = 0LL;
        v28 = 0LL;
      }
      else
      {
        if ( v25 < v28 )
          v28 = *(char **)((char *)&self->_visibleRows.var0 + 1);
        v320 = 0LL;
        v27 = 0LL;
      }
    }
    else if ( (_BYTE)v318 )
    {
      v27 = v26 - (_QWORD)v24;
      if ( v23.var1 < v26 - (unsigned __int64)v24 )
        v27 = v23.var1;
      v28 = 0LL;
      v320 = (unsigned __int64)v24;
    }
    else
    {
      v320 = 0LL;
      v27 = 0LL;
      v28 = 0LL;
      v24 = (char *)v26;
    }
    v23.var0 = (unsigned __int64)&v24[v23.var1];
    v29 = (unsigned __int64)&v25[v26];
    *(_QWORD *)&v30 = &v24[v23.var1 - v29];
    if ( (unsigned __int64)&v24[v23.var1] > v29 )
    {
      if ( (_BYTE)v318 )
      {
        if ( (unsigned __int64)v24 >= v29 )
          v29 = (unsigned __int64)v24;
        if ( v23.var1 < *(_QWORD *)&v30 )
          v30 = *(double *)&v23.var1;
      }
      else
      {
        v30 = 0.0;
        v33 = v29 - (_DWORD)v24;
        v23.var1 = v33;
        if ( (v33 & 0x80000000) != 0 )
          v23.var1 = 0LL;
        v29 = 0LL;
      }
      goto LABEL_58;
    }
    if ( v31 >= v29 )
    {
      v29 = 0LL;
      v30 = 0.0;
LABEL_58:
      v25 = 0LL;
      goto LABEL_59;
    }
    v32 = (char *)(v29 - v31);
    if ( v32 < v25 )
      v25 = v32;
    v29 = 0LL;
    v30 = 0.0;
  }
  else
  {
    v29 = 0LL;
    if ( (_BYTE)v318 )
      v29 = (unsigned __int64)v24;
    v320 = 0LL;
    if ( !(_BYTE)v318 )
      v23.var1 = 0LL;
    v30 = *(double *)&v23.var1;
    v27 = 0LL;
    v25 = 0LL;
    v28 = 0LL;
  }
LABEL_59:
  v299 = v29;
  v330 = v7;
  v325 = v5;
  v326 = v28;
  if ( &v24[v23.var1] > v316 )
  {
    v319 = *(const char **)&v30;
    v322 = (unsigned __int64)v24;
    v317 = v23.var1;
    v308 = (char *)v27;
    v321 = v25;
    v196 = objc_msgSend(
             &OBJC_CLASS___NSString,
             "stringWithUTF8String:",
             "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m");
    v197 = objc_retainAutoreleasedReturnValue(v196);
    v198 = (UIDictationConnection *)v197;
    v199 = CFSTR("<Unknown File>");
    if ( v197 )
      v199 = (const __CFString *)v197;
    v200 = (UIDictationConnection *)objc_retain(v199, "stringWithUTF8String:");
    objc_release(v198, "stringWithUTF8String:", v201, v202, v203, v204, v271);
    v205 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, "currentHandler");
    v206 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v205);
    v207 = NSStringFromRange(v322, v317);
    v208 = objc_retainAutoreleasedReturnValue(v207);
    v269 = v316;
    v268 = v208;
    v267 = CFSTR("UITableView is trying to layout cells with a global row range of %@ when there are only %ld rows - this is a UIKit bug");
    objc_msgSend(
      v206,
      "handleFailureInMethod:object:file:lineNumber:description:",
      v304,
      v330,
      v200,
      2568LL,
      CFSTR("UITableView is trying to layout cells with a global row range of %@ when there are only %ld rows - this is a UIKit bug"),
      v208,
      v316);
    v209 = (UIDictationConnection *)v208;
    v28 = v326;
    objc_release(v209, "handleFailureInMethod:object:file:lineNumber:description:", v210, v211, v212, v213, v271);
    v214 = v206;
    v7 = (char *)v330;
    objc_release(v214, "handleFailureInMethod:object:file:lineNumber:description:", v215, v216, v217, v218, v271);
    objc_release(v200, "handleFailureInMethod:object:file:lineNumber:description:", v219, v220, v221, v222, v271);
    v25 = v321;
    v27 = (__int64)v308;
    v30 = *(double *)&v319;
    v23.var1 = v317;
    v24 = (char *)v322;
  }
  v305 = *(_DWORD *)(v7 + 2681);
  v34 = _bittest64(v8 + 2, 0x3Eu);
  v327 = v8;
  if ( v34 )
  {
    v319 = *(const char **)&v30;
    v35 = v23.var1;
    v36 = v27;
    v37 = v25;
    v38 = (UIDictationConnection *)objc_retain(*(_QWORD *)(v7 + 2841), v24);
    *(_QWORD *)(v7 + 2841) = 0LL;
    v306 = v38;
    objc_release(v38, v24, v39, (id)v38, v40, v41, v271);
    v25 = v37;
    v27 = v36;
    v30 = *(double *)&v319;
    v23.var1 = v35;
    v28 = v326;
    v8 = v327;
    *(_DWORD *)(v7 + 2681) = 0;
  }
  else
  {
    v306 = 0LL;
  }
  if ( (unsigned __int64)v25 | (unsigned __int64)v28 | *(_QWORD *)&v30 | v27 && !_bittest64(v8 + 1, 0x2Du) )
  {
    v321 = v25;
    v308 = (char *)v27;
    v319 = *(const char **)&v30;
    v317 = v23.var1;
    v322 = (unsigned __int64)v24;
    v42 = "_reorderingSupport";
    v43 = objc_msgSend(v7, "_reorderingSupport");
    v44 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v43);
    v301 = v44;
    if ( v44 )
      *(double *)&v49 = COERCE_DOUBLE(objc_retain(*(_QWORD *)&v44->_offlineOnly, "_reorderingSupport"));
    else
      *(double *)&v49 = 0.0;
    v329 = *(double *)&v49;
    if ( v321 )
    {
      v42 = "count";
      v50 = objc_msgSend(*(void **)(v7 + 1857), "count");
      v46 = v321;
      if ( v50 )
      {
        v51 = v328[1];
        v53 = *(void **)(v7 + 1857);
        v302 = v328[1] - (_QWORD)v321;
        v52 = v302;
        if ( v302 < v51 )
        {
          v323 = "objectAtIndexedSubscript:";
          v307 = "_indexPath";
          v324 = "_reuseTableViewCell:withIndexPath:didEndDisplaying:";
          v300 = "indexPathForRowAtGlobalRow:";
          v54 = v321;
          do
          {
            v55 = objc_msgSend(v53, v323, v52, v46);
            v56 = (void *)objc_unsafeClaimAutoreleasedReturnValue(v55);
            if ( *(void **)&v329 != v56 )
            {
              if ( _bittest((const signed __int32 *)v327 + 4, 0x1Au) )
                v57 = objc_msgSend(*(void **)(v7 + 1745), v300, v52 + *v328);
              else
                v57 = objc_msgSend(v56, v307);
              v58 = objc_retainAutoreleasedReturnValue(v57);
              v59 = v324;
              objc_msgSend(v330, v324, v56, v58, 1LL);
              v60 = (UIDictationConnection *)v58;
              v7 = (char *)v330;
              objc_release(v60, v59, v61, v62, v63, v64, v271);
            }
            ++v52;
            v53 = *(void **)(v7 + 1857);
            --v54;
          }
          while ( v54 );
        }
        v42 = "removeObjectsInRange:";
        objc_msgSend(v53, "removeObjectsInRange:", v302, v321);
        v8 = v327;
        v28 = v326;
      }
    }
    if ( v28 )
    {
      v42 = "count";
      if ( objc_msgSend(*(void **)(v7 + 1857), "count", v45, v46) )
      {
        v65 = *(void **)(v7 + 1857);
        v323 = "objectAtIndexedSubscript:";
        v321 = "_indexPath";
        v324 = "_reuseTableViewCell:withIndexPath:didEndDisplaying:";
        v307 = "indexPathForRowAtGlobalRow:";
        v66 = 0LL;
        do
        {
          v67 = objc_msgSend(v65, v323, v66);
          v68 = (void *)objc_unsafeClaimAutoreleasedReturnValue(v67);
          if ( *(void **)&v329 != v68 )
          {
            if ( _bittest((const signed __int32 *)v327 + 4, 0x1Au) )
              v69 = objc_msgSend(*(void **)(v7 + 1745), v307, &v66[*v328]);
            else
              v69 = objc_msgSend(v68, v321);
            v70 = objc_retainAutoreleasedReturnValue(v69);
            v71 = v324;
            objc_msgSend(v330, v324, v68, v70, 1LL);
            v72 = (UIDictationConnection *)v70;
            v7 = (char *)v330;
            objc_release(v72, v71, v73, v74, v75, v76, v271);
          }
          ++v66;
          v65 = *(void **)(v7 + 1857);
        }
        while ( v326 != v66 );
        v42 = "removeObjectsInRange:";
        objc_msgSend(v65, "removeObjectsInRange:", 0LL);
        v8 = v327;
      }
    }
    if ( !(_BYTE)v318 )
      goto LABEL_115;
    if ( _UIApplicationLinkedOnVersion )
    {
      if ( _UIApplicationLinkedOnVersion < (unsigned int)&loc_B0200 )
      {
LABEL_94:
        v46 = v308;
        if ( v308 )
        {
          if ( !_bittest64(v327 + 1, 0x2Du) )
          {
            v77 = (unsigned __int64)&v308[v320 - 1];
            if ( v77 >= v320 )
            {
              v326 = (_BYTE *)(&stru_740 + 1);
              v323 = "insertObject:atIndex:";
              v78 = v330;
              while ( 1 )
              {
                v42 = "_createPreparedCellForGlobalRow:willDisplay:";
                v81 = (UIDictationConnection *)objc_msgSend(
                                                 v78,
                                                 "_createPreparedCellForGlobalRow:willDisplay:",
                                                 v77,
                                                 1LL);
                if ( _bittest64(v327 + 1, 0x2Du) )
                  break;
                v42 = v323;
                objc_msgSend(*(void **)&v326[(_QWORD)v78], v323, v81, 0LL);
                objc_release(v81, v42, v84, v85, v86, v87, v271);
                if ( v77 )
                {
                  if ( --v77 >= v320 )
                    continue;
                }
                goto LABEL_104;
              }
              objc_release(v81, "_createPreparedCellForGlobalRow:willDisplay:", v79, v80, v82, v83, v271);
            }
          }
        }
LABEL_104:
        v88 = v299;
        if ( v319 )
        {
          if ( !_bittest64(v327 + 1, 0x2Du) )
          {
            v89 = (unsigned __int64)&v319[v299];
            if ( v299 < (unsigned __int64)&v319[v299] )
            {
              v326 = "_createPreparedCellForGlobalRow:willDisplay:";
              v323 = (_BYTE *)(&stru_740 + 1);
              v324 = "addObject:";
              v90 = v330;
              while ( 1 )
              {
                v42 = v326;
                v93 = (UIDictationConnection *)objc_msgSend(v90, v326, v88, 1LL);
                if ( _bittest64(v327 + 1, 0x2Du) )
                  break;
                v42 = v324;
                objc_msgSend(*(void **)&v323[(_QWORD)v90], v324, v93);
                objc_release(v93, v42, v96, v97, v98, v99, v271);
                if ( ++v88 >= v89 )
                  goto LABEL_112;
              }
              objc_release(v93, v42, v91, v92, v94, v95, v271);
            }
          }
        }
LABEL_112:
        if ( _UIApplicationLinkedOnVersion )
        {
          v7 = (char *)v330;
          v8 = v327;
          if ( _UIApplicationLinkedOnVersion < (unsigned int)&loc_B0200 )
          {
LABEL_115:
            objc_release(v301, v42, v45, (id)v46, v47, v48, v271);
            v30 = v329;
            objc_release(*(UIDictationConnection **)&v329, v42, v100, v101, v102, v103, v271);
            v24 = (char *)v322;
            v23.var1 = v317;
            goto LABEL_116;
          }
        }
        else
        {
          v241 = __UIApplicationLinkedOnOrAfter((unsigned __int64)&loc_B0200);
          v7 = (char *)v330;
          v8 = v327;
          if ( !v241 )
            goto LABEL_115;
        }
        v42 = "_endSuspendingUpdates";
        objc_msgSend(v7, "_endSuspendingUpdates");
        goto LABEL_115;
      }
    }
    else if ( !__UIApplicationLinkedOnOrAfter((unsigned __int64)&loc_B0200) )
    {
      goto LABEL_94;
    }
    v42 = "_beginSuspendingUpdates";
    objc_msgSend(v7, "_beginSuspendingUpdates", v45, v46);
    goto LABEL_94;
  }
LABEL_116:
  v23.var0 = v8[1];
  if ( !_bittest64((const signed __int64 *)&v23, 0x2Du) )
  {
    v23.var0 = (unsigned __int64)v328;
    *v328 = (unsigned __int64)v24;
    *(_QWORD *)(v23.var0 + 8) = v23.var1;
    v30 = COERCE_DOUBLE(&v280);
    objc_msgSend_stret(&v280, v7, "_visibleBounds");
    *(_QWORD *)(v7 + 1825) = v283;
    *(_QWORD *)(v7 + 1817) = v282;
    v23.var0 = *(_QWORD *)&v280;
    *(_QWORD *)(v7 + 1809) = v281;
    *(_QWORD *)(v7 + 1801) = v23.var0;
    v23.var0 = v8[1];
  }
  v104 = v325;
  if ( v23.var0 & 0x1C000000000LL && _UIApplicationUsesLegacyUI() )
  {
    v105 = *(const char **)(v7 + 1745);
    if ( v105 )
    {
      v30 = COERCE_DOUBLE(&v296);
      objc_msgSend_stret(&v296, v105, "rectForTableHeaderView");
    }
    else
    {
      *(double *)&v10 = 0.0;
      v297 = 0LL;
      v296 = 0LL;
    }
    *(_OWORD *)&v269 = v297;
    *(_OWORD *)&v267 = v296;
    CGRectGetMaxY(*(_QWORD *)&v30, *((_QWORD *)&v296 + 1), v296, v297);
    v329 = *(double *)&v10;
    objc_msgSend(v7, "contentOffset");
    *(double *)&v10 = v329;
    if ( v329 <= v4 )
    {
      v109 = v8[1];
      if ( !_bittest64(&v109, 0x35u) )
        goto LABEL_133;
      v110 = v8[2];
      v111 = *((_WORD *)v8 + 12);
      *v8 = *v8;
      v8[2] = v110;
      v8[1] = v109 & 0xFFDFFFFFFFFFFFFFLL;
      *((_WORD *)v8 + 12) = v111;
    }
    else
    {
      LOBYTE(v23.var0) = (unsigned __int64)objc_msgSend(v7, "_shouldDisplayTopSeparator");
      v106 = v8[1];
      v23.var1 = ((unsigned __int64)v8[1] >> 53) & 1;
      LOBYTE(v23.var1) ^= LOBYTE(v23.var0);
      if ( LOBYTE(v23.var1) != 1 )
        goto LABEL_133;
      v23.var1 = v8[2];
      v107 = *((_WORD *)v8 + 12);
      *v8 = *v8;
      v8[2] = v23.var1;
      *((_WORD *)v8 + 12) = v107;
      v8[1] = ((unsigned __int64)LOBYTE(v23.var0) << 53) | v106 & 0xFFDFFFFFFFFFFFFFLL;
      if ( LOBYTE(v23.var0) )
      {
        v329 = v329 + -1.0;
        *(double *)&v10 = v329;
        objc_msgSend_stret(&v284, v7, "bounds");
        v270 = v287;
        v269 = v286;
        v268 = v285;
        v267 = *(const __CFString **)&v284;
        CGRectGetWidth(&v284, v285, *(_QWORD *)&v284, v286);
        *(_QWORD *)&v314 = 0LL;
        v4 = v329;
        *((double *)&v314 + 1) = v329;
        *(_QWORD *)&v315 = v10;
        *((_QWORD *)&v315 + 1) = 4607182418800017408LL;
        v108 = *(void **)(v7 + 1945);
        if ( v108 )
        {
          *(_OWORD *)&v269 = v315;
          *(_OWORD *)&v267 = v314;
          objc_msgSend(v108, "setFrame:", v314, v315);
        }
        else
        {
          v112 = (_UITableViewSeparatorView *)objc_msgSend(&OBJC_CLASS____UITableViewSeparatorView, "alloc");
          *(_OWORD *)&v269 = v315;
          *(_OWORD *)&v267 = v314;
          v113 = (_UITableViewSeparatorView *)-[_UITableViewSeparatorView initWithFrame:withTable:](
                                                v112,
                                                "initWithFrame:withTable:",
                                                v7,
                                                v314,
                                                v315);
          v114 = *(UIDictationConnection **)(v7 + 1945);
          *(_QWORD *)(v7 + 1945) = v113;
          objc_release(v114, "initWithFrame:withTable:", v115, v116, v117, v118, v271);
          objc_msgSend(*(void **)(v7 + 1945), "setAutoresizingMask:", 2LL);
        }
        objc_msgSend(v7, "_addContentSubview:atBack:", *(_QWORD *)(v7 + 1945), 0LL);
        v104 = v325;
        goto LABEL_133;
      }
    }
    objc_msgSend(*(void **)(v7 + 1945), "removeFromSuperview");
  }
LABEL_133:
  objc_msgSend(v7, "contentSize", v23.var1);
  v329 = v4;
  if ( (unsigned __int8)objc_msgSend(v7, "_isAnimatingScroll") )
  {
    if ( *(_QWORD *)(v7 + 2705) )
    {
      v119 = (unsigned __int64)objc_msgSend(v7, "_estimatesHeights");
      *(double *)&v10 = v298;
      if ( v298 != v329 )
      {
        if ( v119 )
        {
          v120 = objc_msgSend(*(void **)(v7 + 2705), "section");
          v121 = objc_msgSend(*(void **)(v7 + 2705), "row");
          v122 = objc_msgSend(v7, "_numberOfSectionsUsingPresentationValues:", 1LL);
          v104 = v325;
          if ( (signed __int64)v120 < (signed __int64)v122
            && (signed __int64)v121 < (signed __int64)objc_msgSend(
                                                        v7,
                                                        "_numberOfRowsInSection:usingPresentationValues:",
                                                        v120,
                                                        1LL) )
          {
            v123 = *(const char **)(v7 + 1745);
            if ( v123 )
            {
              objc_msgSend_stret(&v314, v123, "rectForRow:inSection:heightCanBeGuessed:", v121, v120, 0LL);
            }
            else
            {
              *(double *)&v10 = 0.0;
              v315 = 0LL;
              v314 = 0LL;
            }
            objc_msgSend(v7, "contentOffset");
            v4 = *((double *)&v314 + 1) + *(double *)(v7 + 2721);
            objc_msgSend(v7, "_validContentOffsetForProposedOffset:", *(double *)&v10, v4);
            objc_msgSend(v7, "_updateScrollAnimationForChangedTargetOffset:");
          }
        }
      }
    }
  }
  v124 = (unsigned __int8)v318;
  objc_msgSend(v7, "_updateTableHeadersAndFootersNow:", (unsigned __int8)v318);
  LODWORD(v323) = v124;
  objc_msgSend(v7, "_updateVisibleHeadersAndFootersNow:", v124);
  objc_msgSend(v7, "_updateIndex");
  v125 = v8[1];
  if ( !_bittest64(&v125, 0x2Du) )
  {
    if ( !_bittest64(&v125, 0x33u) )
      goto LABEL_163;
    v126 = v8[2];
    v127 = *((_WORD *)v8 + 12);
    *v8 = *v8;
    v8[2] = v126;
    v8[1] = v125 & 0xFFF7FFFFFFFFFFFFLL;
    *((_WORD *)v8 + 12) = v127;
    if ( _UIApplicationLinkedOnVersion )
    {
      if ( _UIApplicationLinkedOnVersion < (unsigned int)&loc_B0200 )
        goto LABEL_149;
    }
    else if ( !__UIApplicationLinkedOnOrAfter((unsigned __int64)&loc_B0200) )
    {
      goto LABEL_149;
    }
    v128 = (_UITableViewSubviewManager *)v328[1];
    v129 = (char *)v330;
    if ( v128 != objc_msgSend(*(void **)((char *)v330 + 1857), "count") )
    {
      v242 = objc_msgSend(
               &OBJC_CLASS___NSString,
               "stringWithUTF8String:",
               "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m");
      v243 = objc_retainAutoreleasedReturnValue(v242);
      v244 = (UIDictationConnection *)v243;
      v245 = CFSTR("<Unknown File>");
      if ( v243 )
        v245 = (const __CFString *)v243;
      v329 = COERCE_DOUBLE(objc_retain(v245, "stringWithUTF8String:"));
      objc_release(v244, "stringWithUTF8String:", v246, v247, v248, v249, v271);
      v250 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, "currentHandler");
      v251 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v250);
      v252 = NSStringFromRange(*v328, v328[1]);
      v253 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v252);
      v254 = (char *)objc_msgSend(*(void **)(v129 + 1857), "count");
      v270 = *(_QWORD *)(v129 + 1857);
      v269 = v254;
      v268 = (__int64)v253;
      v267 = CFSTR("UITableView internal inconsistency: _visibleRows and _visibleCells must be of same length. _visibleRows: %@; _visibleCells.count: %ld, _visibleCells: %@");
      objc_msgSend(
        v251,
        "handleFailureInMethod:object:file:lineNumber:description:",
        v304,
        v129,
        *(_QWORD *)&v329,
        2717LL,
        CFSTR("UITableView internal inconsistency: _visibleRows and _visibleCells must be of same length. _visibleRows: %@; _visibleCells.count: %ld, _visibleCells: %@"),
        v253,
        v254,
        v270);
      objc_release(v253, "handleFailureInMethod:object:file:lineNumber:description:", v255, v256, v257, v258, v271);
      objc_release(v251, "handleFailureInMethod:object:file:lineNumber:description:", v259, v260, v261, v262, v271);
      objc_release(
        *(UIDictationConnection **)&v329,
        "handleFailureInMethod:object:file:lineNumber:description:",
        v263,
        v264,
        v265,
        v266,
        v271);
    }
    objc_msgSend(v129, "_beginSuspendingUpdates");
LABEL_149:
    if ( v328[1] )
    {
      *(_QWORD *)&v329 = 1857LL;
      v326 = (_BYTE *)(&stru_920 + 25);
      v318 = "setFrame:";
      v324 = "_setNeedsHeightCalculation:";
      v319 = "rectForGlobalRow:heightCanBeGuessed:";
      v130 = 0LL;
      do
      {
        v131 = (char *)v330;
        v132 = objc_msgSend(*(void **)((char *)v330 + *(_QWORD *)&v329), "objectAtIndexedSubscript:", v130);
        v133 = (void *)objc_unsafeClaimAutoreleasedReturnValue(v132);
        v134 = *(_QWORD *)(v131 + 2049);
        if ( (!v134 || *(void **)(v134 + 8) != v133) && *(void **)&v326[(_QWORD)v330] != v133 )
        {
          v135 = *(const char **)((char *)v330 + 1745);
          if ( v135 )
          {
            objc_msgSend_stret(&v314, v135, v319, v130 + *v328, 0LL);
          }
          else
          {
            *(double *)&v10 = 0.0;
            v315 = 0LL;
            v314 = 0LL;
          }
          *(_OWORD *)&v269 = v315;
          *(_OWORD *)&v267 = v314;
          objc_msgSend(v133, v318, v314, v315);
          objc_msgSend(v133, v324, 0LL);
        }
        if ( _bittest64(v327 + 1, 0x2Du) )
          break;
        ++v130;
      }
      while ( v130 < v328[1] );
    }
    if ( _UIApplicationLinkedOnVersion )
    {
      v7 = (char *)v330;
      v8 = v327;
      v104 = v325;
      if ( _UIApplicationLinkedOnVersion < (unsigned int)&loc_B0200 )
        goto LABEL_163;
    }
    else
    {
      v240 = __UIApplicationLinkedOnOrAfter((unsigned __int64)&loc_B0200);
      v7 = (char *)v330;
      v8 = v327;
      v104 = v325;
      if ( !v240 )
      {
LABEL_163:
        if ( v8[1] & 0x1C000000000LL )
        {
          objc_msgSend(v7, "contentSize");
          if ( v316 )
          {
            *(double *)&v10 = v312;
            if ( v312 > v4 )
            {
              v136 = (_UITableViewSubviewManager *)v328[1];
              if ( v136 )
              {
                if ( (char *)v136 + *v328 == v316 )
                {
                  v137 = objc_msgSend(
                           *(void **)(v7 + 1857),
                           "objectAtIndexedSubscript:",
                           (char *)&v136[-1]._cellsReadyForReuse + 7);
                  v138 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v137);
                  objc_msgSend(v138, "setSeparatorStyle:", ((unsigned __int64)v8[1] >> 38) & 7);
                  objc_release(v138, "setSeparatorStyle:", v139, v140, v141, v142, v271);
                }
              }
            }
          }
        }
        objc_msgSend(v7, "_resumeReloads");
        goto LABEL_171;
      }
    }
    objc_msgSend(v7, "_endSuspendingUpdates");
    goto LABEL_163;
  }
  objc_msgSend(v7, "performSelector:withObject:afterDelay:", "_resumeReloads", 0LL, 0.0);
  *(double *)&v10 = 0.0;
  *(_OWORD *)v328 = 0LL;
LABEL_171:
  if ( !v104 )
  {
    v143 = (UIDictationConnection *)v7;
    objc_msgSend(v7, "_reapTentativeViews");
    v144 = v8[2];
    v145 = ~*v8 & 0x800000000000000LL;
    if ( !(v145 | ~(unsigned __int16)v8[2] & 0x2000) )
    {
      v146 = objc_msgSend(v7, "_delegateProxy");
      v147 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v146);
      v145 = (signed __int64)"tableViewDidFinishReload:";
      objc_msgSend(v147, "tableViewDidFinishReload:", v7);
      v143 = v147;
      objc_release(v147, "tableViewDidFinishReload:", v148, v149, v150, v151, v271);
      v144 = v8[2] & 0xFFFFFFFFFFFFDFFFLL;
      v8[2] = v144;
    }
    if ( !_bittest((const signed int *)&v144, 0x1Au) )
    {
      *(double *)&v10 = 0.0;
      v291 = 0LL;
      v290 = 0LL;
      v289 = 0LL;
      v288 = 0LL;
      v152 = (UIDictationConnection *)objc_retain(*(_QWORD *)(v7 + 1857), v145);
      v145 = (signed __int64)"countByEnumeratingWithState:objects:count:";
      v155 = objc_msgSend(v152, "countByEnumeratingWithState:objects:count:", &v288, &v331, 16LL);
      if ( v155 )
      {
        v158 = *(_QWORD *)v289;
        do
        {
          v159 = 0LL;
          do
          {
            if ( *(_QWORD *)v289 != v158 )
              objc_enumerationMutation(v152);
            objc_msgSend(*(void **)(*((_QWORD *)&v288 + 1) + 8 * v159++), "_setIndexPath:", 0LL);
          }
          while ( v159 < (unsigned __int64)v155 );
          v145 = (signed __int64)"countByEnumeratingWithState:objects:count:";
          v155 = objc_msgSend(v152, "countByEnumeratingWithState:objects:count:", &v288, &v331, 16LL);
        }
        while ( v155 );
      }
      v143 = v152;
      objc_release(v152, "countByEnumeratingWithState:objects:count:", v153, v154, v156, v157, v271);
      v8 = v327;
      *((_BYTE *)v8 + 19) |= 4u;
      v7 = (char *)v330;
    }
    v160 = CPIsInternalDevice(v143, v145);
    v161 = v8[1];
    if ( v160 )
    {
      if ( !_bittest64(&v161, 0x2Du) )
      {
        v223 = (_UITableViewSubviewManager *)v328[1];
        if ( v223 != objc_msgSend(*(void **)(v7 + 1857), "count") )
        {
          v224 = __UIFaultDebugAssertLog();
          v225 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v224);
          v226 = (UIDictationConnection *)(&dword_10 + 1);
          if ( (unsigned __int8)os_log_type_enabled(v225, 17LL) )
          {
            v329 = COERCE_DOUBLE(&v271);
            v326 = (char *)&v267;
            v231 = NSStringFromRange(*v328, v328[1]);
            v232 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v231);
            v233 = (char *)v330;
            v234 = objc_msgSend(*(void **)((char *)v330 + 1857), "count");
            v235 = *(_QWORD *)(v233 + 1857);
            LODWORD(v267) = 138412802;
            *(const __CFString **)((char *)&v267 + 4) = (const __CFString *)v232;
            WORD2(v268) = 2048;
            *(__int64 *)((char *)&v268 + 6) = (__int64)v234;
            HIWORD(v269) = 2112;
            v270 = v235;
            v226 = v225;
            _os_log_fault_impl(&dword_0, v225, 17LL, aUitableviewInt_27, v326, 32LL);
            objc_release(v232, v225, v236, v237, v238, v239, v271);
          }
          objc_release(v225, v226, v227, v228, v229, v230, v271);
          v7 = (char *)v330;
        }
      }
    }
    else if ( !_bittest64(&v161, 0x2Du) )
    {
      v162 = (_UITableViewSubviewManager *)v328[1];
      if ( v162 != objc_msgSend(*(void **)(v7 + 1857), "count") )
      {
        v163 = __UILogGetCategoryCachedImpl("Assert", &_updateVisibleCellsNow_isRecursive____s_category);
        v164 = (UIDictationConnection *)objc_retain(
                                          *(_QWORD *)(v163 + 8),
                                          &_updateVisibleCellsNow_isRecursive____s_category);
        v165 = (UIDictationConnection *)&dword_10;
        if ( (unsigned __int8)os_log_type_enabled(v164, 16LL) )
        {
          v329 = COERCE_DOUBLE(&v271);
          v326 = (char *)&v267;
          v170 = NSStringFromRange(*v328, v328[1]);
          v171 = objc_retainAutoreleasedReturnValue(v170);
          v172 = objc_msgSend(*(void **)((char *)v330 + 1857), "count");
          v173 = *(_QWORD *)((char *)v330 + 1857);
          LODWORD(v267) = 138412802;
          *(const __CFString **)((char *)&v267 + 4) = (const __CFString *)v171;
          WORD2(v268) = 2048;
          *(__int64 *)((char *)&v268 + 6) = (__int64)v172;
          HIWORD(v269) = 2112;
          v270 = v173;
          v165 = v164;
          _os_log_impl(&dword_0, v164, 16LL, aUitableviewInt_27, v326, 32LL);
          v174 = (UIDictationConnection *)v171;
          v7 = (char *)v330;
          objc_release(v174, v164, v175, v176, v177, v178, v271);
        }
        objc_release(v164, v165, v166, v167, v168, v169, v271);
      }
    }
    v8 = v327;
    v179 = v327[2];
    if ( _bittest64(&v179, 0x38u) )
    {
      v180 = v327[1];
      v181 = *((_WORD *)v327 + 12);
      *v327 = *v327;
      v8[1] = v180;
      v8[2] = v179 & 0xFEFFFFFFFFFFFFFFLL;
      *((_WORD *)v8 + 12) = v181;
      if ( *(_QWORD *)(v7 + 2657) )
      {
        objc_msgSend(v7, "contentOffset");
        v330 = (void *)v10;
        v182 = v303;
        objc_msgSend(v7, "_contentOffsetYForRestoringScrollPositionOfFirstVisibleRowWithContentInsetTop:", v303);
        objc_msgSend(v7, "_validContentOffsetForProposedOffset:", *(double *)&v330, v182);
        objc_msgSend(v7, "setContentOffset:");
        objc_msgSend(v7, "contentOffset");
        objc_msgSend(v7, "_updateScrollAnimationForChangedTargetOffset:");
      }
    }
  }
  v183 = v8[1];
  if ( !_bittest64(&v183, 0x32u) | (unsigned __int8)v313 )
  {
    v184 = v8[2];
    v185 = *((unsigned __int16 *)v8 + 12);
    v186 = *v8;
  }
  else
  {
    objc_msgSend(v7, "_updateVisibleCellsNow:isRecursive:", (unsigned int)v323, 1LL);
    v184 = v8[2];
    v186 = *v8;
    v183 = v8[1];
    v185 = *((unsigned __int16 *)v8 + 12);
  }
  v187 = v306;
  if ( _bittest64(&v184, 0x3Eu) )
  {
    *v8 = v186;
    v8[1] = v183;
    v8[2] = v184 & 0xBFFFFFFFFFFFFFFFLL;
    *((_WORD *)v8 + 12) = v185;
    v272 = _NSConcreteStackBlock;
    v273 = 3254779904LL;
    v274 = __50__UITableView__updateVisibleCellsNow_isRecursive___block_invoke;
    v275 = &__block_descriptor_tmp_879;
    v276 = v7;
    v187 = (UIDictationConnection *)objc_retain(v187, v186);
    v277 = v187;
    v278 = v305;
    +[UIView performWithoutAnimation:](&OBJC_CLASS___UIView, "performWithoutAnimation:", &v272);
    objc_release(v277, "performWithoutAnimation:", v188, v189, v190, v191, v271);
  }
  objc_msgSend(*(void **)(v7 + 2329), "updateLayout", v185);
  objc_release(v187, "updateLayout", v192, v193, v194, v195, v271);
}

void __cdecl -[UICollectionView _suspendReloads](UICollectionView *self, SEL a2)
{
  ++*(NSHashTable **)((char *)&self->_notifiedDisplayedCells + 1);
}