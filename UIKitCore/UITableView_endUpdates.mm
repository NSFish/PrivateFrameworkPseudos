void __cdecl -[UITableView endUpdates](UITableView *self, SEL a2)
{
  _BOOL8 v2; // rax
  __int64 v3; // rax
  __int64 v4; // r14
  UIDictationConnection *v5; // r14
  void *v6; // rax
  id v7; // rdx
  id v8; // rcx
  id v9; // r8
  bool v10; // r9
  _BOOL8 v11; // [rsp+0h] [rbp-30h]

  v11 = v2;
  v3 = __UILogGetCategoryCachedImpl("TableViewClientOperations", &endUpdates___s_category);
  if ( *(_BYTE *)v3 & 1 )
  {
    v4 = *(_QWORD *)(v3 + 8);
    if ( (unsigned __int8)os_log_type_enabled(*(_QWORD *)(v3 + 8), 16LL) )
    {
      v5 = (UIDictationConnection *)objc_retain(v4, 16LL);
      v6 = objc_msgSend(self, "class", v11);
      *((_DWORD *)&v11 - 8) = 138412546;
      *(_BOOL8 *)((char *)&v11 - 28) = (_BOOL8)v6;
      *((_WORD *)&v11 - 10) = 2048;
      *(_BOOL8 *)((char *)&v11 - 18) = (_BOOL8)self;
      _os_log_impl(&dword_0, v5, 16LL, aPCalledEndupda, &v11 - 4, 22LL);
      objc_release(v5, v5, v7, v8, v9, v10, v11);
    }
  }
  -[UITableView endUpdatesWithContext:](self, "endUpdatesWithContext:", 0LL, v11);
}

void __cdecl -[UITableView endUpdatesWithContext:](UITableView *self, SEL a2, id a3)
{
  bool v3; // zf

  v3 = (*(UITableViewCell **)((char *)&self->_swipeToDeleteCell + 1))-- == (UITableViewCell *)((char *)&dword_0 + 1);
  if ( v3 )
    -[UITableView _endCellAnimationsWithContext:](self, "_endCellAnimationsWithContext:", a3);
}

void __cdecl -[UITableView _endCellAnimationsWithContext:](UITableView *self, SEL a2, id a3)
{
  __int64 v3; // xmm0_8
  __int64 v4; // rax
  char *v5; // rcx
  UIDictationConnection *v6; // rdi
  id v7; // rdx
  id v8; // rcx
  id v9; // r8
  bool v10; // r9
  void *v11; // rax
  UIDictationConnection *v12; // rax
  UIDictationConnection *v13; // rbx
  void *v14; // rax
  UIDictationConnection *v15; // r14
  id v16; // rdx
  id v17; // rcx
  id v18; // r8
  bool v19; // r9
  void *v20; // rdi
  __int64 v21; // rdx
  UIDictationConnection *v22; // rax
  void *v23; // rcx
  bool v24; // zf
  void *v25; // rax
  void *v26; // rax
  UIDictationConnection *v27; // rax
  UIDictationConnection *v28; // r13
  void *v29; // rax
  char *v30; // rbx
  id v31; // rdx
  id v32; // rcx
  id v33; // r8
  bool v34; // r9
  char *v35; // rbx
  struct objc_object *v36; // rbx
  signed __int64 v37; // r15
  void *v38; // rax
  struct objc_object *v39; // rdx
  struct objc_object *v40; // r8
  bool v41; // r9
  UIDictationConnection *v42; // r12
  char *v43; // r12
  void *v44; // rax
  UIDictationConnection *v45; // rax
  UIDictationConnection *v46; // rbx
  void *v47; // rax
  id v48; // rdx
  id v49; // rcx
  id v50; // r8
  bool v51; // r9
  void *v52; // rax
  UIDictationConnection *v53; // rax
  UIDictationConnection *v54; // rbx
  void *v55; // rax
  id v56; // rdx
  id v57; // rcx
  id v58; // r8
  bool v59; // r9
  void *v60; // rax
  UIDictationConnection *v61; // rbx
  id v62; // rdx
  id v63; // rcx
  id v64; // r8
  bool v65; // r9
  void *v66; // rax
  UIDictationConnection *v67; // rbx
  id v68; // rdx
  id v69; // rcx
  id v70; // r8
  bool v71; // r9
  void *v72; // rax
  void *v73; // rax
  struct objc_object *v74; // rdx
  struct objc_object *v75; // rcx
  struct objc_object *v76; // r8
  bool v77; // r9
  char *v78; // rdx
  char *v79; // rbx
  void *v80; // rax
  void *v81; // rbx
  char *v82; // r14
  char *v83; // rsi
  void *v84; // rbx
  char *v85; // rax
  char *v86; // rax
  struct objc_object *v87; // rdx
  struct objc_object *v88; // rcx
  struct objc_object *v89; // r8
  bool v90; // r9
  char *v91; // r13
  char *v92; // rcx
  char *v93; // r12
  char *v94; // rsi
  char *v95; // rax
  struct objc_object *v96; // rdx
  _BOOL8 v97; // rcx
  struct objc_object *v98; // r8
  bool v99; // r9
  void *v100; // rax
  char *v101; // rdi
  char *v102; // rbx
  void *v103; // r12
  void *v104; // rax
  char *v105; // rcx
  unsigned int v106; // ebx
  char v107; // al
  bool v108; // cf
  char *v109; // rbx
  char *v110; // rsi
  void *v111; // rax
  void *v112; // r15
  UIDictationConnection *v113; // r12
  const __CFString *v114; // rdi
  UIDictationConnection *v115; // r14
  id v116; // rdx
  id v117; // rcx
  id v118; // r8
  bool v119; // r9
  void *v120; // rax
  UIDictationConnection *v121; // r12
  char *v122; // rsi
  UIDictationConnection *v123; // rdi
  id v124; // rdx
  id v125; // rcx
  id v126; // r8
  bool v127; // r9
  id v128; // rdx
  id v129; // rcx
  id v130; // r8
  bool v131; // r9
  char *v132; // rbx
  void *v133; // r15
  bool v134; // r12
  void *v135; // r15
  __int64 v136; // rax
  UIDictationConnection *v137; // r12
  UIDictationConnection *v138; // rsi
  struct objc_object *v139; // rdx
  struct objc_object *v140; // rcx
  struct objc_object *v141; // r8
  bool v142; // r9
  void *v143; // rbx
  char *v144; // r12
  void *v145; // r14
  void *v146; // rax
  void *v147; // rax
  struct objc_object *v148; // rdx
  struct objc_object *v149; // rcx
  struct objc_object *v150; // r8
  bool v151; // r9
  unsigned __int64 v152; // r13
  void *v153; // r14
  void *v154; // rax
  UIDictationConnection *v155; // rbx
  void *v156; // rax
  char *v157; // rsi
  struct objc_object *v158; // rdx
  _BOOL8 v159; // rcx
  struct objc_object *v160; // r8
  bool v161; // r9
  char *v162; // rax
  void *v163; // rax
  char *v164; // rax
  char *v165; // r12
  UIUpdateItem *v166; // r15
  void *v167; // rax
  UIDictationConnection *v168; // rbx
  UIUpdateItem *v169; // rdi
  char *v170; // r15
  char *v171; // rsi
  char *v172; // r12
  id v173; // rdx
  id v174; // rcx
  id v175; // r8
  bool v176; // r9
  unsigned __int8 v177; // al
  void *v178; // r13
  UIUpdateItem *v179; // r12
  void *v180; // rax
  UIDictationConnection *v181; // rbx
  UIDictationConnection *v182; // r14
  id v183; // rdx
  id v184; // rcx
  id v185; // r8
  bool v186; // r9
  unsigned __int8 v187; // al
  char *v188; // rsi
  id v189; // rdx
  id v190; // rcx
  id v191; // r8
  bool v192; // r9
  id v193; // rdx
  id v194; // rcx
  id v195; // r8
  bool v196; // r9
  id v197; // rdx
  id v198; // rcx
  id v199; // r8
  bool v200; // r9
  char *v201; // r14
  void *v202; // rax
  UIDictationConnection *v203; // rbx
  id v204; // rdx
  id v205; // rcx
  id v206; // r8
  bool v207; // r9
  id v208; // rdx
  id v209; // rcx
  id v210; // r8
  bool v211; // r9
  void *v212; // rax
  UIDictationConnection *v213; // rbx
  void *v214; // r15
  id v215; // rdx
  id v216; // rcx
  id v217; // r8
  bool v218; // r9
  id v219; // rdx
  id v220; // rcx
  id v221; // r8
  bool v222; // r9
  void *v223; // rdi
  void *v224; // r14
  void *v225; // r9
  void *v226; // r15
  void *v227; // r13
  void **v228; // rbx
  void *v229; // rax
  unsigned __int64 v230; // r13
  void *v231; // rbx
  char *v232; // r12
  char *v233; // rsi
  char *v234; // rsi
  void *v235; // rax
  UIDictationConnection *v236; // rbx
  const __CFString *v237; // rdi
  id v238; // rdx
  id v239; // rcx
  id v240; // r8
  bool v241; // r9
  void *v242; // rax
  UIDictationConnection *v243; // r15
  void *v244; // rax
  char *v245; // rsi
  char *v246; // r14
  char *v247; // rbx
  id v248; // rdx
  id v249; // rcx
  id v250; // r8
  bool v251; // r9
  UIDictationConnection *v252; // rdi
  char *v253; // r14
  char *v254; // r15
  id v255; // rdx
  id v256; // rcx
  id v257; // r8
  bool v258; // r9
  char *v259; // rsi
  void *v260; // rax
  UIDictationConnection *v261; // r14
  const __CFString *v262; // rdi
  UIDictationConnection *v263; // r15
  id v264; // rdx
  id v265; // rcx
  id v266; // r8
  bool v267; // r9
  void *v268; // rax
  UIDictationConnection *v269; // r14
  void *v270; // rax
  void *v271; // rax
  char *v272; // rsi
  UIDictationConnection *v273; // rdi
  id v274; // rdx
  id v275; // rcx
  id v276; // r8
  bool v277; // r9
  id v278; // rdx
  id v279; // rcx
  id v280; // r8
  bool v281; // r9
  char *v282; // rsi
  void *v283; // rax
  UIDictationConnection *v284; // rbx
  const __CFString *v285; // rdi
  __int64 v286; // r14
  id v287; // rdx
  id v288; // rcx
  id v289; // r8
  bool v290; // r9
  void *v291; // rax
  UIDictationConnection *v292; // r15
  void *v293; // rax
  char *v294; // rsi
  id v295; // rdx
  id v296; // rcx
  id v297; // r8
  bool v298; // r9
  UIDictationConnection *v299; // rdi
  char *v300; // r14
  id v301; // rdx
  id v302; // rcx
  id v303; // r8
  bool v304; // r9
  void *v305; // rax
  char *v306; // rax
  void *v307; // rax
  void *v308; // rbx
  unsigned __int64 v309; // r13
  void *v310; // rax
  UIDictationConnection *v311; // rax
  UIDictationConnection *v312; // r12
  void *v313; // rax
  UIDictationConnection *v314; // rbx
  char *v315; // rsi
  char v316; // r15
  id v317; // rdx
  id v318; // rcx
  id v319; // r8
  bool v320; // r9
  char *v321; // rsi
  void *v322; // rax
  UIDictationConnection *v323; // rbx
  const __CFString *v324; // rdi
  id v325; // rdx
  id v326; // rcx
  id v327; // r8
  bool v328; // r9
  void *v329; // rax
  UIDictationConnection *v330; // r15
  signed __int64 v331; // r9
  UIDictationConnection *v332; // rdi
  char *v333; // rsi
  SEL v334; // rdx
  void *v335; // rcx
  char *v336; // r8
  const __CFString *v337; // rbx
  struct objc_object *v338; // rdx
  struct objc_object *v339; // rcx
  struct objc_object *v340; // r8
  bool v341; // r9
  void *v342; // rax
  UIDictationConnection *v343; // rbx
  char *v344; // r14
  id v345; // rdx
  id v346; // rcx
  id v347; // r8
  bool v348; // r9
  int v349; // eax
  UIDictationConnection *v350; // rdi
  id v351; // rdx
  id v352; // rcx
  id v353; // r8
  bool v354; // r9
  id v355; // rdx
  id v356; // rcx
  id v357; // r8
  bool v358; // r9
  char *v359; // rbx
  char *v360; // rsi
  char v361; // al
  struct objc_object *v362; // rdx
  struct objc_object *v363; // rcx
  struct objc_object *v364; // r8
  bool v365; // r9
  void *v366; // rax
  void *v367; // rbx
  unsigned __int64 v368; // r13
  signed int v369; // er15
  void *v370; // rax
  char *v371; // rsi
  struct objc_object *v372; // rdx
  struct objc_object *v373; // rcx
  struct objc_object *v374; // r8
  bool v375; // r9
  void *v376; // rax
  UIDictationConnection *v377; // rbx
  char *v378; // r14
  id v379; // rdx
  id v380; // rcx
  id v381; // r8
  bool v382; // r9
  int v383; // ebx
  _BOOL8 v384; // rax
  signed int v385; // ebx
  void *v386; // rax
  UIDictationConnection *v387; // r15
  char v388; // r14
  id v389; // rdx
  id v390; // rcx
  id v391; // r8
  bool v392; // r9
  char v393; // al
  char *v394; // r14
  char *v395; // rax
  __int64 v396; // rax
  void *v397; // rax
  void *v398; // r15
  void **v399; // r13
  char *v400; // rbx
  char *v401; // rcx
  char *v402; // rsi
  char *v403; // rdx
  char *v404; // r13
  char *v405; // r14
  _BYTE *v406; // rax
  bool v407; // sf
  unsigned __int8 v408; // of
  void *v409; // rax
  void *v410; // rax
  unsigned __int64 v411; // r12
  void *v412; // rbx
  void *v413; // rax
  UIDictationConnection *v414; // rax
  UIDictationConnection *v415; // r14
  void *v416; // rax
  unsigned __int64 v417; // rbx
  UIDictationConnection *v418; // r12
  char v419; // r15
  UIDictationConnection *v420; // rdi
  id v421; // rdx
  id v422; // rcx
  id v423; // r8
  bool v424; // r9
  UIDictationConnection *v425; // rdi
  char *v426; // r14
  id v427; // rdx
  id v428; // rcx
  id v429; // r8
  bool v430; // r9
  char *v431; // rax
  char v432; // al
  void *v433; // rbx
  char *v434; // rdi
  char *v435; // rbx
  char *v436; // rax
  void *v437; // rbx
  __int64 v438; // r14
  UIDictationConnection *v439; // rdi
  id v440; // rdx
  id v441; // rcx
  id v442; // r8
  bool v443; // r9
  char *v444; // rbx
  id v445; // rdx
  id v446; // rcx
  id v447; // r8
  bool v448; // r9
  char *v449; // rbx
  char *v450; // r12
  struct objc_object *v451; // rdx
  struct objc_object *v452; // rcx
  struct objc_object *v453; // r8
  bool v454; // r9
  char *v455; // rsi
  void *v456; // rax
  UIDictationConnection *v457; // r14
  const __CFString *v458; // rdi
  __int64 v459; // r15
  id v460; // rdx
  id v461; // rcx
  id v462; // r8
  bool v463; // r9
  void *v464; // rax
  UIDictationConnection *v465; // r14
  void *v466; // rax
  char *v467; // rsi
  UIDictationConnection *v468; // rdi
  id v469; // rdx
  id v470; // rcx
  id v471; // r8
  bool v472; // r9
  UIDictationConnection *v473; // rdi
  char *v474; // r15
  id v475; // rdx
  id v476; // rcx
  id v477; // r8
  bool v478; // r9
  void *v479; // r13
  char *v480; // rsi
  void *v481; // rax
  UIDictationConnection *v482; // rbx
  const __CFString *v483; // rdi
  UIDictationConnection *v484; // r15
  id v485; // rdx
  id v486; // rcx
  id v487; // r8
  bool v488; // r9
  void *v489; // rax
  UIDictationConnection *v490; // r12
  void *v491; // rbx
  void *v492; // rax
  void *v493; // rax
  char *v494; // rsi
  id v495; // rdx
  id v496; // rcx
  id v497; // r8
  bool v498; // r9
  id v499; // rdx
  id v500; // rcx
  id v501; // r8
  bool v502; // r9
  char *v503; // rsi
  void *v504; // rax
  UIDictationConnection *v505; // rbx
  const __CFString *v506; // rdi
  __int64 v507; // r14
  id v508; // rdx
  id v509; // rcx
  id v510; // r8
  bool v511; // r9
  void *v512; // rax
  UIDictationConnection *v513; // r15
  void *v514; // rax
  char *v515; // rsi
  id v516; // rdx
  id v517; // rcx
  id v518; // r8
  bool v519; // r9
  UIDictationConnection *v520; // rdi
  id v521; // rdx
  id v522; // rcx
  id v523; // r8
  bool v524; // r9
  void *v525; // rax
  char *v526; // rax
  void *v527; // rax
  void *v528; // rbx
  unsigned __int64 v529; // r14
  void *v530; // rax
  char *v531; // rax
  char *v532; // r15
  void *v533; // rax
  UIDictationConnection *v534; // r13
  char *v535; // rsi
  char v536; // r12
  id v537; // rdx
  id v538; // rcx
  id v539; // r8
  bool v540; // r9
  char *v541; // rsi
  void *v542; // rax
  UIDictationConnection *v543; // rbx
  const __CFString *v544; // rdi
  __int64 v545; // r13
  id v546; // rdx
  id v547; // rcx
  id v548; // r8
  bool v549; // r9
  __int64 v550; // rax
  __int64 v551; // r12
  signed __int64 v552; // r9
  void *v553; // rdi
  char *v554; // rsi
  SEL v555; // rdx
  void *v556; // rcx
  __int64 v557; // r8
  const __CFString *v558; // rbx
  struct objc_object *v559; // rdx
  struct objc_object *v560; // rcx
  struct objc_object *v561; // r8
  bool v562; // r9
  void *v563; // rax
  UIDictationConnection *v564; // rbx
  char *v565; // r12
  id v566; // rdx
  id v567; // rcx
  id v568; // r8
  bool v569; // r9
  int v570; // eax
  char *v571; // rbx
  char *v572; // rsi
  char v573; // al
  void *v574; // rax
  __int64 v575; // r13
  signed int v576; // er15
  void *v577; // rax
  char *v578; // rsi
  struct objc_object *v579; // rdx
  struct objc_object *v580; // rcx
  struct objc_object *v581; // r8
  bool v582; // r9
  void *v583; // rax
  UIDictationConnection *v584; // rbx
  char *v585; // r14
  id v586; // rdx
  id v587; // rcx
  id v588; // r8
  bool v589; // r9
  int v590; // ebx
  _BOOL8 v591; // rax
  signed int v592; // ebx
  void *v593; // rax
  UIDictationConnection *v594; // r15
  char v595; // r14
  id v596; // rdx
  id v597; // rcx
  id v598; // r8
  bool v599; // r9
  void *v600; // rax
  void **v601; // r13
  void *v602; // r15
  char *v603; // rbx
  char *v604; // rcx
  char *v605; // rsi
  char *v606; // rdx
  char *v607; // rbx
  char *v608; // r14
  void **v609; // rbx
  _BYTE *v610; // rax
  void *v611; // r12
  void *v612; // rax
  unsigned __int64 v613; // r13
  void *v614; // rax
  UIDictationConnection *v615; // rax
  UIDictationConnection *v616; // r14
  void *v617; // rax
  UIDictationConnection *v618; // r15
  char v619; // r12
  id v620; // rdx
  id v621; // rcx
  id v622; // r8
  bool v623; // r9
  UIDictationConnection *v624; // rdi
  id v625; // rdx
  id v626; // rcx
  id v627; // r8
  bool v628; // r9
  char *v629; // rax
  void **v630; // rbx
  void *v631; // rax
  char *v632; // rax
  void *v633; // rax
  struct objc_object *v634; // rdx
  struct objc_object *v635; // rcx
  struct objc_object *v636; // r8
  bool v637; // r9
  void *v638; // r15
  unsigned __int64 v639; // r14
  void *v640; // rax
  UIDictationConnection *v641; // rbx
  char v642; // r13
  id v643; // rdx
  id v644; // rcx
  id v645; // r8
  bool v646; // r9
  struct objc_object *v647; // rdx
  struct objc_object *v648; // rcx
  struct objc_object *v649; // r8
  bool v650; // r9
  char *v651; // rbx
  char *v652; // rax
  void *v653; // rbx
  __int64 v654; // r14
  void *v655; // rdi
  UIDictationConnection *v656; // rdi
  id v657; // rdx
  id v658; // rcx
  id v659; // r8
  bool v660; // r9
  id v661; // rdx
  id v662; // rcx
  id v663; // r8
  bool v664; // r9
  void *v665; // r13
  char *v666; // r14
  char *v667; // rdx
  char *v668; // rsi
  void *v669; // rax
  UIDictationConnection *v670; // rbx
  const __CFString *v671; // rdi
  id v672; // rdx
  id v673; // rcx
  id v674; // r8
  bool v675; // r9
  void *v676; // rax
  void *v677; // r14
  char *v678; // rbx
  void *v679; // rax
  char *v680; // r13
  char *v681; // rsi
  void *v682; // rax
  UIDictationConnection *v683; // r15
  const __CFString *v684; // rdi
  __int64 v685; // r14
  id v686; // rdx
  id v687; // rcx
  id v688; // r8
  bool v689; // r9
  void *v690; // rax
  UIDictationConnection *v691; // r15
  void *v692; // rax
  char *v693; // rsi
  id v694; // rdx
  id v695; // rcx
  id v696; // r8
  bool v697; // r9
  UIDictationConnection *v698; // rdi
  id v699; // rdx
  id v700; // rcx
  id v701; // r8
  bool v702; // r9
  char *v703; // rdx
  char *v704; // rsi
  void *v705; // rax
  UIDictationConnection *v706; // rbx
  const __CFString *v707; // rdi
  id v708; // rdx
  id v709; // rcx
  id v710; // r8
  bool v711; // r9
  void *v712; // rax
  void *v713; // r14
  char *v714; // rbx
  void *v715; // rax
  char *v716; // r13
  void *v717; // rax
  void *v718; // rax
  void *v719; // r13
  void *v720; // rax
  void *v721; // rbx
  void *v722; // rax
  char *v723; // r15
  char *v724; // rbx
  void *v725; // rbx
  void *v726; // rax
  char *v727; // rsi
  void *v728; // rax
  UIDictationConnection *v729; // rbx
  const __CFString *v730; // rdi
  UIDictationConnection *v731; // r15
  id v732; // rdx
  id v733; // rcx
  id v734; // r8
  bool v735; // r9
  void *v736; // rax
  UIDictationConnection *v737; // r14
  void *v738; // rax
  char *v739; // rsi
  id v740; // rdx
  id v741; // rcx
  id v742; // r8
  bool v743; // r9
  id v744; // rdx
  id v745; // rcx
  id v746; // r8
  bool v747; // r9
  void *v748; // rax
  char *v749; // rsi
  void *v750; // rax
  UIDictationConnection *v751; // rbx
  const __CFString *v752; // rdi
  id v753; // rdx
  id v754; // rcx
  id v755; // r8
  bool v756; // r9
  void *v757; // rax
  void *v758; // r14
  void *v759; // rax
  char *v760; // r13
  char *v761; // rsi
  void *v762; // rax
  UIDictationConnection *v763; // rbx
  const __CFString *v764; // rdi
  UIDictationConnection *v765; // r15
  id v766; // rdx
  id v767; // rcx
  id v768; // r8
  bool v769; // r9
  void *v770; // rax
  UIDictationConnection *v771; // r14
  void *v772; // rax
  char *v773; // rsi
  id v774; // rdx
  id v775; // rcx
  id v776; // r8
  bool v777; // r9
  id v778; // rdx
  id v779; // rcx
  id v780; // r8
  bool v781; // r9
  void *v782; // rax
  void **v783; // rbx
  void *v784; // rax
  void *v785; // rax
  char *v786; // rbx
  char *v787; // rsi
  char *v788; // rax
  struct objc_object *v789; // rdx
  struct objc_object *v790; // rcx
  struct objc_object *v791; // r8
  bool v792; // r9
  char *v793; // rbx
  void *v794; // rax
  char *v795; // rax
  char *v796; // rbx
  void *v797; // rax
  char *v798; // r15
  void *v799; // rax
  char *v800; // r13
  char *v801; // r14
  char *v802; // rsi
  char v803; // al
  struct objc_object *v804; // rdx
  struct objc_object *v805; // rcx
  struct objc_object *v806; // r8
  bool v807; // r9
  int v808; // er14
  char *v809; // r15
  char *v810; // rsi
  void *v811; // rax
  UIDictationConnection *v812; // r12
  const __CFString *v813; // rdi
  id v814; // rdx
  id v815; // rcx
  id v816; // r8
  bool v817; // r9
  void *v818; // rax
  UIDictationConnection *v819; // r12
  char *v820; // rbx
  void *v821; // r10
  signed __int64 v822; // r9
  UIDictationConnection *v823; // rdi
  SEL v824; // rdx
  void *v825; // rcx
  UIDictationConnection *v826; // r13
  void *v827; // r8
  const __CFString *v828; // rbx
  char *v829; // rsi
  void *v830; // rax
  UIDictationConnection *v831; // rbx
  const __CFString *v832; // rdi
  id v833; // rdx
  id v834; // rcx
  id v835; // r8
  bool v836; // r9
  void *v837; // rax
  void *v838; // r10
  struct objc_object *v839; // rdx
  struct objc_object *v840; // rcx
  struct objc_object *v841; // r8
  bool v842; // r9
  signed __int64 v843; // r9
  UIDictationConnection *v844; // rdi
  SEL v845; // rdx
  void *v846; // rcx
  void *v847; // r8
  const __CFString *v848; // rbx
  id v849; // rdx
  id v850; // rcx
  id v851; // r8
  bool v852; // r9
  id v853; // rdx
  id v854; // rcx
  id v855; // r8
  bool v856; // r9
  id v857; // rdx
  id v858; // rcx
  id v859; // r8
  bool v860; // r9
  char *v861; // rbx
  char *v862; // rax
  void **v863; // r15
  char *v864; // rax
  const char *v865; // rsi
  char *v866; // rdx
  char *v867; // rcx
  void **v868; // r14
  char *v869; // rax
  void *v870; // rbx
  UIDictationConnection *v871; // r14
  id v872; // rdx
  id v873; // rcx
  id v874; // r8
  bool v875; // r9
  char *v876; // rax
  void *v877; // rax
  char *v878; // r15
  void *v879; // rax
  void *v880; // r15
  UIDictationConnection *v881; // r12
  char *v882; // rsi
  id v883; // rdx
  id v884; // rcx
  id v885; // r8
  bool v886; // r9
  char *v887; // rax
  void *v888; // rax
  void **v889; // r15
  char *v890; // rbx
  char *v891; // rax
  const char *v892; // rsi
  char *v893; // rdx
  char *v894; // rcx
  void **v895; // r14
  char *v896; // r15
  void *v897; // r15
  char *v898; // rax
  void *v899; // r15
  UIDictationConnection *v900; // r12
  char *v901; // rsi
  id v902; // rdx
  id v903; // rcx
  id v904; // r8
  bool v905; // r9
  void *v906; // rax
  char *v907; // rbx
  void *v908; // rbx
  __int64 v909; // r14
  UIDictationConnection *v910; // rdi
  id v911; // rdx
  id v912; // rcx
  id v913; // r8
  bool v914; // r9
  id v915; // rdx
  id v916; // rcx
  id v917; // r8
  bool v918; // r9
  id v919; // rdx
  id v920; // rcx
  id v921; // r8
  bool v922; // r9
  char *v923; // rax
  void *v924; // rbx
  void *v925; // r14
  void *v926; // rax
  UIDictationConnection *v927; // rbx
  void *v928; // r13
  id v929; // rdx
  id v930; // rcx
  id v931; // r8
  bool v932; // r9
  UIDictationConnection *v933; // r14
  void *v934; // rax
  UIDictationConnection *v935; // r15
  id v936; // rdx
  id v937; // rcx
  id v938; // r8
  bool v939; // r9
  id v940; // rdx
  id v941; // rcx
  id v942; // r8
  bool v943; // r9
  id v944; // rdx
  id v945; // rcx
  id v946; // r8
  bool v947; // r9
  id v948; // rdx
  id v949; // rcx
  id v950; // r8
  bool v951; // r9
  id v952; // rdx
  id v953; // rcx
  id v954; // r8
  bool v955; // r9
  id v956; // rdx
  id v957; // rcx
  id v958; // r8
  bool v959; // r9
  id v960; // rdx
  id v961; // rcx
  id v962; // r8
  bool v963; // r9
  void **v964; // rbx
  char *v965; // rbx
  void *v966; // rax
  char *v967; // r15
  void *v968; // rax
  char *v969; // rbx
  char *v970; // rax
  char *v971; // rsi
  char *v972; // r14
  char *v973; // rax
  char *v974; // rdx
  struct objc_object *v975; // r8
  bool v976; // r9
  struct objc_object *v977; // rcx
  bool v978; // bl
  char *v979; // rax
  void *v980; // rax
  UIDictationConnection *v981; // r13
  void *v982; // rax
  UIDictationConnection *v983; // r12
  bool v984; // al
  void *v985; // rdi
  char *v986; // rbx
  void *v987; // rax
  char *v988; // r15
  void *v989; // rax
  UIDictationConnection *v990; // r14
  char *v991; // rsi
  signed __int64 v992; // r15
  id v993; // rdx
  id v994; // rcx
  id v995; // r8
  bool v996; // r9
  id v997; // rdx
  id v998; // rcx
  id v999; // r8
  bool v1000; // r9
  char v1001; // r15
  id v1002; // rdx
  id v1003; // rcx
  id v1004; // r8
  bool v1005; // r9
  id v1006; // rdx
  id v1007; // rcx
  id v1008; // r8
  bool v1009; // r9
  int v1010; // eax
  void **v1011; // r14
  void *v1012; // r15
  void *v1013; // rax
  void *v1014; // rax
  char *v1015; // rbx
  void *v1016; // rax
  UIDictationConnection *v1017; // rdi
  id v1018; // rdx
  id v1019; // r8
  bool v1020; // r9
  void *v1021; // rbx
  char *v1022; // r14
  __int64 v1023; // rbx
  char *v1024; // rbx
  char *v1025; // r14
  struct objc_object *v1026; // rdx
  struct objc_object *v1027; // rcx
  struct objc_object *v1028; // r8
  bool v1029; // r9
  unsigned __int64 v1030; // r13
  void *v1031; // r15
  void *v1032; // rax
  UIDictationConnection *v1033; // r12
  char *v1034; // rsi
  void *v1035; // rbx
  id v1036; // rdx
  id v1037; // rcx
  id v1038; // r8
  bool v1039; // r9
  _QWORD *v1040; // rax
  void *v1041; // rax
  UIDictationConnection *v1042; // r12
  char *v1043; // rsi
  void *v1044; // r15
  id v1045; // rdx
  id v1046; // rcx
  id v1047; // r8
  bool v1048; // r9
  char *v1049; // rsi
  void *v1050; // rax
  __int64 v1051; // rax
  UIDictationConnection *v1052; // rbx
  const __CFString *v1053; // rdi
  UIDictationConnection *v1054; // r14
  id v1055; // rdx
  id v1056; // rcx
  id v1057; // r8
  bool v1058; // r9
  void *v1059; // rax
  UIDictationConnection *v1060; // r13
  char *v1061; // rbx
  id v1062; // rdx
  id v1063; // rcx
  id v1064; // r8
  bool v1065; // r9
  id v1066; // rdx
  id v1067; // rcx
  id v1068; // r8
  bool v1069; // r9
  __int64 v1070; // rax
  UIDictationConnection *v1071; // rbx
  UIDictationConnection *v1072; // rsi
  struct objc_object *v1073; // rdx
  struct objc_object *v1074; // rcx
  struct objc_object *v1075; // r8
  bool v1076; // r9
  char *v1077; // rdi
  char *v1078; // r14
  char *v1079; // rdx
  char *v1080; // r15
  __int64 v1081; // r12
  char *v1082; // rbx
  const __CFString *v1083; // r13
  char *v1084; // rsi
  void *v1085; // rax
  UIDictationConnection *v1086; // r15
  const __CFString *v1087; // rdi
  id v1088; // rdx
  id v1089; // rcx
  id v1090; // r8
  bool v1091; // r9
  __int64 v1092; // rax
  UIDictationConnection *v1093; // r15
  char *v1094; // rsi
  char *v1095; // r13
  UIDictationConnection *v1096; // rdi
  id v1097; // rdx
  id v1098; // rcx
  id v1099; // r8
  bool v1100; // r9
  id v1101; // rdx
  id v1102; // rcx
  id v1103; // r8
  bool v1104; // r9
  char *v1105; // r9
  char *v1106; // r8
  char *v1107; // rdx
  char *v1108; // rbx
  char *v1109; // rcx
  const __CFString *v1110; // rax
  char *v1111; // rbx
  char *v1112; // rsi
  void *v1113; // rax
  UIDictationConnection *v1114; // r12
  const __CFString *v1115; // rdi
  id v1116; // rdx
  id v1117; // rcx
  id v1118; // r8
  bool v1119; // r9
  void *v1120; // rax
  UIDictationConnection *v1121; // r12
  char *v1122; // rsi
  char *v1123; // r15
  id v1124; // rdx
  id v1125; // rcx
  id v1126; // r8
  bool v1127; // r9
  id v1128; // rdx
  id v1129; // rcx
  id v1130; // r8
  bool v1131; // r9
  __int64 v1132; // rax
  UIDictationConnection *v1133; // rbx
  UIDictationConnection *v1134; // rsi
  struct objc_object *v1135; // rdx
  struct objc_object *v1136; // rcx
  struct objc_object *v1137; // r8
  bool v1138; // r9
  bool v1139; // al
  __int64 v1140; // rax
  UIDictationConnection *v1141; // r12
  UIDictationConnection *v1142; // rsi
  struct objc_object *v1143; // rdx
  struct objc_object *v1144; // rcx
  struct objc_object *v1145; // r8
  bool v1146; // r9
  void *v1147; // rdi
  void *v1148; // rbx
  char *v1149; // rsi
  char v1150; // al
  struct objc_object *v1151; // rdx
  struct objc_object *v1152; // rcx
  struct objc_object *v1153; // r8
  bool v1154; // r9
  char *v1155; // rbx
  __int64 v1156; // rax
  unsigned __int64 v1157; // rax
  UIDictationConnection *v1158; // rdi
  id v1159; // rdx
  id v1160; // rcx
  id v1161; // r8
  bool v1162; // r9
  id v1163; // rdx
  id v1164; // rcx
  id v1165; // r8
  bool v1166; // r9
  UIDictationConnection *v1167; // rdi
  id v1168; // rdx
  id v1169; // r8
  bool v1170; // r9
  UIDictationConnection *v1171; // rdi
  id v1172; // rdx
  id v1173; // rcx
  id v1174; // r8
  bool v1175; // r9
  UIDictationConnection *v1176; // rdi
  struct objc_object *v1177; // rcx
  id v1178; // rdx
  id v1179; // r8
  bool v1180; // r9
  UIDictationConnection *v1181; // rdi
  struct objc_object *v1182; // rcx
  id v1183; // rdx
  id v1184; // r8
  bool v1185; // r9
  char v1186; // al
  void *v1187; // rdi
  const char *v1188; // rsi
  char *v1189; // rcx
  struct objc_object *v1190; // rdx
  struct objc_object *v1191; // rcx
  struct objc_object *v1192; // r8
  bool v1193; // r9
  unsigned __int64 v1194; // r12
  void *v1195; // rbx
  void *v1196; // rax
  UIDictationConnection *v1197; // r13
  id v1198; // rdx
  id v1199; // rcx
  id v1200; // r8
  bool v1201; // r9
  UIDictationConnection *v1202; // r14
  UIDictationConnection *v1203; // rbx
  id v1204; // rdx
  id v1205; // rcx
  id v1206; // r8
  bool v1207; // r9
  id v1208; // rdx
  id v1209; // rcx
  id v1210; // r8
  bool v1211; // r9
  id v1212; // rdx
  id v1213; // rcx
  id v1214; // r8
  bool v1215; // r9
  id v1216; // rdx
  id v1217; // rcx
  id v1218; // r8
  bool v1219; // r9
  const __CFString *v1220; // [rsp-40h] [rbp-740h]
  char *v1221; // [rsp-38h] [rbp-738h]
  const __CFString *v1222; // [rsp-30h] [rbp-730h]
  void *v1223; // [rsp-28h] [rbp-728h]
  __int128 v1224; // [rsp-20h] [rbp-720h]
  __int128 v1225; // [rsp-10h] [rbp-710h]
  __int128 v1226; // [rsp+0h] [rbp-700h]
  __int128 v1227; // [rsp+10h] [rbp-6F0h]
  __int128 v1228; // [rsp+20h] [rbp-6E0h]
  __int128 v1229; // [rsp+30h] [rbp-6D0h]
  __int128 v1230; // [rsp+40h] [rbp-6C0h]
  __int128 v1231; // [rsp+50h] [rbp-6B0h]
  __int128 v1232; // [rsp+60h] [rbp-6A0h]
  __int128 v1233; // [rsp+70h] [rbp-690h]
  __int128 v1234; // [rsp+80h] [rbp-680h]
  __int128 v1235; // [rsp+90h] [rbp-670h]
  __int128 v1236; // [rsp+A0h] [rbp-660h]
  __int128 v1237; // [rsp+B0h] [rbp-650h]
  __int128 v1238; // [rsp+C0h] [rbp-640h]
  __int128 v1239; // [rsp+D0h] [rbp-630h]
  __int128 v1240; // [rsp+E0h] [rbp-620h]
  __int128 v1241; // [rsp+F0h] [rbp-610h]
  __int128 v1242; // [rsp+100h] [rbp-600h]
  __int128 v1243; // [rsp+110h] [rbp-5F0h]
  __int128 v1244; // [rsp+120h] [rbp-5E0h]
  __int128 v1245; // [rsp+130h] [rbp-5D0h]
  __int128 v1246; // [rsp+140h] [rbp-5C0h]
  __int128 v1247; // [rsp+150h] [rbp-5B0h]
  __int128 v1248; // [rsp+160h] [rbp-5A0h]
  __int128 v1249; // [rsp+170h] [rbp-590h]
  __int128 v1250; // [rsp+180h] [rbp-580h]
  __int128 v1251; // [rsp+190h] [rbp-570h]
  __int128 v1252; // [rsp+1A0h] [rbp-560h]
  __int128 v1253; // [rsp+1B0h] [rbp-550h]
  const __CFString *v1254; // [rsp+1C8h] [rbp-538h]
  void *v1255; // [rsp+1D0h] [rbp-530h]
  __int64 v1256; // [rsp+1D8h] [rbp-528h]
  void *v1257; // [rsp+1E0h] [rbp-520h]
  char *v1258; // [rsp+1E8h] [rbp-518h]
  UIDictationConnection *v1259; // [rsp+1F0h] [rbp-510h]
  __int128 v1260; // [rsp+1F8h] [rbp-508h]
  __int128 v1261; // [rsp+208h] [rbp-4F8h]
  UIDictationConnection *v1262; // [rsp+218h] [rbp-4E8h]
  char *v1263; // [rsp+220h] [rbp-4E0h]
  struct objc_object *v1264; // [rsp+228h] [rbp-4D8h]
  UIDictationConnection *v1265; // [rsp+230h] [rbp-4D0h]
  __int64 v1266; // [rsp+238h] [rbp-4C8h]
  void *v1267; // [rsp+240h] [rbp-4C0h]
  void *v1268; // [rsp+248h] [rbp-4B8h]
  void *v1269; // [rsp+250h] [rbp-4B0h]
  char *v1270; // [rsp+258h] [rbp-4A8h]
  char *v1271; // [rsp+260h] [rbp-4A0h]
  char *v1272; // [rsp+268h] [rbp-498h]
  char *v1273; // [rsp+270h] [rbp-490h]
  const char *v1274; // [rsp+278h] [rbp-488h]
  __int64 v1275; // [rsp+280h] [rbp-480h]
  const char *v1276; // [rsp+288h] [rbp-478h]
  char *v1277; // [rsp+290h] [rbp-470h]
  char *v1278; // [rsp+298h] [rbp-468h]
  char *v1279; // [rsp+2A0h] [rbp-460h]
  void *v1280; // [rsp+2A8h] [rbp-458h]
  char *v1281; // [rsp+2B0h] [rbp-450h]
  char *v1282; // [rsp+2B8h] [rbp-448h]
  __int64 v1283; // [rsp+2C0h] [rbp-440h]
  char *v1284; // [rsp+2C8h] [rbp-438h]
  char *v1285; // [rsp+2D0h] [rbp-430h]
  char *v1286; // [rsp+2D8h] [rbp-428h]
  void *v1287; // [rsp+2E0h] [rbp-420h]
  void **v1288; // [rsp+2E8h] [rbp-418h]
  unsigned __int8 v1289; // [rsp+2F7h] [rbp-409h]
  char *v1290; // [rsp+2F8h] [rbp-408h]
  char *v1291; // [rsp+300h] [rbp-400h]
  char *v1292; // [rsp+308h] [rbp-3F8h]
  char *v1293; // [rsp+310h] [rbp-3F0h]
  char *v1294; // [rsp+318h] [rbp-3E8h]
  char *v1295; // [rsp+320h] [rbp-3E0h]
  size_t v1296; // [rsp+328h] [rbp-3D8h]
  char *v1297; // [rsp+330h] [rbp-3D0h]
  char *v1298; // [rsp+338h] [rbp-3C8h]
  char *v1299; // [rsp+340h] [rbp-3C0h]
  void *v1300; // [rsp+348h] [rbp-3B8h]
  char *v1301; // [rsp+350h] [rbp-3B0h]
  SEL v1302; // [rsp+358h] [rbp-3A8h]
  void **v1303; // [rsp+360h] [rbp-3A0h]
  char *v1304; // [rsp+368h] [rbp-398h]
  char *v1305; // [rsp+370h] [rbp-390h]
  void *v1306; // [rsp+378h] [rbp-388h]
  void *v1307; // [rsp+380h] [rbp-380h]
  char *v1308; // [rsp+388h] [rbp-378h]
  char *v1309; // [rsp+390h] [rbp-370h]
  char *v1310; // [rsp+398h] [rbp-368h]
  char *v1311; // [rsp+3A0h] [rbp-360h]
  char *v1312; // [rsp+3A8h] [rbp-358h]
  char *v1313; // [rsp+3B0h] [rbp-350h]
  char *v1314; // [rsp+3B8h] [rbp-348h]
  char *v1315; // [rsp+3C0h] [rbp-340h]
  void *v1316; // [rsp+3C8h] [rbp-338h]
  char v1317; // [rsp+3D0h] [rbp-330h]
  char v1318; // [rsp+450h] [rbp-2B0h]
  char v1319; // [rsp+4D0h] [rbp-230h]
  char v1320; // [rsp+550h] [rbp-1B0h]
  char v1321; // [rsp+5D0h] [rbp-130h]
  char v1322; // [rsp+650h] [rbp-B0h]

  v1302 = a2;
  v4 = objc_retain(a3, a2);
  v5 = (char *)self;
  v1262 = (UIDictationConnection *)v4;
  LOWORD(v4) = *(_WORD *)((char *)&self->_tableFlags + 17);
  v1316 = self;
  if ( v4 & 0x10 )
  {
    objc_msgSend(*(void **)((char *)&self->_prefetchDataSource + 1), "cancel");
    v6 = *(UIDictationConnection **)((char *)v1316 + 2769);
    *(_QWORD *)((char *)v1316 + 2769) = 0LL;
    objc_release(v6, "cancel", v7, v8, v9, v10, v1226);
    v5 = (char *)v1316;
  }
  objc_msgSend(*(void **)(v5 + 2857), "forceReset");
  objc_msgSend(*(void **)((char *)v1316 + 2865), "beginIgnoringDrags");
  v1289 = (unsigned __int64)objc_msgSend(v1316, "_isScrolledToTop");
  v11 = objc_msgSend(v1316, "_indexPathsForVisibleRowsUsingPresentationValues:", 1LL);
  v12 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v11);
  v13 = v12;
  v14 = objc_msgSend(v12, "firstObject");
  v15 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v14);
  objc_release(v13, "firstObject", v16, v17, v18, v19, v1226);
  v20 = v1316;
  if ( !(*((_BYTE *)v1316 + 2808) & 1) )
  {
    objc_msgSend(v1316, "_computeOffsetOfFirstVisibleCellWithIndexPath:", v15);
    *(_QWORD *)((char *)v1316 + 2665) = v3;
    v21 = *(_QWORD *)((char *)v1316 + 1841);
    *(_QWORD *)((char *)v1316 + 2657) = *(_QWORD *)((char *)v1316 + 1849);
    *(_QWORD *)((char *)v1316 + 2649) = v21;
    v20 = v1316;
  }
  objc_msgSend(v20, "_beginSuspendingUpdates");
  v1261 = *(_OWORD *)&CGRectNull[2];
  *((double *)&v1260 + 1) = CGRectNull[1];
  *(double *)&v1260 = CGRectNull[0];
  v1303 = (void **)(&stru_790 + 65);
  v22 = (UIDictationConnection *)objc_msgSend(*(void **)((char *)v1316 + 2001), "copy");
  v23 = v1316;
  v1259 = v22;
  v24 = *(_QWORD *)((char *)v1316 + 1745) == 0LL;
  v1265 = v15;
  if ( v24 )
  {
    v36 = (struct objc_object *)(&stru_880 + 25);
    v37 = 2209LL;
    v1287 = 0LL;
    goto LABEL_374;
  }
  v1288 = (void **)((char *)v1316 + 1745);
  v25 = objc_msgSend(&OBJC_CLASS___NSMutableArray, "alloc");
  v1280 = objc_msgSend(v25, "init");
  v26 = objc_msgSend(v1316, "_screen");
  v27 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v26);
  v28 = v27;
  v29 = objc_msgSend(v27, "focusedView");
  v30 = (char *)objc_retainAutoreleasedReturnValue(v29);
  objc_release(v28, "focusedView", v31, v32, v33, v34, v1226);
  v1263 = v30;
  if ( (unsigned __int8)objc_msgSend(v30, "isDescendantOfView:", v1316) )
  {
    if ( v1263 )
    {
      v35 = v1263;
      objc_msgSend_stret(&v1252, v1263, "bounds");
    }
    else
    {
      v1253 = 0LL;
      v1252 = 0LL;
      v35 = 0LL;
    }
    v38 = objc_msgSend(v1316, "window");
    v42 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v38);
    if ( v35 )
    {
      v1225 = v1253;
      v1224 = v1252;
      objc_msgSend_stret(&v1226, v35, "convertRect:toView:", v42, v1252, v1253);
    }
    else
    {
      v1227 = 0LL;
      v1226 = 0LL;
    }
    v1261 = v1227;
    v1260 = v1226;
    objc_release(v42, v35, v39, *((id *)&v1226 + 1), v40, v41, v1226);
  }
  v1287 = objc_msgSend(*v1288, "copy", (_QWORD)v1226);
  if ( _UIApplicationLinkedOnVersion )
  {
    if ( _UIApplicationLinkedOnVersion >= (unsigned int)__destroy_helper_block__49 )
      goto LABEL_17;
  }
  else if ( __UIApplicationLinkedOnOrAfter((unsigned __int64)__destroy_helper_block__49) )
  {
LABEL_17:
    v43 = (char *)v1316;
    v44 = objc_msgSend(v1316, "_arrayForUpdateAction:", 1LL, (_QWORD)v1226);
    v45 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v44);
    v46 = v45;
    v47 = objc_msgSend(v45, "sortedArrayUsingSelector:", "inverseCompareIndexPaths:", (_QWORD)v1226);
    v1284 = (char *)objc_retainAutoreleasedReturnValue(v47);
    objc_release(v46, "sortedArrayUsingSelector:", v48, v49, v50, v51, v1226);
    v52 = objc_msgSend(v43, "_arrayForUpdateAction:", 0LL, (_QWORD)v1226);
    v53 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v52);
    v54 = v53;
    v55 = objc_msgSend(v53, "sortedArrayUsingSelector:", "compareIndexPaths:", (_QWORD)v1226);
    v1286 = (char *)objc_retainAutoreleasedReturnValue(v55);
    objc_release(v54, "sortedArrayUsingSelector:", v56, v57, v58, v59, v1226);
    v60 = objc_msgSend(*(void **)(v43 + 2217), "sortedArrayUsingSelector:", "compareIndexPaths:", (_QWORD)v1226);
    v61 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v60);
    v1315 = (char *)objc_msgSend(v61, "mutableCopy", (_QWORD)v1226);
    objc_release(v61, "mutableCopy", v62, v63, v64, v65, v1226);
    v66 = objc_msgSend(*(void **)(v43 + 2225), "sortedArrayUsingSelector:", "compareIndexPaths:", (_QWORD)v1226);
    v67 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v66);
    v1307 = objc_msgSend(v67, "mutableCopy", (_QWORD)v1226);
    objc_release(v67, "mutableCopy", v68, v69, v70, v71, v1226);
    v72 = objc_msgSend(&OBJC_CLASS___NSMutableArray, "alloc", (_QWORD)v1226);
    v1267 = objc_msgSend(v72, "init", (_QWORD)v1226);
    v73 = objc_msgSend(&OBJC_CLASS___NSMutableArray, "alloc", (_QWORD)v1226);
    v1268 = objc_msgSend(v73, "init", (_QWORD)v1226);
    v1231 = 0LL;
    v1230 = 0LL;
    v1229 = 0LL;
    v1228 = 0LL;
    v1269 = (void *)objc_retain(v1315, "init");
    v1279 = (char *)objc_msgSend(
                      v1269,
                      "countByEnumeratingWithState:objects:count:",
                      &v1228,
                      &v1322,
                      16LL,
                      (_QWORD)v1226);
    if ( !v1279 )
      goto LABEL_67;
    v1282 = *(char **)v1229;
    do
    {
      v1311 = "indexPath";
      v1308 = "section";
      v1291 = "row";
      v1278 = "animation";
      v1295 = "indexPathForRow:inSection:";
      v1290 = "initWithAction:forIndexPath:animation:";
      v1297 = "headerFooterOnly";
      v1277 = "setHeaderFooterOnly:";
      v1294 = (_BYTE *)(&stru_880 + 33);
      v1301 = "addObject:";
      v1281 = (_BYTE *)(&stru_880 + 25);
      v78 = 0LL;
      do
      {
        if ( *(char **)v1229 != v1282 )
        {
          v79 = v78;
          objc_enumerationMutation(v1269);
          v78 = v79;
        }
        v1285 = v78;
        v1309 = *(char **)(*((_QWORD *)&v1228 + 1) + 8LL * (_QWORD)v78);
        v80 = objc_msgSend(v1309, v1311, (_QWORD)v1226);
        v81 = (void *)objc_retainAutoreleasedReturnValue(v80);
        v82 = (char *)objc_msgSend(v81, v1308, (_QWORD)v1226);
        v1306 = v81;
        v83 = v1291;
        v84 = objc_msgSend(v81, v1291, (_QWORD)v1226);
        v1243 = 0LL;
        v1242 = 0LL;
        v1241 = 0LL;
        v1240 = 0LL;
        v85 = (char *)objc_retain(v1284, v83);
        v1299 = v85;
        v86 = (char *)objc_msgSend(
                        v85,
                        "countByEnumeratingWithState:objects:count:",
                        &v1240,
                        &v1321,
                        16LL,
                        (_QWORD)v1226);
        v1283 = (__int64)v84;
        v1300 = v84;
        v1305 = v82;
        v1314 = v82;
        v1304 = v86;
        if ( v86 )
        {
          v1298 = *(char **)v1241;
          v1300 = (void *)v1283;
          v1314 = v1305;
          do
          {
            v91 = "isEqual:";
            v1293 = "stringWithUTF8String:";
            v1296 = (size_t)"currentHandler";
            v1310 = "handleFailureInMethod:object:file:lineNumber:description:";
            v92 = 0LL;
            v1292 = "isEqual:";
            v1312 = "isSectionOperation";
            do
            {
              if ( *(char **)v1241 != v1298 )
              {
                v102 = v92;
                objc_enumerationMutation(v1299);
                v92 = v102;
              }
              v1313 = v92;
              v103 = *(void **)(*((_QWORD *)&v1240 + 1) + 8LL * (_QWORD)v92);
              v104 = objc_msgSend(*(void **)(*((_QWORD *)&v1240 + 1) + 8LL * (_QWORD)v92), v1311, (_QWORD)v1226);
              v105 = (char *)objc_retainAutoreleasedReturnValue(v104);
              v106 = _UIApplicationLinkedOnVersion;
              v1315 = v105;
              if ( _UIApplicationLinkedOnVersion )
              {
                v107 = (unsigned __int64)objc_msgSend(v105, v91, v1306, (_QWORD)v1226);
                v108 = v106 < (unsigned int)&loc_70000;
                v109 = v1312;
                if ( !v108 )
                  goto LABEL_32;
              }
              else
              {
                v132 = v105;
                v133 = v103;
                v134 = __UIApplicationLinkedOnOrAfter((unsigned __int64)&loc_70000);
                v107 = (unsigned __int64)objc_msgSend(v132, v91, v1306, (_QWORD)v1226);
                v24 = v134 == 0;
                v103 = v133;
                v109 = v1312;
                if ( !v24 )
                {
LABEL_32:
                  if ( v107 )
                  {
                    v110 = v1293;
                    v111 = objc_msgSend(
                             &OBJC_CLASS___NSString,
                             v1293,
                             "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                             (_QWORD)v1226);
                    v112 = v103;
                    v113 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v111);
                    v114 = (const __CFString *)v113;
                    if ( !v113 )
                      v114 = CFSTR("<Unknown File>");
                    v115 = (UIDictationConnection *)objc_retain(v114, v110);
                    objc_release(v113, v110, v116, v117, v118, v119, v1226);
                    v120 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, (const char *)v1296, (_QWORD)v1226);
                    v121 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v120);
                    v122 = v1310;
                    *((_QWORD *)&v1225 + 1) = v1315;
                    *(_QWORD *)&v1225 = CFSTR("attempt to delete and reload the same index path (%@)");
                    v109 = v1312;
                    objc_msgSend(
                      v121,
                      v1310,
                      v1302,
                      v1316,
                      v115,
                      1615LL,
                      CFSTR("attempt to delete and reload the same index path (%@)"),
                      v1315);
                    v123 = v121;
                    v103 = v112;
                    objc_release(v123, v122, v124, v125, v126, v127, v1226);
                    objc_release(v115, v122, v128, v129, v130, v131, v1226);
                  }
                  goto LABEL_41;
                }
              }
              if ( v107 )
              {
                v135 = v103;
                v136 = __UILogGetCategoryCachedImpl("Assert", &_endCellAnimationsWithContext____s_category);
                v137 = (UIDictationConnection *)objc_retain(
                                                  *(_QWORD *)(v136 + 8),
                                                  &_endCellAnimationsWithContext____s_category);
                v138 = (UIDictationConnection *)&dword_10;
                if ( (unsigned __int8)os_log_type_enabled(v137, 16LL) )
                {
                  LODWORD(v1225) = 138412290;
                  *(_QWORD *)((char *)&v1225 + 4) = v1315;
                  v138 = v137;
                  _os_log_impl(&dword_0, v137, 16LL, aAttemptToDelet_8, &v1225, 12LL);
                  v109 = v1312;
                }
                objc_release(v137, v138, v139, v140, v141, v142, v1226);
                v103 = v135;
              }
LABEL_41:
              if ( (unsigned __int8)objc_msgSend(v103, v109, (_QWORD)v1226) )
              {
                v143 = v103;
                v144 = v1308;
                v145 = objc_msgSend(v1315, v1308, (_QWORD)v1226);
                v94 = v144;
                v103 = v143;
                v91 = v1292;
                v146 = objc_msgSend(v1306, v94, (_QWORD)v1226);
                v109 = v1312;
                if ( v145 == v146 )
                  goto LABEL_388;
              }
              if ( (unsigned __int8)objc_msgSend(v103, v109, (_QWORD)v1226) )
              {
                v147 = objc_msgSend(v1315, v1308, (_QWORD)v1226);
                v1314 -= (signed __int64)v147 <= (signed __int64)v1314;
              }
              v94 = v109;
              if ( (unsigned __int8)objc_msgSend(v1309, v109, (_QWORD)v1226)
                || (v94 = v109, (unsigned __int8)objc_msgSend(v103, v109, (_QWORD)v1226)) )
              {
LABEL_388:
                v101 = v1315;
              }
              else
              {
                v93 = v1315;
                v94 = v1308;
                v95 = (char *)objc_msgSend(v1315, v1308, (_QWORD)v1226);
                if ( v95 == v1314 )
                {
                  v94 = v1291;
                  v100 = objc_msgSend(v93, v1291, (_QWORD)v1226);
                  v97 = (signed __int64)v100 <= (signed __int64)v1300;
                  v96 = (struct objc_object *)((char *)v1300 - v97);
                  v1300 = (char *)v1300 - v97;
                }
                v101 = v93;
              }
              objc_release((UIDictationConnection *)v101, v94, v96, (id)v97, v98, v99, v1226);
              v92 = v1313 + 1;
            }
            while ( v1313 + 1 < v1304 );
            v1304 = (char *)objc_msgSend(
                              v1299,
                              "countByEnumeratingWithState:objects:count:",
                              &v1240,
                              &v1321,
                              16LL,
                              (_QWORD)v1226);
          }
          while ( v1304 );
        }
        objc_release(
          (UIDictationConnection *)v1299,
          "countByEnumeratingWithState:objects:count:",
          v87,
          v88,
          v89,
          v90,
          v1226);
        v1247 = 0LL;
        v1246 = 0LL;
        v1245 = 0LL;
        v1244 = 0LL;
        v1312 = (char *)objc_retain(v1286, "countByEnumeratingWithState:objects:count:");
        v1315 = (char *)objc_msgSend(
                          v1312,
                          "countByEnumeratingWithState:objects:count:",
                          &v1244,
                          &v1320,
                          16LL,
                          (_QWORD)v1226);
        if ( v1315 )
        {
          v1313 = *(char **)v1245;
          do
          {
            v152 = 0LL;
            do
            {
              if ( *(char **)v1245 != v1313 )
                objc_enumerationMutation(v1312);
              v153 = *(void **)(*((_QWORD *)&v1244 + 1) + 8 * v152);
              v154 = objc_msgSend(*(void **)(*((_QWORD *)&v1244 + 1) + 8 * v152), v1311, (_QWORD)v1226);
              v155 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v154);
              if ( (unsigned __int8)objc_msgSend(v153, "isSectionOperation", (_QWORD)v1226) )
              {
                v156 = objc_msgSend(v155, v1308, (_QWORD)v1226);
                v1314 += (signed __int64)v156 <= (signed __int64)v1314;
              }
              v157 = "isSectionOperation";
              if ( !(unsigned __int8)objc_msgSend(v1309, "isSectionOperation", (_QWORD)v1226) )
              {
                v157 = "isSectionOperation";
                if ( !(unsigned __int8)objc_msgSend(v153, "isSectionOperation", (_QWORD)v1226) )
                {
                  v157 = v1308;
                  v162 = (char *)objc_msgSend(v155, v1308, (_QWORD)v1226);
                  if ( v162 == v1314 )
                  {
                    v157 = v1291;
                    v163 = objc_msgSend(v155, v1291, (_QWORD)v1226);
                    v159 = (signed __int64)v163 <= (signed __int64)v1300;
                    v158 = (struct objc_object *)((char *)v1300 + v159);
                    v1300 = (char *)v1300 + v159;
                  }
                }
              }
              objc_release(v155, v157, v158, (id)v159, v160, v161, v1226);
              ++v152;
            }
            while ( v152 < (unsigned __int64)v1315 );
            v1315 = (char *)objc_msgSend(
                              v1312,
                              "countByEnumeratingWithState:objects:count:",
                              &v1244,
                              &v1320,
                              16LL,
                              (_QWORD)v1226);
          }
          while ( v1315 );
        }
        objc_release(
          (UIDictationConnection *)v1312,
          "countByEnumeratingWithState:objects:count:",
          v148,
          v149,
          v150,
          v151,
          v1226);
        v164 = (char *)objc_msgSend(v1309, v1278, (_QWORD)v1226);
        v165 = v164;
        if ( (unsigned __int64)v164 <= 6 )
          v164 = (char *)qword_10B7080[(_QWORD)v164];
        v1315 = v164;
        v166 = (UIUpdateItem *)objc_msgSend(&OBJC_CLASS___UIUpdateItem, "alloc", (_QWORD)v1226);
        v167 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v1295, v1283, v1305, (_QWORD)v1226);
        v168 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v167);
        v169 = v166;
        v170 = v1290;
        v171 = v1290;
        v172 = (char *)objc_msgSend(v169, v1290, 1LL, v168, v165, (_QWORD)v1226);
        objc_release(v168, v171, v173, v174, v175, v176, v1226);
        v177 = (unsigned __int64)objc_msgSend(v1309, v1297, (_QWORD)v1226);
        v1313 = v172;
        objc_msgSend(v172, v1277, v177, (_QWORD)v1226);
        v178 = v1316;
        objc_msgSend(*(void **)&v1294[(_QWORD)v1316], v1301, v172, (_QWORD)v1226);
        v179 = (UIUpdateItem *)objc_msgSend(&OBJC_CLASS___UIUpdateItem, "alloc", (_QWORD)v1226);
        v180 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v1295, v1300, v1314, (_QWORD)v1226);
        v181 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v180);
        v182 = (UIDictationConnection *)objc_msgSend(v179, v170, 0LL, v181, v1315, (_QWORD)v1226);
        objc_release(v181, v170, v183, v184, v185, v186, v1226);
        v187 = ((__int64 (__fastcall *)(char *, char *))objc_msgSend)(v1309, v1297);
        ((void (__fastcall *)(UIDictationConnection *, char *, _QWORD))objc_msgSend)(v182, v1277, v187);
        v188 = v1301;
        ((void (__fastcall *)(_QWORD, char *, UIDictationConnection *))objc_msgSend)(
          *(_QWORD *)&v1281[(_QWORD)v178],
          v1301,
          v182);
        objc_release(v182, v188, v189, v190, v191, v192, v1226);
        objc_release((UIDictationConnection *)v1313, v188, v193, v194, v195, v196, v1226);
        objc_release((UIDictationConnection *)v1306, v188, v197, v198, v199, v200, v1226);
        v78 = v1285 + 1;
      }
      while ( v1285 + 1 < v1279 );
      v1279 = (char *)objc_msgSend(
                        v1269,
                        "countByEnumeratingWithState:objects:count:",
                        &v1228,
                        &v1322,
                        16LL,
                        (_QWORD)v1226);
    }
    while ( v1279 );
LABEL_67:
    v201 = (char *)v1316;
    v1303 = (void **)((char *)v1303 + (_QWORD)v1316);
    objc_release(
      (UIDictationConnection *)v1269,
      "countByEnumeratingWithState:objects:count:",
      v74,
      v75,
      v76,
      v77,
      v1226);
    v1266 = 2209LL;
    v202 = objc_msgSend(
             *(void **)(v201 + 2209),
             "sortedArrayUsingSelector:",
             "inverseCompareIndexPaths:",
             (_QWORD)v1226);
    v203 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v202);
    v1300 = objc_msgSend(v203, "mutableCopy", (_QWORD)v1226);
    objc_release((UIDictationConnection *)v1284, "mutableCopy", v204, v205, v206, v207, v1226);
    objc_release(v203, "mutableCopy", v208, v209, v210, v211, v1226);
    v1264 = (struct objc_object *)(&stru_880 + 25);
    v212 = objc_msgSend(*(void **)(v201 + 2201), "sortedArrayUsingSelector:", "compareIndexPaths:", (_QWORD)v1226);
    v213 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v212);
    v214 = objc_msgSend(v213, "mutableCopy", (_QWORD)v1226);
    objc_release((UIDictationConnection *)v1286, "mutableCopy", v215, v216, v217, v218, v1226);
    objc_release(v213, "mutableCopy", v219, v220, v221, v222, v1226);
    v223 = v201;
    v224 = v214;
    v225 = v214;
    v226 = v1307;
    *((_QWORD *)&v1225 + 1) = v1307;
    v227 = v1300;
    *(_QWORD *)&v1225 = v1300;
    objc_msgSend(
      v223,
      "_rebaseExistingShadowUpdatesIfNecessaryWithItems:insertItems:deleteItems:sortedInsertItems:sortedDeleteItems:sortedMoveItems:",
      v1280,
      v1268,
      v1267,
      v225,
      v1300,
      v1307);
    v228 = v1288;
    objc_msgSend(*v1288, "invalidateAllSections");
    objc_msgSend(*v228, "ensureAllSectionsAreValid", (_QWORD)v1226);
    v229 = objc_msgSend(v227, "count", (_QWORD)v1226);
    v1296 = (size_t)v224;
    if ( !v229 )
    {
      LODWORD(v1283) = 1;
      LODWORD(v1277) = 0;
      v233 = "count";
      goto LABEL_134;
    }
    v1308 = "objectAtIndexedSubscript:";
    v1314 = "indexPath";
    v1310 = "section";
    v1295 = "isSectionOperation";
    v1278 = "headerFooterOnly";
    v1297 = "count";
    v1301 = "row";
    v1285 = "numberOfSections";
    v1279 = "numberOfRowsInSection:";
    v1286 = "stringWithUTF8String:";
    v1282 = "currentHandler";
    v1270 = "handleFailureInMethod:object:file:lineNumber:description:";
    v1290 = "_usesModernSwipeActions";
    v1294 = "indexPathForRow:inSection:";
    v1281 = (_BYTE *)(&stru_8D0 + 73);
    LODWORD(v1283) = 2305;
    v1284 = "updateSwipedIndexPath:";
    v230 = 0LL;
    LODWORD(v1277) = 0;
    v1305 = 0LL;
    v231 = v1300;
    v232 = "count";
    while ( 2 )
    {
      v305 = objc_msgSend(v231, v1308, v230, (_QWORD)v1226);
      v306 = (char *)objc_retainAutoreleasedReturnValue(v305);
      v1299 = v306;
      v307 = objc_msgSend(v306, v1314, (_QWORD)v1226);
      v1311 = (char *)objc_retainAutoreleasedReturnValue(v307);
      v1298 = (char *)objc_msgSend(v1311, v1310, (_QWORD)v1226);
      v308 = v226;
      v1315 = v232;
      if ( objc_msgSend(v226, v232, (_QWORD)v1226) )
      {
        v1309 = "isEqual:";
        v1312 = "isSectionOperation";
        v1292 = "stringWithUTF8String:";
        v1291 = "currentHandler";
        v1293 = "handleFailureInMethod:object:file:lineNumber:description:";
        v309 = 0LL;
        do
        {
          v310 = objc_msgSend(v308, v1308, v309, (_QWORD)v1226);
          v311 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v310);
          v312 = v311;
          v313 = objc_msgSend(v311, v1314, (_QWORD)v1226);
          v314 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v313);
          v315 = v1309;
          v316 = (unsigned __int64)objc_msgSend(v314, v1309, v1311, (_QWORD)v1226);
          objc_release(v314, v315, v317, v318, v319, v320, v1226);
          if ( v316 )
          {
            v1306 = v312;
            LOBYTE(v1304) = (unsigned __int64)objc_msgSend(v312, v1312, (_QWORD)v1226);
            v321 = v1292;
            v322 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1292,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v323 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v322);
            v324 = (const __CFString *)v323;
            if ( !v323 )
              v324 = CFSTR("<Unknown File>");
            v1313 = (char *)objc_retain(v324, v321);
            objc_release(v323, v321, v325, v326, v327, v328, v1226);
            v329 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1291, (_QWORD)v1226);
            v330 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v329);
            if ( (_BYTE)v1304 )
            {
              v331 = 1678LL;
              v332 = v330;
              v333 = v1293;
              v334 = v1302;
              v335 = v1316;
              v336 = v1313;
              *((_QWORD *)&v1225 + 1) = v1298;
              v337 = CFSTR("attempt to perform a delete and a move from the same section (%ld)");
            }
            else
            {
              v331 = 1681LL;
              v332 = v330;
              v333 = v1293;
              v334 = v1302;
              v335 = v1316;
              v336 = v1313;
              *((_QWORD *)&v1225 + 1) = v1311;
              v337 = CFSTR("attempt to perform a delete and a move from the same index path (%@)");
            }
            *(_QWORD *)&v1225 = v337;
            objc_msgSend(
              v332,
              v333,
              v334,
              v335,
              v336,
              v331,
              __PAIR__(*((unsigned __int64 *)&v1225 + 1), (unsigned __int64)v337));
            objc_release(v330, v333, v351, v352, v353, v354, v1226);
            objc_release((UIDictationConnection *)v1313, v333, v355, v356, v357, v358, v1226);
            v350 = (UIDictationConnection *)v1306;
          }
          else
          {
            v333 = v1312;
            if ( (unsigned __int8)objc_msgSend(v1299, v1312, (_QWORD)v1226) )
            {
              v342 = objc_msgSend(v312, v1314, (_QWORD)v1226);
              v343 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v342);
              v333 = v1310;
              v344 = (char *)objc_msgSend(v343, v1310, (_QWORD)v1226);
              objc_release(v343, v333, v345, v346, v347, v348, v1226);
              if ( v1298 == v344 )
              {
                LODWORD(v1283) = 0;
                LOBYTE(v349) = 1;
                LODWORD(v1277) = v349;
              }
            }
            v350 = v312;
          }
          ++v309;
          objc_release(v350, v333, v338, v339, v340, v341, v1226);
          v308 = v1307;
        }
        while ( (unsigned __int64)objc_msgSend(v1307, v1315, (_QWORD)v1226) > v309 );
      }
      v226 = v308;
      v359 = v1299;
      if ( (unsigned __int8)objc_msgSend(v1299, v1295, (_QWORD)v1226) )
      {
        v360 = v1278;
        v361 = (unsigned __int64)objc_msgSend(v359, v1278, (_QWORD)v1226);
        v300 = v1315;
        if ( !v361 )
        {
          v366 = objc_msgSend(v1287, v1285, (_QWORD)v1226);
          if ( (signed __int64)v1298 >= (signed __int64)v366 )
          {
            v282 = v1286;
            v283 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1286,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v284 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v283);
            v285 = (const __CFString *)v284;
            if ( !v284 )
              v285 = CFSTR("<Unknown File>");
            v286 = objc_retain(v285, v282);
            objc_release(v284, v282, v287, v288, v289, v290, v1226);
            v291 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1282, (_QWORD)v1226);
            v292 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v291);
            v293 = objc_msgSend(v1287, v1285, (_QWORD)v1226);
            v294 = v1270;
            *(_QWORD *)&v1225 = v293;
            *((_QWORD *)&v1224 + 1) = v1298;
            *(_QWORD *)&v1224 = CFSTR("attempt to delete section %ld, but there are only %ld sections before the update");
            objc_msgSend(
              v292,
              v1270,
              v1302,
              v1316,
              v286,
              1694LL,
              CFSTR("attempt to delete section %ld, but there are only %ld sections before the update"),
              v1298,
              v293);
            objc_release(v292, v294, v295, v296, v297, v298, v1226);
            v299 = (UIDictationConnection *)v286;
            v300 = v1315;
            objc_release(v299, v294, v301, v302, v303, v304, v1226);
          }
          v367 = v1300;
          v360 = v300;
          if ( objc_msgSend(v1300, v300, (_QWORD)v1226) )
          {
            v1312 = "isEqual:";
            v368 = 0LL;
            v1309 = "removeObjectAtIndex:";
            v369 = 0;
            do
            {
              v370 = objc_msgSend(v367, v1308, v368, (_QWORD)v1226);
              v1313 = (char *)objc_retainAutoreleasedReturnValue(v370);
              v371 = v1295;
              if ( (unsigned __int8)objc_msgSend(v1313, v1295, (_QWORD)v1226)
                || (v376 = objc_msgSend(v1313, v1314, (_QWORD)v1226),
                    v377 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v376),
                    v371 = v1310,
                    v378 = (char *)objc_msgSend(v377, v1310, (_QWORD)v1226),
                    objc_release(v377, v371, v379, v380, v381, v382, v1226),
                    v24 = v378 == v1298,
                    v300 = v1315,
                    !v24) )
              {
                v385 = v369;
                if ( v369 > (signed int)v1305 )
                {
                  v386 = objc_msgSend(v1313, v1314, (_QWORD)v1226);
                  v387 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v386);
                  v371 = v1312;
                  v388 = (unsigned __int64)objc_msgSend(v387, v1312, v1311, (_QWORD)v1226);
                  objc_release(v387, v371, v389, v390, v391, v392, v1226);
                  v24 = v388 == 0;
                  v300 = v1315;
                  if ( !v24 )
                  {
                    v371 = v1309;
                    objc_msgSend(v1300, v1309, v368, (_QWORD)v1226);
                  }
                }
                v383 = v385 + 1;
              }
              else
              {
                v371 = v1309;
                objc_msgSend(v1300, v1309, v368, (_QWORD)v1226);
                v383 = v369;
                v384 = v369 < (signed int)v1305;
                v373 = (struct objc_object *)(unsigned int)((_DWORD)v1305 - v384);
                v1305 = (char *)(unsigned int)((_DWORD)v1305 - v384);
              }
              objc_release((UIDictationConnection *)v1313, v371, v372, v373, v374, v375, v1226);
              v369 = v383;
              v368 = v383;
              v367 = v1300;
              v360 = v300;
            }
            while ( (unsigned __int64)objc_msgSend(v1300, v300, (_QWORD)v1226) > v368 );
          }
          if ( *v1303 )
          {
            v393 = (unsigned __int64)objc_msgSend(v1316, v1290, (_QWORD)v1226);
            v226 = v1307;
            v394 = v1299;
            if ( v393
              || (v395 = (char *)objc_msgSend(*v1303, v1310, (_QWORD)v1226), v1298 != v395)
              || (v396 = *(_QWORD *)((char *)v1316 + 2801), _bittest64(&v396, 0x35u)) )
            {
              v360 = v1310;
              v397 = objc_msgSend(*v1303, v1310, (_QWORD)v1226);
              if ( (signed __int64)v1298 < (signed __int64)v397 )
              {
                v398 = v1316;
                if ( !_bittest64((const signed __int64 *)((char *)v1316 + 2801), 0x26u) )
                {
                  v399 = v1303;
                  v400 = (char *)objc_msgSend(*v1303, v1301, (_QWORD)v1226);
                  v401 = (char *)objc_msgSend(*v399, v1310, (_QWORD)v1226) - 1;
                  v402 = v1294;
                  v403 = v400;
                  goto LABEL_130;
                }
                goto LABEL_131;
              }
              goto LABEL_132;
            }
LABEL_124:
            v434 = (char *)v1316;
            v363 = *(struct objc_object **)((char *)v1316 + 2785);
            v362 = *(struct objc_object **)((char *)v1316 + 2793);
            v364 = (struct objc_object *)*(unsigned __int16 *)((char *)v1316 + 2809);
            v360 = (char *)0x800000000LL;
            *(_QWORD *)((char *)v1316 + 2785) = v363;
            *(_QWORD *)(v434 + 2793) = v362;
            *(_QWORD *)(v434 + 2801) = v396 | 0x800000000LL;
            *(_WORD *)(v434 + 2809) = (_WORD)v364;
            goto LABEL_132;
          }
LABEL_125:
          v226 = v1307;
        }
        v394 = v1299;
        goto LABEL_132;
      }
      v404 = v1311;
      v1306 = objc_msgSend(v1311, v1301, (_QWORD)v1226);
      v254 = v1310;
      v405 = (char *)objc_msgSend(v404, v1310, (_QWORD)v1226);
      v406 = objc_msgSend(v1287, v1285, (_QWORD)v1226);
      v1304 = v405;
      v408 = __OFSUB__(v405, v406);
      v407 = v405 - v406 < 0;
      v253 = v1315;
      if ( !(v407 ^ v408) )
      {
        v234 = v1286;
        v235 = objc_msgSend(
                 &OBJC_CLASS___NSString,
                 v1286,
                 "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                 (_QWORD)v1226);
        v236 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v235);
        v237 = (const __CFString *)v236;
        if ( !v236 )
          v237 = CFSTR("<Unknown File>");
        v1313 = (char *)objc_retain(v237, v234);
        objc_release(v236, v234, v238, v239, v240, v241, v1226);
        v242 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1282, (_QWORD)v1226);
        v243 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v242);
        v244 = objc_msgSend(v1287, v1285, (_QWORD)v1226);
        v245 = v1270;
        v246 = v1313;
        *((_QWORD *)&v1225 + 1) = v244;
        *(_QWORD *)&v1225 = v1304;
        *((_QWORD *)&v1224 + 1) = v1306;
        *(_QWORD *)&v1224 = CFSTR("attempt to delete row %ld from section %ld, but there are only %ld sections before the update");
        objc_msgSend(
          v243,
          v1270,
          v1302,
          v1316,
          v1313,
          1727LL,
          CFSTR("attempt to delete row %ld from section %ld, but there are only %ld sections before the update"),
          v1306,
          v1304,
          v244);
        v247 = v1315;
        objc_release(v243, v245, v248, v249, v250, v251, v1226);
        v252 = (UIDictationConnection *)v246;
        v253 = v247;
        v254 = v1310;
        objc_release(v252, v245, v255, v256, v257, v258, v1226);
      }
      v409 = objc_msgSend(v404, v254, (_QWORD)v1226);
      v410 = objc_msgSend(v1287, v1279, v409, (_QWORD)v1226);
      if ( (signed __int64)v1306 >= (signed __int64)v410 )
      {
        v259 = v1286;
        v260 = objc_msgSend(
                 &OBJC_CLASS___NSString,
                 v1286,
                 "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                 (_QWORD)v1226);
        v261 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v260);
        v262 = (const __CFString *)v261;
        if ( !v261 )
          v262 = CFSTR("<Unknown File>");
        v263 = (UIDictationConnection *)objc_retain(v262, v259);
        objc_release(v261, v259, v264, v265, v266, v267, v1226);
        v268 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1282, (_QWORD)v1226);
        v269 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v268);
        v270 = objc_msgSend(v1311, v1310, (_QWORD)v1226);
        v271 = objc_msgSend(v1287, v1279, v270, (_QWORD)v1226);
        v272 = v1270;
        *((_QWORD *)&v1225 + 1) = v271;
        *(_QWORD *)&v1225 = v1304;
        *((_QWORD *)&v1224 + 1) = v1306;
        *(_QWORD *)&v1224 = CFSTR("attempt to delete row %ld from section %ld which only contains %ld rows before the update");
        objc_msgSend(
          v269,
          v1270,
          v1302,
          v1316,
          v263,
          1728LL,
          CFSTR("attempt to delete row %ld from section %ld which only contains %ld rows before the update"),
          v1306,
          v1304,
          v271);
        v273 = v269;
        v253 = v1315;
        objc_release(v273, v272, v274, v275, v276, v277, v1226);
        objc_release(v263, v272, v278, v279, v280, v281, v1226);
      }
      v411 = (signed int)v1305 + 1;
      v412 = v1300;
      v360 = v253;
      if ( (unsigned __int64)objc_msgSend(v1300, v253, (_QWORD)v1226) > v411 )
      {
        v1313 = "objectAtIndex:";
        v1309 = "isEqual:";
        v1312 = "removeObjectAtIndex:";
        do
        {
          v413 = objc_msgSend(v412, v1313, v411, (_QWORD)v1226);
          v414 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v413);
          v415 = v414;
          v416 = objc_msgSend(v414, v1314, (_QWORD)v1226);
          v417 = v411;
          v418 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v416);
          v360 = v1309;
          v419 = (unsigned __int64)objc_msgSend(v418, v1309, v1311, (_QWORD)v1226);
          v420 = v418;
          v411 = v417;
          objc_release(v420, v360, v421, v422, v423, v424, v1226);
          v425 = v415;
          v426 = v1315;
          objc_release(v425, v360, v427, v428, v429, v430, v1226);
          v412 = v1300;
          if ( !v419 )
            break;
          objc_msgSend(v1300, v1312, v411, (_QWORD)v1226);
          v360 = v426;
        }
        while ( (unsigned __int64)objc_msgSend(v412, v426, (_QWORD)v1226) > v411 );
      }
      if ( !*v1303 )
        goto LABEL_125;
      v360 = v1310;
      v431 = (char *)objc_msgSend(*v1303, v1310, (_QWORD)v1226);
      v226 = v1307;
      v394 = v1299;
      if ( v1304 != v431 )
        goto LABEL_132;
      v432 = (unsigned __int64)objc_msgSend(v1316, v1290, (_QWORD)v1226);
      v433 = v1306;
      if ( !v432 && v433 == objc_msgSend(*v1303, v1301, (_QWORD)v1226) )
      {
        v396 = *(_QWORD *)((char *)v1316 + 2801);
        if ( !_bittest64(&v396, 0x35u) )
          goto LABEL_124;
      }
      v360 = v1301;
      if ( (signed __int64)v433 < (signed __int64)objc_msgSend(*v1303, v1301, (_QWORD)v1226) )
      {
        v398 = v1316;
        if ( !_bittest64((const signed __int64 *)((char *)v1316 + 2801), 0x26u) )
        {
          v399 = v1303;
          v435 = (char *)objc_msgSend(*v1303, v1301, (_QWORD)v1226) - 1;
          v436 = (char *)objc_msgSend(*v399, v1310, (_QWORD)v1226);
          v402 = v1294;
          v403 = v435;
          v401 = v436;
LABEL_130:
          v437 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v402, v403, v401, (_QWORD)v1226);
          v438 = objc_retainAutoreleasedReturnValue(v437);
          objc_storeStrong(v399, v437);
          v360 = v1284;
          objc_msgSend(*(void **)&v1281[(_QWORD)v398], v1284, v438, (_QWORD)v1226);
          v439 = (UIDictationConnection *)v438;
          v394 = v1299;
          objc_release(v439, v360, v440, v441, v442, v443, v1226);
        }
LABEL_131:
        v226 = v1307;
      }
LABEL_132:
      v444 = (char *)(unsigned int)((_DWORD)v1305 + 1);
      objc_release((UIDictationConnection *)v1311, v360, v362, v363, v364, v365, v1226);
      objc_release((UIDictationConnection *)v394, v360, v445, v446, v447, v448, v1226);
      v1305 = v444;
      v230 = (signed int)v444;
      v231 = v1300;
      v232 = v1297;
      if ( (unsigned __int64)objc_msgSend(v1300, v1297, (_QWORD)v1226) > v230 )
        continue;
      break;
    }
    v233 = v1297;
    v224 = (void *)v1296;
LABEL_134:
    v1315 = v233;
    if ( objc_msgSend(v224, v233, (_QWORD)v1226) )
    {
      v1311 = "objectAtIndexedSubscript:";
      v1293 = "indexPath";
      v1310 = "section";
      v1295 = "isSectionOperation";
      v1279 = "headerFooterOnly";
      v1297 = "row";
      v1301 = "numberOfSections";
      v1285 = "numberOfRowsInSection:";
      v1281 = "stringWithUTF8String:";
      v1284 = "currentHandler";
      v1286 = "handleFailureInMethod:object:file:lineNumber:description:";
      v1278 = "indexPathForRow:inSection:";
      v1290 = (_BYTE *)(&stru_8D0 + 73);
      v1294 = "updateSwipedIndexPath:";
      v449 = 0LL;
      v1305 = 0LL;
      v450 = v1315;
      while ( 1 )
      {
        v525 = objc_msgSend(v224, v1311, v449, (_QWORD)v1226);
        v526 = (char *)objc_retainAutoreleasedReturnValue(v525);
        v1298 = v526;
        v527 = objc_msgSend(v526, v1293, (_QWORD)v1226);
        v1314 = (char *)objc_retainAutoreleasedReturnValue(v527);
        v1304 = (char *)objc_msgSend(v1314, v1310, (_QWORD)v1226);
        v528 = v226;
        if ( objc_msgSend(v226, v450, (_QWORD)v1226) )
        {
          v1313 = "newIndexPath";
          v1308 = "isEqual:";
          v1309 = "isSectionOperation";
          v1299 = "stringWithUTF8String:";
          v1292 = "currentHandler";
          v1291 = "handleFailureInMethod:object:file:lineNumber:description:";
          v529 = 0LL;
          do
          {
            v530 = objc_msgSend(v528, v1311, v529, (_QWORD)v1226);
            v531 = (char *)objc_retainAutoreleasedReturnValue(v530);
            v532 = v531;
            v533 = objc_msgSend(v531, v1313, (_QWORD)v1226);
            v534 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v533);
            v535 = v1308;
            v536 = (unsigned __int64)objc_msgSend(v534, v1308, v1314, (_QWORD)v1226);
            objc_release(v534, v535, v537, v538, v539, v540, v1226);
            if ( v536 )
            {
              v1312 = v532;
              LOBYTE(v1306) = (unsigned __int64)objc_msgSend(v532, v1309, (_QWORD)v1226);
              v541 = v1299;
              v542 = objc_msgSend(
                       &OBJC_CLASS___NSString,
                       v1299,
                       "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                       (_QWORD)v1226);
              v543 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v542);
              v544 = (const __CFString *)v543;
              if ( !v543 )
                v544 = CFSTR("<Unknown File>");
              v545 = objc_retain(v544, v541);
              objc_release(v543, v541, v546, v547, v548, v549, v1226);
              v550 = ((__int64 (__fastcall *)(void *, char *))objc_msgSend)(&OBJC_CLASS___NSAssertionHandler, v1292);
              v551 = objc_retainAutoreleasedReturnValue(v550);
              if ( (_BYTE)v1306 )
              {
                v552 = 1766LL;
                v553 = (void *)v551;
                v554 = v1291;
                v555 = v1302;
                v556 = v1316;
                v557 = v545;
                *((_QWORD *)&v1225 + 1) = v1304;
                v558 = CFSTR("attempt to perform an insert and a move to the same section (%ld)");
              }
              else
              {
                v552 = 1769LL;
                v553 = (void *)v551;
                v554 = v1291;
                v555 = v1302;
                v556 = v1316;
                v557 = v545;
                *((_QWORD *)&v1225 + 1) = v1314;
                v558 = CFSTR("attempt to perform an insert and a move to the same index path (%@)");
              }
              *(_QWORD *)&v1225 = v558;
              objc_msgSend(
                v553,
                v554,
                v555,
                v556,
                v557,
                v552,
                __PAIR__(*((unsigned __int64 *)&v1225 + 1), (unsigned __int64)v558));
              ((void (__fastcall *)(__int64))objc_release)(v551);
              ((void (__fastcall *)(__int64))objc_release)(v545);
              v528 = v1307;
              v532 = v1312;
            }
            else
            {
              v554 = v1309;
              if ( (unsigned __int8)objc_msgSend(v1298, v1309, (_QWORD)v1226) )
              {
                v563 = objc_msgSend(v532, v1313, (_QWORD)v1226);
                v564 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v563);
                v554 = v1310;
                v565 = (char *)objc_msgSend(v564, v1310, (_QWORD)v1226);
                objc_release(v564, v554, v566, v567, v568, v569, v1226);
                if ( v1304 == v565 )
                {
                  LODWORD(v1283) = 0;
                  LOBYTE(v570) = 1;
                  LODWORD(v1277) = v570;
                }
              }
              v528 = v1307;
            }
            ++v529;
            objc_release((UIDictationConnection *)v532, v554, v559, v560, v561, v562, v1226);
          }
          while ( (unsigned __int64)objc_msgSend(v528, v1315, (_QWORD)v1226) > v529 );
        }
        v226 = v528;
        v571 = v1298;
        if ( !(unsigned __int8)objc_msgSend(v1298, v1295, (_QWORD)v1226) )
          break;
        v572 = v1279;
        v573 = (unsigned __int64)objc_msgSend(v571, v1279, (_QWORD)v1226);
        v224 = (void *)v1296;
        if ( !v573 )
        {
          v574 = objc_msgSend(*v1288, v1301, (_QWORD)v1226);
          if ( (signed __int64)v1304 >= (signed __int64)v574 )
          {
            v503 = v1281;
            v504 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1281,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v505 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v504);
            v506 = (const __CFString *)v505;
            if ( !v505 )
              v506 = CFSTR("<Unknown File>");
            v507 = objc_retain(v506, v503);
            objc_release(v505, v503, v508, v509, v510, v511, v1226);
            v512 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1284, (_QWORD)v1226);
            v513 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v512);
            v514 = objc_msgSend(*v1288, v1301, (_QWORD)v1226);
            v515 = v1286;
            *(_QWORD *)&v1225 = v514;
            *((_QWORD *)&v1224 + 1) = v1304;
            *(_QWORD *)&v1224 = CFSTR("attempt to insert section %ld but there are only %ld sections after the update");
            objc_msgSend(
              v513,
              v1286,
              v1302,
              v1316,
              v507,
              1783LL,
              CFSTR("attempt to insert section %ld but there are only %ld sections after the update"),
              v1304,
              v514);
            objc_release(v513, v515, v516, v517, v518, v519, v1226);
            v520 = (UIDictationConnection *)v507;
            v224 = (void *)v1296;
            objc_release(v520, v515, v521, v522, v523, v524, v1226);
          }
          v572 = v1315;
          if ( objc_msgSend(v224, v1315, (_QWORD)v1226) )
          {
            v1309 = "isEqual:";
            v575 = 0LL;
            v1308 = "removeObjectAtIndex:";
            v576 = 0;
            do
            {
              v577 = objc_msgSend(v224, v1311, v575, (_QWORD)v1226);
              v1313 = (char *)objc_retainAutoreleasedReturnValue(v577);
              v578 = v1295;
              if ( (unsigned __int8)objc_msgSend(v1313, v1295, (_QWORD)v1226)
                || (v583 = objc_msgSend(v1313, v1293, (_QWORD)v1226),
                    v584 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v583),
                    v578 = v1310,
                    v585 = (char *)objc_msgSend(v584, v1310, (_QWORD)v1226),
                    objc_release(v584, v578, v586, v587, v588, v589, v1226),
                    v24 = v585 == v1304,
                    v224 = (void *)v1296,
                    !v24) )
              {
                v592 = v576;
                if ( v576 > (signed int)v1305 )
                {
                  v593 = objc_msgSend(v1313, v1293, (_QWORD)v1226);
                  v594 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v593);
                  v578 = v1309;
                  v595 = (unsigned __int64)objc_msgSend(v594, v1309, v1314, (_QWORD)v1226);
                  objc_release(v594, v578, v596, v597, v598, v599, v1226);
                  v24 = v595 == 0;
                  v224 = (void *)v1296;
                  if ( !v24 )
                  {
                    v578 = v1308;
                    objc_msgSend((void *)v1296, v1308, v575, (_QWORD)v1226);
                  }
                }
                v590 = v592 + 1;
              }
              else
              {
                v578 = v1308;
                objc_msgSend((void *)v1296, v1308, v575, (_QWORD)v1226);
                v590 = v576;
                v591 = v576 < (signed int)v1305;
                v580 = (struct objc_object *)(unsigned int)((_DWORD)v1305 - v591);
                v1305 = (char *)(unsigned int)((_DWORD)v1305 - v591);
              }
              objc_release((UIDictationConnection *)v1313, v578, v579, v580, v581, v582, v1226);
              v576 = v590;
              v575 = v590;
              v572 = v1315;
            }
            while ( (unsigned __int64)objc_msgSend(v224, v1315, (_QWORD)v1226) > v590 );
          }
          if ( !*v1303 )
            goto LABEL_201;
          v572 = v1310;
          v600 = objc_msgSend(*v1303, v1310, (_QWORD)v1226);
          v226 = v1307;
          if ( (signed __int64)v1304 > (signed __int64)v600 )
            goto LABEL_202;
          v452 = (struct objc_object *)(&stru_AB0 + 49);
          if ( _bittest64((const signed __int64 *)((char *)v1316 + 2801), 0x26u) )
            goto LABEL_202;
          v601 = v1303;
          v602 = v1316;
          v603 = (char *)objc_msgSend(*v1303, v1297, (_QWORD)v1226);
          v604 = (char *)objc_msgSend(*v601, v1310, (_QWORD)v1226) + 1;
          v605 = v1278;
          v606 = v603;
LABEL_200:
          v653 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v605, v606, v604, (_QWORD)v1226);
          v654 = objc_retainAutoreleasedReturnValue(v653);
          objc_storeStrong(v601, v653);
          v655 = *(void **)&v1290[(_QWORD)v602];
          v226 = v1307;
          v572 = v1294;
          objc_msgSend(v655, v1294, v654, (_QWORD)v1226);
          v656 = (UIDictationConnection *)v654;
          v224 = (void *)v1296;
          objc_release(v656, v572, v657, v658, v659, v660, v1226);
        }
LABEL_202:
        v449 = (char *)(unsigned int)((_DWORD)v1305 + 1);
        objc_release((UIDictationConnection *)v1314, v572, v451, v452, v453, v454, v1226);
        objc_release((UIDictationConnection *)v1298, v572, v661, v662, v663, v664, v1226);
        v1305 = v449;
        v449 = (char *)(signed int)v449;
        v450 = v1315;
        if ( (unsigned __int64)objc_msgSend(v224, v1315, (_QWORD)v1226) <= (signed int)v449 )
          goto LABEL_203;
      }
      v607 = v1314;
      v474 = v1310;
      v608 = (char *)objc_msgSend(v1314, v1310, (_QWORD)v1226);
      v479 = objc_msgSend(v607, v1297, (_QWORD)v1226);
      v609 = v1288;
      v610 = objc_msgSend(*v1288, v1301, (_QWORD)v1226);
      v1312 = v608;
      v408 = __OFSUB__(v608, v610);
      v407 = v608 - v610 < 0;
      v224 = (void *)v1296;
      v1306 = v479;
      if ( !(v407 ^ v408) )
      {
        v455 = v1281;
        v456 = objc_msgSend(
                 &OBJC_CLASS___NSString,
                 v1281,
                 "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                 (_QWORD)v1226);
        v457 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v456);
        v458 = (const __CFString *)v457;
        if ( !v457 )
          v458 = CFSTR("<Unknown File>");
        v459 = objc_retain(v458, v455);
        objc_release(v457, v455, v460, v461, v462, v463, v1226);
        v464 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1284, (_QWORD)v1226);
        v465 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v464);
        v466 = objc_msgSend(*v609, v1301, (_QWORD)v1226);
        v467 = v1286;
        *((_QWORD *)&v1225 + 1) = v466;
        *(_QWORD *)&v1225 = v1312;
        *((_QWORD *)&v1224 + 1) = v1306;
        *(_QWORD *)&v1224 = CFSTR("attempt to insert row %ld into section %ld, but there are only %ld sections after the update");
        objc_msgSend(
          v465,
          v1286,
          v1302,
          v1316,
          v459,
          1813LL,
          CFSTR("attempt to insert row %ld into section %ld, but there are only %ld sections after the update"),
          v1306,
          v1312,
          v466);
        v468 = v465;
        v224 = (void *)v1296;
        objc_release(v468, v467, v469, v470, v471, v472, v1226);
        v473 = (UIDictationConnection *)v459;
        v474 = v1310;
        objc_release(v473, v467, v475, v476, v477, v478, v1226);
        v479 = v1306;
      }
      v611 = *v609;
      v612 = objc_msgSend(v1314, v474, (_QWORD)v1226);
      if ( (signed __int64)v479 >= (signed __int64)objc_msgSend(v611, v1285, v612, (_QWORD)v1226) )
      {
        v480 = v1281;
        v481 = objc_msgSend(
                 &OBJC_CLASS___NSString,
                 v1281,
                 "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                 (_QWORD)v1226);
        v482 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v481);
        v483 = (const __CFString *)v482;
        if ( !v482 )
          v483 = CFSTR("<Unknown File>");
        v484 = (UIDictationConnection *)objc_retain(v483, v480);
        objc_release(v482, v480, v485, v486, v487, v488, v1226);
        v489 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1284, (_QWORD)v1226);
        v490 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v489);
        v491 = *v1288;
        v492 = objc_msgSend(v1314, v1310, (_QWORD)v1226);
        v493 = objc_msgSend(v491, v1285, v492, (_QWORD)v1226);
        v494 = v1286;
        *(_QWORD *)&v1225 = v1312;
        *((_QWORD *)&v1224 + 1) = v493;
        *(_QWORD *)&v1224 = v1312;
        v1223 = v1306;
        v1222 = CFSTR("attempt to insert row %ld into section %ld, but there are only %ld rows in section %ld after the update");
        objc_msgSend(
          v490,
          v1286,
          v1302,
          v1316,
          v484,
          1814LL,
          CFSTR("attempt to insert row %ld into section %ld, but there are only %ld rows in section %ld after the update"),
          v1306,
          v1312,
          v493,
          v1312);
        objc_release(v490, v494, v495, v496, v497, v498, v1226);
        objc_release(v484, v494, v499, v500, v501, v502, v1226);
      }
      v613 = (signed int)v1305 + 1;
      v572 = v1315;
      if ( (unsigned __int64)objc_msgSend(v224, v1315, (_QWORD)v1226) > v613 )
      {
        v1313 = "objectAtIndex:";
        v1308 = "isEqual:";
        v1309 = "removeObjectAtIndex:";
        do
        {
          v614 = objc_msgSend(v224, v1313, v613, (_QWORD)v1226);
          v615 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v614);
          v616 = v615;
          v617 = objc_msgSend(v615, v1293, (_QWORD)v1226);
          v618 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v617);
          v572 = v1308;
          v619 = (unsigned __int64)objc_msgSend(v618, v1308, v1314, (_QWORD)v1226);
          objc_release(v618, v572, v620, v621, v622, v623, v1226);
          v624 = v616;
          v224 = (void *)v1296;
          objc_release(v624, v572, v625, v626, v627, v628, v1226);
          if ( !v619 )
            break;
          objc_msgSend(v224, v1309, v613, (_QWORD)v1226);
          v572 = v1315;
        }
        while ( (unsigned __int64)objc_msgSend(v224, v1315, (_QWORD)v1226) > v613 );
      }
      if ( !*v1303 )
      {
LABEL_201:
        v226 = v1307;
        goto LABEL_202;
      }
      v572 = v1310;
      v629 = (char *)objc_msgSend(*v1303, v1310, (_QWORD)v1226);
      v226 = v1307;
      if ( v1312 != v629 )
        goto LABEL_202;
      v630 = v1303;
      v572 = v1297;
      v631 = objc_msgSend(*v1303, v1297, (_QWORD)v1226);
      if ( (signed __int64)v1306 > (signed __int64)v631 )
        goto LABEL_202;
      v572 = v1310;
      v632 = (char *)objc_msgSend(*v630, v1310, (_QWORD)v1226);
      if ( v1312 == v632 )
      {
        v572 = v1297;
        v633 = objc_msgSend(*v1303, v1297, (_QWORD)v1226);
        if ( v1306 == v633 )
        {
          v1251 = 0LL;
          v1250 = 0LL;
          v1249 = 0LL;
          v1248 = 0LL;
          v1308 = (char *)objc_retain(v1300, v572);
          v572 = "countByEnumeratingWithState:objects:count:";
          v638 = objc_msgSend(v1308, "countByEnumeratingWithState:objects:count:", &v1248, &v1319, 16LL, (_QWORD)v1226);
          if ( v638 )
          {
            v1313 = *(char **)v1249;
            do
            {
              v639 = 0LL;
              do
              {
                if ( *(char **)v1249 != v1313 )
                  objc_enumerationMutation(v1308);
                v640 = objc_msgSend(*(void **)(*((_QWORD *)&v1248 + 1) + 8 * v639), v1293, (_QWORD)v1226);
                v641 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v640);
                v572 = "isEqual:";
                v642 = (unsigned __int64)objc_msgSend(v641, "isEqual:", *v1303, (_QWORD)v1226);
                objc_release(v641, "isEqual:", v643, v644, v645, v646, v1226);
                if ( v642 )
                {
                  objc_release((UIDictationConnection *)v1308, "isEqual:", v647, v648, v649, v650, v1226);
                  v226 = v1307;
                  v224 = (void *)v1296;
                  goto LABEL_202;
                }
                ++v639;
              }
              while ( v639 < (unsigned __int64)v638 );
              v572 = "countByEnumeratingWithState:objects:count:";
              v638 = objc_msgSend(
                       v1308,
                       "countByEnumeratingWithState:objects:count:",
                       &v1248,
                       &v1319,
                       16LL,
                       (_QWORD)v1226);
            }
            while ( v638 );
          }
          objc_release(
            (UIDictationConnection *)v1308,
            "countByEnumeratingWithState:objects:count:",
            v634,
            v635,
            v636,
            v637,
            v1226);
          v226 = v1307;
          v224 = (void *)v1296;
        }
      }
      v452 = (struct objc_object *)(&stru_AB0 + 49);
      if ( _bittest64((const signed __int64 *)((char *)v1316 + 2801), 0x26u) )
        goto LABEL_202;
      v601 = v1303;
      v602 = v1316;
      v651 = (char *)objc_msgSend(*v1303, v1297, (_QWORD)v1226) + 1;
      v652 = (char *)objc_msgSend(*v601, v1310, (_QWORD)v1226);
      v605 = v1278;
      v606 = v651;
      v604 = v652;
      goto LABEL_200;
    }
    v450 = v1315;
LABEL_203:
    v665 = v226;
    v666 = v450;
    if ( objc_msgSend(v226, v450, (_QWORD)v1226) )
    {
      v1270 = "objectAtIndexedSubscript:";
      v1304 = "indexPath";
      v1298 = "newIndexPath";
      v1297 = "section";
      v1294 = "row";
      v1258 = "isSectionOperation";
      v1290 = "numberOfSections";
      v1271 = "stringWithUTF8String:";
      v1272 = "currentHandler";
      v1273 = "handleFailureInMethod:object:file:lineNumber:description:";
      v1282 = "numberOfRowsInSection:";
      v1274 = "indexPathForRow:inSection:";
      v1275 = 2329LL;
      v1276 = "updateSwipedIndexPath:";
      v667 = 0LL;
      do
      {
        v1285 = v667;
        v717 = objc_msgSend(v665, v1270, (_QWORD)v1226);
        v718 = (void *)objc_retainAutoreleasedReturnValue(v717);
        v719 = v718;
        v720 = objc_msgSend(v718, v1304, (_QWORD)v1226);
        v721 = (void *)objc_retainAutoreleasedReturnValue(v720);
        v722 = objc_msgSend(v719, v1298, (_QWORD)v1226);
        v1312 = (char *)objc_retainAutoreleasedReturnValue(v722);
        v723 = v1297;
        v1301 = (char *)objc_msgSend(v721, v1297, (_QWORD)v1226);
        v1309 = (char *)v721;
        v1284 = (char *)objc_msgSend(v721, v1294, (_QWORD)v1226);
        v724 = v1312;
        v1295 = (char *)objc_msgSend(v1312, v723, (_QWORD)v1226);
        v1286 = (char *)objc_msgSend(v724, v1294, (_QWORD)v1226);
        v1281 = (char *)v719;
        LOBYTE(v723) = (unsigned __int64)objc_msgSend(v719, v1258, (_QWORD)v1226);
        v725 = v1287;
        v726 = objc_msgSend(v1287, v1290, (_QWORD)v1226);
        LOBYTE(v1291) = (_BYTE)v723;
        if ( (_BYTE)v723 )
        {
          if ( (signed __int64)v1301 >= (signed __int64)v726 )
          {
            v727 = v1271;
            v728 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1271,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v729 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v728);
            v730 = (const __CFString *)v729;
            if ( !v729 )
              v730 = CFSTR("<Unknown File>");
            v731 = (UIDictationConnection *)objc_retain(v730, v727);
            objc_release(v729, v727, v732, v733, v734, v735, v1226);
            v736 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1272, (_QWORD)v1226);
            v737 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v736);
            v738 = objc_msgSend(v1287, v1290, (_QWORD)v1226);
            v739 = v1273;
            *(_QWORD *)&v1225 = v738;
            *((_QWORD *)&v1224 + 1) = v1301;
            *(_QWORD *)&v1224 = CFSTR("attempt to move section %ld, but there are only %ld sections before the update");
            objc_msgSend(
              v737,
              v1273,
              v1302,
              v1316,
              v731,
              1864LL,
              CFSTR("attempt to move section %ld, but there are only %ld sections before the update"),
              v1301,
              v738);
            objc_release(v737, v739, v740, v741, v742, v743, v1226);
            v666 = v1315;
            objc_release(v731, v739, v744, v745, v746, v747, v1226);
          }
          v748 = objc_msgSend(*v1288, v1290, (_QWORD)v1226);
          if ( (signed __int64)v1295 >= (signed __int64)v748 )
          {
            v749 = v1271;
            v750 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1271,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v751 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v750);
            v752 = (const __CFString *)v751;
            if ( !v751 )
              v752 = CFSTR("<Unknown File>");
            v1314 = (char *)objc_retain(v752, v749);
            objc_release(v751, v749, v753, v754, v755, v756, v1226);
            v757 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1272, (_QWORD)v1226);
            v758 = (void *)objc_retainAutoreleasedReturnValue(v757);
            v759 = objc_msgSend(*v1288, v1290, (_QWORD)v1226);
            v760 = v1314;
            *((_QWORD *)&v1225 + 1) = v759;
            *(_QWORD *)&v1225 = v1295;
            *((_QWORD *)&v1224 + 1) = v1301;
            *(_QWORD *)&v1224 = CFSTR("attempt to to move section %ld to section %ld, but there are only %ld sections after the update");
            objc_msgSend(
              v758,
              v1273,
              v1302,
              v1316,
              v1314,
              1865LL,
              CFSTR("attempt to to move section %ld to section %ld, but there are only %ld sections after the update"),
              v1301,
              v1295,
              v759);
            ((void (__fastcall *)(void *))objc_release)(v758);
            v666 = v1315;
            ((void (__fastcall *)(char *))objc_release)(v760);
          }
        }
        else
        {
          if ( (signed __int64)v1301 >= (signed __int64)v726 )
          {
            v761 = v1271;
            v762 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1271,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v763 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v762);
            v764 = (const __CFString *)v763;
            if ( !v763 )
              v764 = CFSTR("<Unknown File>");
            v765 = (UIDictationConnection *)objc_retain(v764, v761);
            objc_release(v763, v761, v766, v767, v768, v769, v1226);
            v770 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1272, (_QWORD)v1226);
            v771 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v770);
            v772 = objc_msgSend(v1287, v1290, (_QWORD)v1226);
            v773 = v1273;
            *(_QWORD *)&v1225 = v772;
            *((_QWORD *)&v1224 + 1) = v1309;
            *(_QWORD *)&v1224 = CFSTR("attempt to move index path (%@) from a section that does not exist - there are only %ld sections before the update");
            objc_msgSend(
              v771,
              v1273,
              v1302,
              v1316,
              v765,
              1868LL,
              CFSTR("attempt to move index path (%@) from a section that does not exist - there are only %ld sections before the update"),
              v1309,
              v772);
            objc_release(v771, v773, v774, v775, v776, v777, v1226);
            v666 = v1315;
            v725 = v1287;
            objc_release(v765, v773, v778, v779, v780, v781, v1226);
          }
          v782 = objc_msgSend(v725, v1282, (_QWORD)v1226);
          if ( (signed __int64)v1284 >= (signed __int64)v782 )
          {
            v668 = v1271;
            v669 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1271,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v670 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v669);
            v671 = (const __CFString *)v670;
            if ( !v670 )
              v671 = CFSTR("<Unknown File>");
            v1314 = (char *)objc_retain(v671, v668);
            objc_release(v670, v668, v672, v673, v674, v675, v1226);
            v676 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1272, (_QWORD)v1226);
            v677 = (void *)objc_retainAutoreleasedReturnValue(v676);
            v678 = v1301;
            v679 = objc_msgSend(v1287, v1282, v1301, (_QWORD)v1226);
            v680 = v1314;
            *((_QWORD *)&v1225 + 1) = v678;
            *(_QWORD *)&v1225 = v679;
            *((_QWORD *)&v1224 + 1) = v1309;
            *(_QWORD *)&v1224 = CFSTR("attempt to move index path (%@) that does not exist - there are only %ld rows in section %ld before the update");
            objc_msgSend(
              v677,
              v1273,
              v1302,
              v1316,
              v1314,
              1869LL,
              CFSTR("attempt to move index path (%@) that does not exist - there are only %ld rows in section %ld before the update"),
              v1309,
              v679,
              v678);
            ((void (__fastcall *)(void *))objc_release)(v677);
            v666 = v1315;
            ((void (__fastcall *)(char *))objc_release)(v680);
          }
          v783 = v1288;
          v784 = objc_msgSend(*v1288, v1290, (_QWORD)v1226);
          v703 = v1295;
          if ( (signed __int64)v1295 >= (signed __int64)v784 )
          {
            v681 = v1271;
            v682 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1271,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v683 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v682);
            v684 = (const __CFString *)v683;
            if ( !v683 )
              v684 = CFSTR("<Unknown File>");
            v685 = objc_retain(v684, v681);
            objc_release(v683, v681, v686, v687, v688, v689, v1226);
            v690 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1272, (_QWORD)v1226);
            v691 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v690);
            v692 = objc_msgSend(*v783, v1290, (_QWORD)v1226);
            v693 = v1273;
            *((_QWORD *)&v1225 + 1) = v692;
            *(_QWORD *)&v1225 = v1312;
            *((_QWORD *)&v1224 + 1) = v1309;
            *(_QWORD *)&v1224 = CFSTR("attempt to move index path (%@) to index path (%@) in section that does not exist - there are only %ld sections after the update");
            objc_msgSend(
              v691,
              v1273,
              v1302,
              v1316,
              v685,
              1870LL,
              CFSTR("attempt to move index path (%@) to index path (%@) in section that does not exist - there are only %ld sections after the update"),
              v1309,
              v1312,
              v692);
            objc_release(v691, v693, v694, v695, v696, v697, v1226);
            v698 = (UIDictationConnection *)v685;
            v666 = v1315;
            objc_release(v698, v693, v699, v700, v701, v702, v1226);
            v703 = v1295;
          }
          v785 = objc_msgSend(*v783, v1282, v703, (_QWORD)v1226);
          if ( (signed __int64)v1286 >= (signed __int64)v785 )
          {
            v704 = v1271;
            v705 = objc_msgSend(
                     &OBJC_CLASS___NSString,
                     v1271,
                     "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                     (_QWORD)v1226);
            v706 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v705);
            v707 = (const __CFString *)v706;
            if ( !v706 )
              v707 = CFSTR("<Unknown File>");
            v1314 = (char *)objc_retain(v707, v704);
            objc_release(v706, v704, v708, v709, v710, v711, v1226);
            v712 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1272, (_QWORD)v1226);
            v713 = (void *)objc_retainAutoreleasedReturnValue(v712);
            v714 = v1295;
            v715 = objc_msgSend(*v1288, v1282, v1295, (_QWORD)v1226);
            v716 = v1314;
            *(_QWORD *)&v1225 = v714;
            *((_QWORD *)&v1224 + 1) = v715;
            *(_QWORD *)&v1224 = v1312;
            v1223 = v1309;
            v1222 = CFSTR("attempt to move index path (%@) to index path (%@) that does not exist - there are only %ld rows in section %ld after the update");
            objc_msgSend(
              v713,
              v1273,
              v1302,
              v1316,
              v1314,
              1871LL,
              CFSTR("attempt to move index path (%@) to index path (%@) that does not exist - there are only %ld rows in section %ld after the update"),
              v1309,
              v1312,
              v715,
              v714);
            ((void (__fastcall *)(void *))objc_release)(v713);
            v666 = v1315;
            ((void (__fastcall *)(char *))objc_release)(v716);
          }
        }
        v786 = v1285 + 1;
        v665 = v1307;
        v787 = v666;
        v788 = (char *)objc_msgSend(v1307, v666, (_QWORD)v1226);
        v1285 = v786;
        if ( v788 > v786 )
        {
          v1299 = "objectAtIndex:";
          v1292 = "isEqual:";
          v1279 = "removeObjectAtIndex:";
          v1293 = "stringWithUTF8String:";
          v1310 = "currentHandler";
          v1305 = "handleFailureInMethod:object:file:lineNumber:description:";
          v793 = v1285;
          LODWORD(v1313) = (_DWORD)v1285;
          while ( 1 )
          {
            v1306 = v793;
            v794 = objc_msgSend(v665, v1299, v793, (_QWORD)v1226);
            v795 = (char *)objc_retainAutoreleasedReturnValue(v794);
            v796 = v795;
            v797 = objc_msgSend(v795, v1304, (_QWORD)v1226);
            v798 = (char *)objc_retainAutoreleasedReturnValue(v797);
            v1308 = v796;
            v799 = objc_msgSend(v796, v1298, (_QWORD)v1226);
            v800 = (char *)objc_retainAutoreleasedReturnValue(v799);
            v801 = v1292;
            v1314 = v798;
            LOBYTE(v796) = (unsigned __int64)objc_msgSend(v1309, v1292, v798, (_QWORD)v1226);
            v802 = v801;
            v1311 = v800;
            v803 = (unsigned __int64)objc_msgSend(v1312, v801, v800, (_QWORD)v1226);
            if ( !(_BYTE)v796 )
              break;
            v808 = (signed int)v1313;
            if ( !v803 )
            {
              v829 = v1293;
              v830 = objc_msgSend(
                       &OBJC_CLASS___NSString,
                       v1293,
                       "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                       (_QWORD)v1226);
              v831 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v830);
              v832 = (const __CFString *)v831;
              if ( !v831 )
                v832 = CFSTR("<Unknown File>");
              v826 = (UIDictationConnection *)objc_retain(v832, v829);
              objc_release(v831, v829, v833, v834, v835, v836, v1226);
              v837 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1310, (_QWORD)v1226);
              v819 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v837);
              v809 = v1308;
              if ( (_BYTE)v1291 )
              {
                v838 = objc_msgSend(v1311, v1297, (_QWORD)v1226);
                v822 = 1886LL;
                v823 = v819;
                v802 = v1305;
                v824 = v1302;
                v825 = v1316;
                v827 = v826;
                *((_QWORD *)&v1225 + 1) = v838;
                *(_QWORD *)&v1225 = v1295;
                *((_QWORD *)&v1224 + 1) = v1301;
                v828 = CFSTR("attempt to move section %ld to both section %ld and section %ld");
LABEL_244:
                ((void (__fastcall *)(UIDictationConnection *, char *, SEL, void *, void *, signed __int64, const __CFString *, _QWORD, _QWORD, _QWORD))objc_msgSend)(
                  v823,
                  v802,
                  v824,
                  v825,
                  v827,
                  v822,
                  v828,
                  *((_QWORD *)&v1224 + 1),
                  v1225,
                  *((_QWORD *)&v1225 + 1));
LABEL_248:
                objc_release(v819, v802, v839, v840, v841, v842, v1226);
                objc_release(v826, v802, v849, v850, v851, v852, v1226);
LABEL_249:
                ++v808;
                goto LABEL_250;
              }
              v843 = 1889LL;
              v844 = v819;
              v802 = v1305;
              v845 = v1302;
              v846 = v1316;
              v847 = v826;
              *((_QWORD *)&v1225 + 1) = v1311;
              *(_QWORD *)&v1225 = v1312;
              *((_QWORD *)&v1224 + 1) = v1309;
              v848 = CFSTR("attempt to move row at index path %@ to both %@ and %@");
LABEL_247:
              *(_QWORD *)&v1224 = v848;
              objc_msgSend(
                v844,
                v802,
                v845,
                v846,
                v847,
                v843,
                __PAIR__(*((unsigned __int64 *)&v1224 + 1), (unsigned __int64)v848),
                v1225);
              goto LABEL_248;
            }
            v802 = v1279;
            objc_msgSend(v1307, v1279, v1306, (_QWORD)v1226);
            v809 = v1308;
LABEL_250:
            objc_release((UIDictationConnection *)v1311, v802, v804, v805, v806, v807, v1226);
            objc_release((UIDictationConnection *)v1314, v802, v853, v854, v855, v856, v1226);
            objc_release((UIDictationConnection *)v809, v802, v857, v858, v859, v860, v1226);
            LODWORD(v1313) = v808;
            v793 = (char *)v808;
            v665 = v1307;
            v666 = v1315;
            v787 = v1315;
            if ( objc_msgSend(v1307, v1315, (_QWORD)v1226) <= v793 )
              goto LABEL_251;
          }
          v808 = (signed int)v1313;
          v809 = v1308;
          if ( !v803 )
            goto LABEL_249;
          v810 = v1293;
          v811 = objc_msgSend(
                   &OBJC_CLASS___NSString,
                   v1293,
                   "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                   (_QWORD)v1226);
          v812 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v811);
          v813 = (const __CFString *)v812;
          if ( !v812 )
            v813 = CFSTR("<Unknown File>");
          v1306 = (void *)objc_retain(v813, v810);
          objc_release(v812, v810, v814, v815, v816, v817, v1226);
          v818 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1310, (_QWORD)v1226);
          v819 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v818);
          if ( (_BYTE)v1291 )
          {
            v820 = v1297;
            v1278 = (char *)objc_msgSend(v1309, v1297, (_QWORD)v1226);
            v821 = objc_msgSend(v1314, v820, (_QWORD)v1226);
            v822 = 1895LL;
            v823 = v819;
            v802 = v1305;
            v824 = v1302;
            v825 = v1316;
            v826 = (UIDictationConnection *)v1306;
            v827 = v1306;
            *((_QWORD *)&v1225 + 1) = v1295;
            *(_QWORD *)&v1225 = v821;
            *((_QWORD *)&v1224 + 1) = v1278;
            v828 = CFSTR("attempt to move both section %ld and section %ld to section %ld");
            goto LABEL_244;
          }
          v843 = 1898LL;
          v844 = v819;
          v802 = v1305;
          v845 = v1302;
          v846 = v1316;
          v826 = (UIDictationConnection *)v1306;
          v847 = v1306;
          *((_QWORD *)&v1225 + 1) = v1312;
          *(_QWORD *)&v1225 = v1314;
          *((_QWORD *)&v1224 + 1) = v1309;
          v848 = CFSTR("attempt to move both row at index path %@ and %@ to %@");
          goto LABEL_247;
        }
LABEL_251:
        if ( *v1303 )
        {
          v790 = (struct objc_object *)(&stru_AB0 + 49);
          if ( !_bittest64((const signed __int64 *)((char *)v1316 + 2801), 0x26u) )
          {
            v861 = v1297;
            v862 = (char *)objc_msgSend(*v1303, v1297, (_QWORD)v1226);
            if ( (_BYTE)v1291 )
            {
              v863 = v1303;
              if ( v1301 != v862 )
              {
                v895 = v1303;
                v896 = v1301;
                if ( (signed __int64)v896 < (signed __int64)objc_msgSend(*v1303, v861, (_QWORD)v1226) )
                {
                  v897 = objc_msgSend(*v895, v1294, (_QWORD)v1226);
                  v898 = (char *)objc_msgSend(*v895, v1297, (_QWORD)v1226);
                  v899 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v1274, v897, v898 - 1, (_QWORD)v1226);
                  v900 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v899);
                  objc_storeStrong(v895, v899);
                  v901 = (char *)v1276;
                  objc_msgSend(*(void **)((char *)v1316 + v1275), v1276, v900, (_QWORD)v1226);
                  v861 = v1297;
                  objc_release(v900, v901, v902, v903, v904, v905, v1226);
                }
                v787 = v861;
                v906 = objc_msgSend(*v895, v861, (_QWORD)v1226);
                v665 = v1307;
                v666 = v1315;
                if ( (signed __int64)v1295 > (signed __int64)v906 )
                  goto LABEL_271;
                v889 = v1303;
                v907 = (char *)objc_msgSend(*v1303, v1294, (_QWORD)v1226);
                v894 = (char *)objc_msgSend(*v889, v1297, (_QWORD)v1226) + 1;
                v892 = v1274;
                v893 = v907;
                goto LABEL_270;
              }
              v864 = (char *)objc_msgSend(*v1303, v1294, (_QWORD)v1226);
              v865 = v1274;
              v866 = v864;
              v867 = v1295;
            }
            else
            {
              v868 = v1303;
              if ( v1301 != v862
                || (v869 = (char *)objc_msgSend(*v1303, v1294, (_QWORD)v1226), v868 = v1303, v1284 != v869) )
              {
                v876 = (char *)objc_msgSend(*v868, v861, (_QWORD)v1226);
                if ( v1301 == v876 )
                {
                  v877 = objc_msgSend(*v868, v1294, (_QWORD)v1226);
                  if ( (signed __int64)v1284 < (signed __int64)v877 )
                  {
                    v878 = (char *)objc_msgSend(*v868, v1294, (_QWORD)v1226) - 1;
                    v879 = objc_msgSend(*v868, v1297, (_QWORD)v1226);
                    v880 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v1274, v878, v879, (_QWORD)v1226);
                    v881 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v880);
                    objc_storeStrong(v868, v880);
                    v882 = (char *)v1276;
                    objc_msgSend(*(void **)((char *)v1316 + v1275), v1276, v881, (_QWORD)v1226);
                    v861 = v1297;
                    objc_release(v881, v882, v883, v884, v885, v886, v1226);
                  }
                }
                v787 = v861;
                v887 = (char *)objc_msgSend(*v868, v861, (_QWORD)v1226);
                v665 = v1307;
                v666 = v1315;
                if ( v1295 != v887 )
                  goto LABEL_271;
                v787 = v1294;
                v888 = objc_msgSend(*v1303, v1294, (_QWORD)v1226);
                if ( (signed __int64)v1286 > (signed __int64)v888 )
                  goto LABEL_271;
                v889 = v1303;
                v890 = (char *)objc_msgSend(*v1303, v1294, (_QWORD)v1226) + 1;
                v891 = (char *)objc_msgSend(*v889, v1297, (_QWORD)v1226);
                v892 = v1274;
                v893 = v890;
                v894 = v891;
LABEL_270:
                v908 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v892, v893, v894, (_QWORD)v1226);
                v909 = objc_retainAutoreleasedReturnValue(v908);
                v665 = v1307;
                objc_storeStrong(v889, v908);
                v787 = (char *)v1276;
                objc_msgSend(*(void **)((char *)v1316 + v1275), v1276, v909, (_QWORD)v1226);
                v910 = (UIDictationConnection *)v909;
                v666 = v1315;
                objc_release(v910, v787, v911, v912, v913, v914, v1226);
                goto LABEL_271;
              }
              v863 = v1303;
              v865 = v1274;
              v866 = v1286;
              v867 = v1295;
            }
            v870 = objc_msgSend(&OBJC_CLASS___NSIndexPath, v865, v866, v867, (_QWORD)v1226);
            v871 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v870);
            objc_storeStrong(v863, v870);
            v787 = (char *)v1276;
            objc_msgSend(*(void **)((char *)v1316 + v1275), v1276, v871, (_QWORD)v1226);
            objc_release(v871, v787, v872, v873, v874, v875, v1226);
            v665 = v1307;
            v666 = v1315;
          }
        }
LABEL_271:
        objc_release((UIDictationConnection *)v1312, v787, v789, v790, v791, v792, v1226);
        objc_release((UIDictationConnection *)v1309, v787, v915, v916, v917, v918, v1226);
        objc_release((UIDictationConnection *)v1281, v787, v919, v920, v921, v922, v1226);
        v923 = (char *)objc_msgSend(v665, v666, (_QWORD)v1226);
        v667 = v1285;
      }
      while ( v923 > v1285 );
    }
    v924 = v1267;
    objc_msgSend(v1267, "addObjectsFromArray:", v1300, (_QWORD)v1226);
    objc_msgSend(v1268, "addObjectsFromArray:", v1296, (_QWORD)v1226);
    v925 = v665;
    v926 = objc_msgSend(v924, "sortedArrayUsingSelector:", "inverseCompareIndexPaths:", (_QWORD)v1226);
    v927 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v926);
    v928 = v1280;
    objc_msgSend(v1280, "addObjectsFromArray:", v927, (_QWORD)v1226);
    objc_release(v927, "addObjectsFromArray:", v929, v930, v931, v932, v1226);
    objc_msgSend(v928, "addObjectsFromArray:", v925, (_QWORD)v1226);
    v933 = (UIDictationConnection *)v1268;
    v934 = objc_msgSend(v1268, "sortedArrayUsingSelector:", "compareIndexPaths:", (_QWORD)v1226);
    v935 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v934);
    objc_msgSend(v928, "addObjectsFromArray:", v935, (_QWORD)v1226);
    objc_release(v935, "addObjectsFromArray:", v936, v937, v938, v939, v1226);
    objc_release(v933, "addObjectsFromArray:", v940, v941, v942, v943, v1226);
    objc_release((UIDictationConnection *)v1267, "addObjectsFromArray:", v944, v945, v946, v947, v1226);
    objc_release((UIDictationConnection *)v1307, "addObjectsFromArray:", v948, v949, v950, v951, v1226);
    objc_release((UIDictationConnection *)v1269, "addObjectsFromArray:", v952, v953, v954, v955, v1226);
    objc_release((UIDictationConnection *)v1296, "addObjectsFromArray:", v956, v957, v958, v959, v1226);
    objc_release((UIDictationConnection *)v1300, "addObjectsFromArray:", v960, v961, v962, v963, v1226);
    goto LABEL_299;
  }
  v964 = v1288;
  objc_msgSend(*v1288, "invalidateAllSections", (_QWORD)v1226);
  objc_msgSend(*v964, "ensureAllSectionsAreValid", (_QWORD)v1226);
  v965 = (char *)v1316;
  v1264 = (struct objc_object *)(&stru_880 + 25);
  v966 = objc_msgSend(
           *(void **)((char *)v1316 + 2201),
           "sortedArrayUsingSelector:",
           "compareIndexPaths:",
           (_QWORD)v1226);
  v967 = (char *)objc_retainAutoreleasedReturnValue(v966);
  v1266 = 2209LL;
  v968 = objc_msgSend(*(void **)(v965 + 2209), "sortedArrayUsingSelector:", "inverseCompareIndexPaths:", (_QWORD)v1226);
  v969 = (char *)objc_retainAutoreleasedReturnValue(v968);
  v1309 = v967;
  v970 = (char *)objc_msgSend(v967, "count", (_QWORD)v1226);
  v1312 = v969;
  v971 = "count";
  v972 = v970;
  v973 = (char *)objc_msgSend(v969, "count", (_QWORD)v1226);
  LOBYTE(v977) = (signed __int64)v972 > 0;
  v1311 = v973;
  v978 = (signed __int64)v973 > 0;
  if ( (signed __int64)v973 > 0 || (signed __int64)v972 > 0 )
  {
    v1313 = "objectAtIndex:";
    v1299 = "indexPath";
    v1292 = "row";
    v1308 = "addObject:";
    v979 = 0LL;
    v974 = 0LL;
    v1314 = 0LL;
    v1298 = v972;
    while ( 1 )
    {
      v1315 = v979;
      if ( (unsigned __int8)v977 & 1 )
      {
        v971 = v1313;
        v980 = objc_msgSend(v1309, v1313, v979, (_QWORD)v1226);
        v981 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v980);
      }
      else
      {
        v981 = 0LL;
      }
      if ( v978 )
      {
        v971 = v1313;
        v982 = objc_msgSend(v1312, v1313, v1314, (_QWORD)v1226);
        v983 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v982);
        v984 = v983 != 0LL;
        v985 = v1280;
        if ( v981 && v983 )
        {
          v986 = v1299;
          v987 = objc_msgSend(v981, v1299, (_QWORD)v1226);
          v1306 = (void *)objc_retainAutoreleasedReturnValue(v987);
          v988 = v1292;
          v1304 = (char *)objc_msgSend(v1306, v1292, (_QWORD)v1226);
          v989 = objc_msgSend(v983, v986, (_QWORD)v1226);
          v990 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v989);
          v991 = v988;
          v992 = ((__int64 (__fastcall *)(UIDictationConnection *, char *))objc_msgSend)(v990, v988);
          objc_release(v990, v991, v993, v994, v995, v996, v1226);
          objc_release((UIDictationConnection *)v1306, v991, v997, v998, v999, v1000, v1226);
          if ( (signed __int64)v1304 >= v992 )
          {
            v971 = v1308;
            objc_msgSend(v1280, v1308, v983, (_QWORD)v1226);
            ++v1314;
          }
          else
          {
            v971 = v1308;
            objc_msgSend(v1280, v1308, v981, (_QWORD)v1226);
            ++v1315;
          }
          v1001 = 1;
          v972 = v1298;
          goto LABEL_295;
        }
      }
      else
      {
        v984 = 0;
        v983 = 0LL;
        v985 = v1280;
      }
      if ( v981 && !v984 )
        break;
      LOBYTE(v977) = v984 && v981 == 0LL;
      if ( (_BYTE)v977 == 1 )
      {
        v971 = v1308;
        objc_msgSend(v985, v1308, v983, (_QWORD)v1226);
        ++v1314;
        goto LABEL_291;
      }
      v1001 = 0;
LABEL_295:
      objc_release(v983, v971, (id)v974, v977, v975, v976, v1226);
      objc_release(v981, v971, v1002, v1003, v1004, v1005, v1226);
      v979 = v1315;
      if ( v1001 )
      {
        LOBYTE(v977) = (signed __int64)v1315 < (signed __int64)v972;
        v974 = v1314;
        v978 = (signed __int64)v1314 < (signed __int64)v1311;
        if ( (signed __int64)v1314 < (signed __int64)v1311 || (signed __int64)v1315 < (signed __int64)v972 )
          continue;
      }
      goto LABEL_298;
    }
    v971 = v1308;
    objc_msgSend(v985, v1308, v981, (_QWORD)v1226);
    ++v1315;
LABEL_291:
    v1001 = 1;
    goto LABEL_295;
  }
LABEL_298:
  objc_release((UIDictationConnection *)v1312, v971, (id)v974, v977, v975, v976, v1226);
  objc_release((UIDictationConnection *)v1309, v971, v1006, v1007, v1008, v1009, v1226);
  LOBYTE(v1010) = 1;
  LODWORD(v1283) = v1010;
  LODWORD(v1277) = 0;
LABEL_299:
  v1314 = (char *)objc_msgSend(&OBJC_CLASS____UITableViewUpdateSupport, "alloc", (_QWORD)v1226);
  v1011 = v1288;
  v1315 = (char *)*v1288;
  v1012 = v1287;
  v1013 = objc_msgSend(v1287, "numberOfRows", (_QWORD)v1226);
  v1254 = 0LL;
  v1255 = v1013;
  v1014 = objc_msgSend(*v1011, "numberOfRows", (_QWORD)v1226);
  v1256 = 0LL;
  v1257 = v1014;
  v1015 = (char *)v1316;
  *(_QWORD *)&v1225 = v1262;
  *((_QWORD *)&v1224 + 1) = v1014;
  *(_QWORD *)&v1224 = 0LL;
  v1223 = v1255;
  v1222 = v1254;
  v1016 = objc_msgSend(
            v1314,
            "initWithTableView:updateItems:oldRowData:newRowData:oldRowRange:newRowRange:context:",
            v1316,
            v1280,
            v1012,
            v1315,
            v1254,
            v1255,
            0LL,
            v1014,
            v1262);
  v1017 = *(UIDictationConnection **)(v1015 + 2633);
  *(_QWORD *)(v1015 + 2633) = v1016;
  objc_release(
    v1017,
    "initWithTableView:updateItems:oldRowData:newRowData:oldRowRange:newRowRange:context:",
    v1018,
    (id)((char *)&stru_A10.reloff + 1),
    v1019,
    v1020,
    v1226);
  v1021 = objc_msgSend(v1012, "numberOfSections", (_QWORD)v1226);
  v1022 = (char *)calloc(8uLL, (size_t)v1021);
  v1296 = (size_t)v1021;
  if ( (signed __int64)v1021 > 0 )
  {
    v1023 = 0LL;
    do
    {
      *(_QWORD *)&v1022[8 * v1023] = objc_msgSend(v1012, "numberOfRowsInSection:", v1023, (_QWORD)v1226);
      ++v1023;
    }
    while ( v1296 != v1023 );
  }
  v1305 = v1022;
  v1024 = (char *)objc_msgSend(*v1288, "numberOfSections", (_QWORD)v1226);
  v1306 = calloc(8uLL, (size_t)v1024);
  v1025 = (char *)v1296;
  v1298 = (char *)calloc(8uLL, v1296);
  v1310 = v1024;
  v1291 = (char *)calloc(8uLL, (size_t)v1024);
  v1293 = (char *)calloc(8uLL, (size_t)v1025);
  v1235 = 0LL;
  v1234 = 0LL;
  v1233 = 0LL;
  v1232 = 0LL;
  v1309 = (char *)objc_retain(v1280, v1025);
  v1314 = (char *)objc_msgSend(v1309, "countByEnumeratingWithState:objects:count:", &v1232, &v1318, 16LL, (_QWORD)v1226);
  if ( !v1314 )
  {
    v1300 = 0LL;
    v1304 = v1025;
    v1292 = 0LL;
    goto LABEL_326;
  }
  v1308 = *(char **)v1233;
  v1300 = 0LL;
  v1304 = v1025;
  v1292 = 0LL;
  do
  {
    v1311 = "indexPath";
    v1315 = "section";
    v1313 = "isSectionOperation";
    v1312 = "headerFooterOnly";
    v1299 = "newIndexPath";
    v1030 = 0LL;
    do
    {
      if ( *(char **)v1233 != v1308 )
        objc_enumerationMutation(v1309);
      v1031 = *(void **)(*((_QWORD *)&v1232 + 1) + 8 * v1030);
      v1032 = objc_msgSend(*(void **)(*((_QWORD *)&v1232 + 1) + 8 * v1030), v1311, (_QWORD)v1226);
      v1033 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1032);
      v1034 = v1315;
      v1035 = objc_msgSend(v1033, v1315, (_QWORD)v1226);
      objc_release(v1033, v1034, v1036, v1037, v1038, v1039, v1226);
      if ( (unsigned __int8)objc_msgSend(v1031, v1313, (_QWORD)v1226) )
      {
        if ( !(unsigned __int8)objc_msgSend(v1031, v1312, (_QWORD)v1226) )
        {
          if ( (unsigned int)objc_msgSend(v1031, "action", (_QWORD)v1226) )
          {
            if ( (unsigned int)objc_msgSend(v1031, "action", (_QWORD)v1226) == 1 )
            {
              v1300 = (char *)v1300 + 1;
              --v1304;
            }
          }
          else
          {
            ++v1292;
            ++v1304;
          }
        }
        goto LABEL_322;
      }
      if ( !(unsigned int)objc_msgSend(v1031, "action", (_QWORD)v1226) )
      {
        v1040 = v1306;
        goto LABEL_316;
      }
      if ( (unsigned int)objc_msgSend(v1031, "action", (_QWORD)v1226) == 1 )
      {
        v1040 = v1298;
LABEL_316:
        ++v1040[(_QWORD)v1035];
        goto LABEL_322;
      }
      if ( (unsigned int)objc_msgSend(v1031, "action", (_QWORD)v1226) == 3 )
      {
        v1041 = objc_msgSend(v1031, v1299, (_QWORD)v1226);
        v1042 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1041);
        v1043 = v1315;
        v1044 = objc_msgSend(v1042, v1315, (_QWORD)v1226);
        objc_release(v1042, v1043, v1045, v1046, v1047, v1048, v1226);
        if ( *(void **)(*(_QWORD *)(*(_QWORD *)((char *)v1316 + 2633) + 264LL) + 8LL * (_QWORD)v1035) != v1044 )
        {
          ++*(_QWORD *)&v1293[8 * (_QWORD)v1035];
          ++*(_QWORD *)&v1291[8 * (_QWORD)v1044];
        }
      }
LABEL_322:
      ++v1030;
    }
    while ( v1030 < (unsigned __int64)v1314 );
    v1314 = (char *)objc_msgSend(
                      v1309,
                      "countByEnumeratingWithState:objects:count:",
                      &v1232,
                      &v1318,
                      16LL,
                      (_QWORD)v1226);
  }
  while ( v1314 );
LABEL_326:
  objc_release(
    (UIDictationConnection *)v1309,
    "countByEnumeratingWithState:objects:count:",
    v1026,
    v1027,
    v1028,
    v1029,
    v1226);
  v1049 = v1310;
  if ( v1304 != v1310 )
  {
    if ( _UIApplicationLinkedOnVersion )
    {
      if ( _UIApplicationLinkedOnVersion >= (unsigned int)__destroy_helper_block__49 )
        goto LABEL_329;
LABEL_333:
      v1070 = __UILogGetCategoryCachedImpl("Assert", &_endCellAnimationsWithContext____s_category_692);
      v1071 = (UIDictationConnection *)objc_retain(
                                         *(_QWORD *)(v1070 + 8),
                                         &_endCellAnimationsWithContext____s_category_692);
      v1072 = (UIDictationConnection *)&dword_10;
      if ( (unsigned __int8)os_log_type_enabled(v1071, 16LL) )
      {
        LODWORD(v1222) = 134218752;
        *(const __CFString **)((char *)&v1222 + 4) = (const __CFString *)v1310;
        WORD2(v1223) = 2048;
        *(void **)((char *)&v1223 + 6) = (void *)v1296;
        WORD3(v1224) = 2048;
        *((_QWORD *)&v1224 + 1) = v1292;
        LOWORD(v1225) = 2048;
        *(_QWORD *)((char *)&v1225 + 2) = v1300;
        v1072 = v1071;
        _os_log_impl(&dword_0, v1071, 16LL, aInvalidUpdateI_8, &v1222, 42LL);
      }
      objc_release(v1071, v1072, v1073, v1074, v1075, v1076, v1226);
      v1049 = v1310;
    }
    else
    {
      if ( !__UIApplicationLinkedOnOrAfter((unsigned __int64)__destroy_helper_block__49) )
        goto LABEL_333;
LABEL_329:
      v1050 = objc_msgSend(
                &OBJC_CLASS___NSString,
                "stringWithUTF8String:",
                "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                (_QWORD)v1226);
      v1051 = objc_retainAutoreleasedReturnValue(v1050);
      v1052 = (UIDictationConnection *)v1051;
      v1053 = CFSTR("<Unknown File>");
      if ( v1051 )
        v1053 = (const __CFString *)v1051;
      v1054 = (UIDictationConnection *)objc_retain(v1053, "stringWithUTF8String:");
      objc_release(v1052, "stringWithUTF8String:", v1055, v1056, v1057, v1058, v1226);
      v1059 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, "currentHandler", (_QWORD)v1226);
      v1060 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1059);
      *(_QWORD *)&v1225 = v1300;
      *((_QWORD *)&v1224 + 1) = v1292;
      *(_QWORD *)&v1224 = v1296;
      v1061 = v1310;
      v1223 = v1310;
      v1222 = CFSTR("Invalid update: invalid number of sections.  The number of sections contained in the table view after the update (%lu) must be equal to the number of sections contained in the table view before the update (%lu), plus or minus the number of sections inserted or deleted (%lu inserted, %lu deleted).");
      objc_msgSend(
        v1060,
        "handleFailureInMethod:object:file:lineNumber:description:",
        v1302,
        v1316,
        v1054,
        2036LL,
        CFSTR("Invalid update: invalid number of sections.  The number of sections contained in the table view after the update (%lu) must be equal to the number of sections contained in the table view before the update (%lu), plus or minus the number of sections inserted or deleted (%lu inserted, %lu deleted)."),
        v1310,
        v1296,
        v1292,
        v1300);
      objc_release(
        v1060,
        "handleFailureInMethod:object:file:lineNumber:description:",
        v1062,
        v1063,
        v1064,
        v1065,
        v1226);
      objc_release(
        v1054,
        "handleFailureInMethod:object:file:lineNumber:description:",
        v1066,
        v1067,
        v1068,
        v1069,
        v1226);
      v1049 = v1061;
    }
  }
  v1077 = v1305;
  if ( (signed __int64)v1049 > 0 )
  {
    v1311 = "stringWithUTF8String:";
    v1313 = "currentHandler";
    v1308 = "handleFailureInMethod:object:file:lineNumber:description:";
    v1078 = 0LL;
    v1079 = (char *)v1316;
    v1080 = "numberOfRowsInSection:";
    v1314 = "numberOfRowsInSection:";
    do
    {
      v1081 = *(_QWORD *)(*(_QWORD *)(*(_QWORD *)(v1079 + 2633) + 272LL) + 8LL * (_QWORD)v1078);
      if ( v1081 != 0x7FFFFFFFFFFFFFFFLL )
      {
        v1082 = *(char **)&v1077[8 * v1081];
        v1083 = (const __CFString *)objc_msgSend(*v1288, v1080, v1078, (_QWORD)v1226);
        if ( (signed __int64)v1083 < 0 )
        {
          if ( _UIApplicationLinkedOnVersion )
          {
            if ( _UIApplicationLinkedOnVersion >= (unsigned int)__destroy_helper_block__49 )
              goto LABEL_344;
LABEL_354:
            v1132 = __UILogGetCategoryCachedImpl("Assert", &_endCellAnimationsWithContext____s_category_695);
            v1133 = (UIDictationConnection *)objc_retain(
                                               *(_QWORD *)(v1132 + 8),
                                               &_endCellAnimationsWithContext____s_category_695);
            v1134 = (UIDictationConnection *)&dword_10;
            if ( (unsigned __int8)os_log_type_enabled(v1133, 16LL) )
            {
              LODWORD(v1225) = 134217984;
              *(_QWORD *)((char *)&v1225 + 4) = v1081;
              v1134 = v1133;
              _os_log_impl(&dword_0, v1133, 16LL, aInvalidUpdateI_9, &v1225, 12LL);
              v1080 = v1314;
            }
            objc_release(v1133, v1134, v1135, v1136, v1137, v1138, v1226);
            LODWORD(v1283) = 0;
            v1079 = (char *)v1316;
          }
          else
          {
            if ( !__UIApplicationLinkedOnOrAfter((unsigned __int64)__destroy_helper_block__49) )
              goto LABEL_354;
LABEL_344:
            v1084 = v1311;
            v1085 = objc_msgSend(
                      &OBJC_CLASS___NSString,
                      v1311,
                      "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                      (_QWORD)v1226);
            v1086 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1085);
            v1087 = (const __CFString *)v1086;
            if ( !v1086 )
              v1087 = CFSTR("<Unknown File>");
            v1315 = (char *)objc_retain(v1087, v1084);
            objc_release(v1086, v1084, v1088, v1089, v1090, v1091, v1226);
            v1092 = ((__int64 (__fastcall *)(void *, char *))objc_msgSend)(&OBJC_CLASS___NSAssertionHandler, v1313);
            v1093 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1092);
            LODWORD(v1283) = 0;
            v1094 = v1308;
            v1095 = (char *)v1316;
            *((_QWORD *)&v1225 + 1) = v1081;
            *(_QWORD *)&v1225 = CFSTR("Invalid update: invalid number of rows in section %lu.  Attempt to delete more rows than exist in section.");
            objc_msgSend(
              v1093,
              v1308,
              v1302,
              v1316,
              v1315,
              2050LL,
              CFSTR("Invalid update: invalid number of rows in section %lu.  Attempt to delete more rows than exist in section."),
              v1081);
            v1096 = v1093;
            v1080 = v1314;
            objc_release(v1096, v1094, v1097, v1098, v1099, v1100, v1226);
            objc_release((UIDictationConnection *)v1315, v1094, v1101, v1102, v1103, v1104, v1226);
            v1079 = v1095;
          }
          v1077 = v1305;
          v1049 = v1310;
          goto LABEL_363;
        }
        v1049 = v1310;
        if ( v1283 & 1 )
        {
          v1105 = (char *)*((_QWORD *)v1306 + (_QWORD)v1078);
          v1106 = *(char **)&v1298[8 * v1081];
          v1107 = v1082;
          v1108 = *(char **)&v1291[8 * (_QWORD)v1078];
          v1109 = *(char **)&v1293[8 * v1081];
          v1315 = v1107;
          v1110 = (const __CFString *)(&v1108[(unsigned __int64)(&v1107[(_QWORD)v1105] - v1106)] - v1109);
          v1079 = (char *)v1316;
          v1077 = v1305;
          if ( v1083 != v1110 )
          {
            v1292 = v1105;
            v1299 = v1106;
            v1304 = v1108;
            v1312 = v1109;
            if ( _UIApplicationLinkedOnVersion )
            {
              v1111 = v1315;
              if ( _UIApplicationLinkedOnVersion >= (unsigned int)__destroy_helper_block__49 )
                goto LABEL_350;
LABEL_359:
              v1140 = __UILogGetCategoryCachedImpl("Assert", &_endCellAnimationsWithContext____s_category_698);
              v1141 = (UIDictationConnection *)objc_retain(
                                                 *(_QWORD *)(v1140 + 8),
                                                 &_endCellAnimationsWithContext____s_category_698);
              v1142 = (UIDictationConnection *)&dword_10;
              if ( (unsigned __int8)os_log_type_enabled(v1141, 16LL) )
              {
                *((_DWORD *)&v1226 - 20) = 134219520;
                *(_QWORD *)((char *)&v1226 - 76) = v1078;
                *((_WORD *)&v1226 - 34) = 2048;
                *(_QWORD *)((char *)&v1226 - 66) = v1083;
                HIWORD(v1220) = 2048;
                v1221 = v1111;
                LOWORD(v1222) = 2048;
                *(const __CFString **)((char *)&v1222 + 2) = (const __CFString *)v1292;
                WORD1(v1223) = 2048;
                *(void **)((char *)&v1223 + 4) = v1299;
                WORD2(v1224) = 2048;
                *(_QWORD *)((char *)&v1224 + 6) = v1304;
                HIWORD(v1224) = 2048;
                *(_QWORD *)&v1225 = v1312;
                v1142 = v1141;
                _os_log_impl(&dword_0, v1141, 16LL, aInvalidUpdateI_10, &v1226 - 5, 72LL);
              }
              objc_release(v1141, v1142, v1143, v1144, v1145, v1146, v1226);
              LODWORD(v1283) = 0;
              v1079 = (char *)v1316;
            }
            else
            {
              v1139 = __UIApplicationLinkedOnOrAfter((unsigned __int64)__destroy_helper_block__49);
              v1111 = v1315;
              if ( !v1139 )
                goto LABEL_359;
LABEL_350:
              v1112 = v1311;
              v1113 = objc_msgSend(
                        &OBJC_CLASS___NSString,
                        v1311,
                        "/BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKitCore_Sim/UIKit-3698.84.15/UITableView.m",
                        (_QWORD)v1226);
              v1114 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1113);
              v1115 = (const __CFString *)v1114;
              if ( !v1114 )
                v1115 = CFSTR("<Unknown File>");
              v1315 = (char *)objc_retain(v1115, v1112);
              objc_release(v1114, v1112, v1116, v1117, v1118, v1119, v1226);
              v1120 = objc_msgSend(&OBJC_CLASS___NSAssertionHandler, v1313, (_QWORD)v1226);
              v1121 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1120);
              LODWORD(v1283) = 0;
              v1122 = v1308;
              v1123 = (char *)v1316;
              *((_QWORD *)&v1225 + 1) = v1312;
              *(_QWORD *)&v1225 = v1304;
              *((_QWORD *)&v1224 + 1) = v1299;
              *(_QWORD *)&v1224 = v1292;
              v1223 = v1111;
              v1222 = v1083;
              v1221 = v1078;
              v1220 = CFSTR("Invalid update: invalid number of rows in section %lu.  The number of rows contained in an existing section after the update (%lu) must be equal to the number of rows contained in that section before the update (%lu), plus or minus the number of rows inserted or deleted from that section (%lu inserted, %lu deleted) and plus or minus the number of rows moved into or out of that section (%lu moved in, %lu moved out).");
              objc_msgSend(
                v1121,
                v1308,
                v1302,
                v1316,
                v1315,
                2055LL,
                CFSTR("Invalid update: invalid number of rows in section %lu.  The number of rows contained in an existing section after the update (%lu) must be equal to the number of rows contained in that section before the update (%lu), plus or minus the number of rows inserted or deleted from that section (%lu inserted, %lu deleted) and plus or minus the number of rows moved into or out of that section (%lu moved in, %lu moved out)."),
                v1078,
                v1083,
                v1111,
                v1292,
                v1299,
                v1304,
                v1312);
              objc_release(v1121, v1122, v1124, v1125, v1126, v1127, v1226);
              objc_release((UIDictationConnection *)v1315, v1122, v1128, v1129, v1130, v1131, v1226);
              v1079 = v1123;
            }
            v1077 = v1305;
            v1049 = v1310;
            v1080 = v1314;
            goto LABEL_363;
          }
        }
        else
        {
          v1079 = (char *)v1316;
          v1077 = v1305;
        }
      }
LABEL_363:
      ++v1078;
    }
    while ( v1049 != v1078 );
  }
  free(v1077);
  free(v1306);
  free(v1298);
  free(v1291);
  free(v1293);
  if ( v1283 & 1 )
  {
    v1148 = v1316;
    objc_msgSend(v1316, "_updateWithItems:updateSupport:", v1280, *(_QWORD *)((char *)v1316 + 2633), (_QWORD)v1226);
    v1147 = v1148;
    v15 = v1265;
    v37 = v1266;
  }
  else
  {
    v1147 = v1316;
    v15 = v1265;
    v37 = v1266;
    if ( (unsigned __int8)v1277 & 1 )
    {
      objc_msgSend(v1316, "reloadData", (_QWORD)v1226);
      v1147 = v1316;
    }
  }
  v1149 = "_usesModernSwipeActions";
  v1150 = (unsigned __int64)objc_msgSend(v1147, "_usesModernSwipeActions", (_QWORD)v1226);
  v1155 = (char *)v1316;
  if ( !v1150 )
  {
    v1156 = *(_QWORD *)((char *)v1316 + 2801);
    if ( _bittest64(&v1156, 0x23u) )
    {
      v1152 = (struct objc_object *)(&stru_AB0 + 49);
      v1153 = *(struct objc_object **)((char *)v1316 + 2785);
      v1149 = *(char **)((char *)v1316 + 2793);
      v1151 = (struct objc_object *)*(unsigned __int16 *)((char *)v1316 + 2809);
      v1157 = v1156 & 0xFFFFFFFFF7FFFFFFLL;
      *(_QWORD *)((char *)v1316 + 2785) = v1153;
      *(_QWORD *)(v1155 + 2793) = v1149;
      *(_QWORD *)(v1155 + 2801) = v1157;
      *(_WORD *)(v1155 + 2809) = (_WORD)v1151;
      if ( !_bittest64((const signed __int64 *)&v1149, 0x2Bu) )
      {
        objc_msgSend(v1155, "_endSwipeToDeleteRowDidDelete:", 1LL, (_QWORD)v1226);
        v1152 = (struct objc_object *)(&stru_AB0 + 49);
        v1157 = *(_QWORD *)(v1155 + 2801);
        v1153 = *(struct objc_object **)(v1155 + 2785);
        v1149 = *(char **)(v1155 + 2793);
        v1151 = (struct objc_object *)*(unsigned __int16 *)(v1155 + 2809);
      }
      *(_QWORD *)(v1155 + 2785) = v1153;
      *(_QWORD *)(v1155 + 2793) = v1149;
      *(_QWORD *)(v1155 + 2801) = v1157 & 0xFFFFFFF7FFFFFFFFLL;
      *(_WORD *)(v1155 + 2809) = (_WORD)v1151;
    }
  }
  v1158 = *(UIDictationConnection **)(v1155 + 2633);
  *(_QWORD *)(v1155 + 2633) = 0LL;
  objc_release(v1158, v1149, v1151, v1152, v1153, v1154, v1226);
  objc_msgSend(v1316, "_numberOfRowsDidChange", (_QWORD)v1226);
  objc_release((UIDictationConnection *)v1263, "_numberOfRowsDidChange", v1159, v1160, v1161, v1162, v1226);
  objc_release((UIDictationConnection *)v1309, "_numberOfRowsDidChange", v1163, v1164, v1165, v1166, v1226);
  v23 = v1316;
  v36 = v1264;
LABEL_374:
  objc_msgSend(v23, "_endSuspendingUpdates", (_QWORD)v1226);
  v1167 = *(UIDictationConnection **)((char *)&v36->isa + (_QWORD)v1316);
  *(Class *)((char *)&v36->isa + (_QWORD)v1316) = 0LL;
  objc_release(v1167, "_endSuspendingUpdates", v1168, v36, v1169, v1170, v1226);
  v1171 = *(UIDictationConnection **)((char *)v1316 + v37);
  *(_QWORD *)((char *)v1316 + v37) = 0LL;
  objc_release(v1171, "_endSuspendingUpdates", v1172, v1173, v1174, v1175, v1226);
  v1176 = *(UIDictationConnection **)((char *)v1316 + 2217);
  v1177 = (struct objc_object *)v1316;
  *(_QWORD *)((char *)v1316 + 2217) = 0LL;
  objc_release(v1176, "_endSuspendingUpdates", v1178, v1177, v1179, v1180, v1226);
  v1181 = *(UIDictationConnection **)((char *)v1316 + 2225);
  v1182 = (struct objc_object *)v1316;
  *(_QWORD *)((char *)v1316 + 2225) = 0LL;
  objc_release(v1181, "_endSuspendingUpdates", v1183, v1182, v1184, v1185, v1226);
  v1186 = (unsigned __int64)objc_msgSend(
                              v1316,
                              "_shouldRestorePreReloadScrollPositionWithFirstVisibleIndexPath:scrolledToTop:",
                              v15,
                              v1289,
                              (_QWORD)v1226);
  v1187 = v1316;
  if ( v1186 )
    *((_BYTE *)v1316 + 2808) |= 1u;
  objc_msgSend(v1187, "_adjustExtraSeparators", (_QWORD)v1226);
  *((_BYTE *)v1316 + 2798) &= 0xBFu;
  v1188 = "_resumeReloads";
  objc_msgSend(v1316, "_resumeReloads", (_QWORD)v1226);
  v1189 = (char *)v1316;
  if ( _bittest64((const signed __int64 *)((char *)v1316 + 2801), 0x3Du) )
  {
    v1225 = v1261;
    v1224 = v1260;
    objc_msgSend(v1316, "_updateFocusedCellIndexPathIfNecessaryWithLastFocusedRect:", v1260, v1261);
    objc_msgSend(v1316, "_updateContentSize");
    objc_msgSend(v1316, "setNeedsFocusUpdate", (_QWORD)v1226);
    v1188 = "updateFocusIfNeeded";
    objc_msgSend(v1316, "updateFocusIfNeeded", (_QWORD)v1226);
    v1189 = (char *)v1316;
    v1189[2808] &= 0xDFu;
  }
  v1239 = 0LL;
  v1238 = 0LL;
  v1237 = 0LL;
  v1236 = 0LL;
  v1313 = (char *)objc_retain(*(_QWORD *)(v1189 + 1993), v1188);
  v1315 = (char *)objc_msgSend(v1313, "countByEnumeratingWithState:objects:count:", &v1236, &v1317, 16LL, (_QWORD)v1226);
  if ( v1315 )
  {
    v1311 = *(char **)v1237;
    do
    {
      v1314 = "_existingCellForRowAtIndexPath:";
      v1194 = 0LL;
      do
      {
        if ( *(char **)v1237 != v1311 )
          objc_enumerationMutation(v1313);
        v1195 = v1316;
        v1196 = objc_msgSend(v1316, v1314, *(_QWORD *)(*((_QWORD *)&v1236 + 1) + 8 * v1194), (_QWORD)v1226);
        v1197 = (UIDictationConnection *)objc_retainAutoreleasedReturnValue(v1196);
        objc_msgSend(v1195, "_cellDidShowSelectedBackground:", v1197, (_QWORD)v1226);
        objc_release(v1197, "_cellDidShowSelectedBackground:", v1198, v1199, v1200, v1201, v1226);
        ++v1194;
      }
      while ( v1194 < (unsigned __int64)v1315 );
      v1315 = (char *)objc_msgSend(
                        v1313,
                        "countByEnumeratingWithState:objects:count:",
                        &v1236,
                        &v1317,
                        16LL,
                        (_QWORD)v1226);
    }
    while ( v1315 );
  }
  objc_release(
    (UIDictationConnection *)v1313,
    "countByEnumeratingWithState:objects:count:",
    v1190,
    v1191,
    v1192,
    v1193,
    v1226);
  v1202 = (UIDictationConnection *)v1287;
  v1203 = v1259;
  objc_msgSend(
    v1316,
    "_addSwipeDeletionShadowUpdatesIfNecessaryWithOldRowData:oldSwipedIndexPath:",
    v1287,
    v1259,
    (_QWORD)v1226);
  objc_release(
    v1203,
    "_addSwipeDeletionShadowUpdatesIfNecessaryWithOldRowData:oldSwipedIndexPath:",
    v1204,
    v1205,
    v1206,
    v1207,
    v1226);
  objc_release(
    v1202,
    "_addSwipeDeletionShadowUpdatesIfNecessaryWithOldRowData:oldSwipedIndexPath:",
    v1208,
    v1209,
    v1210,
    v1211,
    v1226);
  objc_release(
    v1265,
    "_addSwipeDeletionShadowUpdatesIfNecessaryWithOldRowData:oldSwipedIndexPath:",
    v1212,
    v1213,
    v1214,
    v1215,
    v1226);
  objc_release(
    v1262,
    "_addSwipeDeletionShadowUpdatesIfNecessaryWithOldRowData:oldSwipedIndexPath:",
    v1216,
    v1217,
    v1218,
    v1219,
    v1226);
}

