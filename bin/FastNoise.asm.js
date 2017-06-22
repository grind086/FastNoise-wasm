Module["asm"] =  (function(global, env, buffer) {
  'almost asm';
  
  
  var HEAP8 = new global.Int8Array(buffer);
  var HEAP16 = new global.Int16Array(buffer);
  var HEAP32 = new global.Int32Array(buffer);
  var HEAPU8 = new global.Uint8Array(buffer);
  var HEAPU16 = new global.Uint16Array(buffer);
  var HEAPU32 = new global.Uint32Array(buffer);
  var HEAPF32 = new global.Float32Array(buffer);
  var HEAPF64 = new global.Float64Array(buffer);


  var STACKTOP=env.STACKTOP|0;
  var STACK_MAX=env.STACK_MAX|0;
  var DYNAMICTOP_PTR=env.DYNAMICTOP_PTR|0;
  var tempDoublePtr=env.tempDoublePtr|0;
  var ABORT=env.ABORT|0;

  var __THREW__ = 0;
  var threwValue = 0;
  var setjmpId = 0;
  var undef = 0;
  var nan = global.NaN, inf = global.Infinity;
  var tempInt = 0, tempBigInt = 0, tempBigIntP = 0, tempBigIntS = 0, tempBigIntR = 0.0, tempBigIntI = 0, tempBigIntD = 0, tempValue = 0, tempDouble = 0.0;
  var tempRet0 = 0;

  var Math_floor=global.Math.floor;
  var Math_abs=global.Math.abs;
  var Math_sqrt=global.Math.sqrt;
  var Math_pow=global.Math.pow;
  var Math_cos=global.Math.cos;
  var Math_sin=global.Math.sin;
  var Math_tan=global.Math.tan;
  var Math_acos=global.Math.acos;
  var Math_asin=global.Math.asin;
  var Math_atan=global.Math.atan;
  var Math_atan2=global.Math.atan2;
  var Math_exp=global.Math.exp;
  var Math_log=global.Math.log;
  var Math_ceil=global.Math.ceil;
  var Math_imul=global.Math.imul;
  var Math_min=global.Math.min;
  var Math_max=global.Math.max;
  var Math_clz32=global.Math.clz32;
  var Math_fround=global.Math.fround;
  var abort=env.abort;
  var assert=env.assert;
  var enlargeMemory=env.enlargeMemory;
  var getTotalMemory=env.getTotalMemory;
  var abortOnCannotGrowMemory=env.abortOnCannotGrowMemory;
  var abortStackOverflow=env.abortStackOverflow;
  var nullFunc_viiiii=env.nullFunc_viiiii;
  var nullFunc_vif=env.nullFunc_vif;
  var nullFunc_fiff=env.nullFunc_fiff;
  var nullFunc_vi=env.nullFunc_vi;
  var nullFunc_vii=env.nullFunc_vii;
  var nullFunc_ii=env.nullFunc_ii;
  var nullFunc_fiiffff=env.nullFunc_fiiffff;
  var nullFunc_fifff=env.nullFunc_fifff;
  var nullFunc_fiiiiii=env.nullFunc_fiiiiii;
  var nullFunc_fiffff=env.nullFunc_fiffff;
  var nullFunc_iiii=env.nullFunc_iiii;
  var nullFunc_fiiff=env.nullFunc_fiiff;
  var nullFunc_fii=env.nullFunc_fii;
  var nullFunc_fiifff=env.nullFunc_fiifff;
  var nullFunc_fiii=env.nullFunc_fiii;
  var nullFunc_fiiiii=env.nullFunc_fiiiii;
  var nullFunc_fi=env.nullFunc_fi;
  var nullFunc_iii=env.nullFunc_iii;
  var nullFunc_viiiiii=env.nullFunc_viiiiii;
  var nullFunc_fiiii=env.nullFunc_fiiii;
  var nullFunc_viii=env.nullFunc_viii;
  var nullFunc_v=env.nullFunc_v;
  var nullFunc_viif=env.nullFunc_viif;
  var nullFunc_viiii=env.nullFunc_viiii;
  var invoke_viiiii=env.invoke_viiiii;
  var invoke_vif=env.invoke_vif;
  var invoke_fiff=env.invoke_fiff;
  var invoke_vi=env.invoke_vi;
  var invoke_vii=env.invoke_vii;
  var invoke_ii=env.invoke_ii;
  var invoke_fiiffff=env.invoke_fiiffff;
  var invoke_fifff=env.invoke_fifff;
  var invoke_fiiiiii=env.invoke_fiiiiii;
  var invoke_fiffff=env.invoke_fiffff;
  var invoke_iiii=env.invoke_iiii;
  var invoke_fiiff=env.invoke_fiiff;
  var invoke_fii=env.invoke_fii;
  var invoke_fiifff=env.invoke_fiifff;
  var invoke_fiii=env.invoke_fiii;
  var invoke_fiiiii=env.invoke_fiiiii;
  var invoke_fi=env.invoke_fi;
  var invoke_iii=env.invoke_iii;
  var invoke_viiiiii=env.invoke_viiiiii;
  var invoke_fiiii=env.invoke_fiiii;
  var invoke_viii=env.invoke_viii;
  var invoke_v=env.invoke_v;
  var invoke_viif=env.invoke_viif;
  var invoke_viiii=env.invoke_viiii;
  var floatReadValueFromPointer=env.floatReadValueFromPointer;
  var simpleReadValueFromPointer=env.simpleReadValueFromPointer;
  var throwInternalError=env.throwInternalError;
  var get_first_emval=env.get_first_emval;
  var getLiveInheritedInstances=env.getLiveInheritedInstances;
  var ___assert_fail=env.___assert_fail;
  var __ZSt18uncaught_exceptionv=env.__ZSt18uncaught_exceptionv;
  var ClassHandle=env.ClassHandle;
  var getShiftFromSize=env.getShiftFromSize;
  var _emscripten_memcpy_big=env._emscripten_memcpy_big;
  var runDestructor=env.runDestructor;
  var throwInstanceAlreadyDeleted=env.throwInstanceAlreadyDeleted;
  var __embind_register_std_string=env.__embind_register_std_string;
  var init_RegisteredPointer=env.init_RegisteredPointer;
  var __embind_register_class_function=env.__embind_register_class_function;
  var flushPendingDeletes=env.flushPendingDeletes;
  var __embind_register_enum_value=env.__embind_register_enum_value;
  var makeClassHandle=env.makeClassHandle;
  var whenDependentTypesAreResolved=env.whenDependentTypesAreResolved;
  var __embind_register_class_constructor=env.__embind_register_class_constructor;
  var init_ClassHandle=env.init_ClassHandle;
  var _pthread_cleanup_push=env._pthread_cleanup_push;
  var ___syscall140=env.___syscall140;
  var ClassHandle_clone=env.ClassHandle_clone;
  var ___syscall146=env.___syscall146;
  var _pthread_cleanup_pop=env._pthread_cleanup_pop;
  var RegisteredClass=env.RegisteredClass;
  var ___cxa_find_matching_catch=env.___cxa_find_matching_catch;
  var embind_init_charCodes=env.embind_init_charCodes;
  var ___setErrNo=env.___setErrNo;
  var __embind_register_bool=env.__embind_register_bool;
  var ___resumeException=env.___resumeException;
  var createNamedFunction=env.createNamedFunction;
  var __embind_register_class_property=env.__embind_register_class_property;
  var __embind_register_emval=env.__embind_register_emval;
  var __emval_decref=env.__emval_decref;
  var init_embind=env.init_embind;
  var constNoSmartPtrRawPointerToWireType=env.constNoSmartPtrRawPointerToWireType;
  var heap32VectorToArray=env.heap32VectorToArray;
  var ClassHandle_delete=env.ClassHandle_delete;
  var RegisteredPointer_destructor=env.RegisteredPointer_destructor;
  var ___syscall6=env.___syscall6;
  var ensureOverloadTable=env.ensureOverloadTable;
  var new_=env.new_;
  var downcastPointer=env.downcastPointer;
  var replacePublicSymbol=env.replacePublicSymbol;
  var __embind_register_class=env.__embind_register_class;
  var ClassHandle_deleteLater=env.ClassHandle_deleteLater;
  var ___syscall54=env.___syscall54;
  var RegisteredPointer_deleteObject=env.RegisteredPointer_deleteObject;
  var ClassHandle_isDeleted=env.ClassHandle_isDeleted;
  var __embind_register_integer=env.__embind_register_integer;
  var ___cxa_allocate_exception=env.___cxa_allocate_exception;
  var enumReadValueFromPointer=env.enumReadValueFromPointer;
  var _embind_repr=env._embind_repr;
  var RegisteredPointer=env.RegisteredPointer;
  var craftInvokerFunction=env.craftInvokerFunction;
  var runDestructors=env.runDestructors;
  var requireRegisteredType=env.requireRegisteredType;
  var makeLegalFunctionName=env.makeLegalFunctionName;
  var upcastPointer=env.upcastPointer;
  var init_emval=env.init_emval;
  var shallowCopyInternalPointer=env.shallowCopyInternalPointer;
  var nonConstNoSmartPtrRawPointerToWireType=env.nonConstNoSmartPtrRawPointerToWireType;
  var _abort=env._abort;
  var throwBindingError=env.throwBindingError;
  var getTypeName=env.getTypeName;
  var validateThis=env.validateThis;
  var exposePublicSymbol=env.exposePublicSymbol;
  var RegisteredPointer_fromWireType=env.RegisteredPointer_fromWireType;
  var ___lock=env.___lock;
  var __embind_register_memory_view=env.__embind_register_memory_view;
  var getInheritedInstance=env.getInheritedInstance;
  var setDelayFunction=env.setDelayFunction;
  var ___gxx_personality_v0=env.___gxx_personality_v0;
  var extendError=env.extendError;
  var ___cxa_find_matching_catch_2=env.___cxa_find_matching_catch_2;
  var RegisteredPointer_getPointee=env.RegisteredPointer_getPointee;
  var __emval_register=env.__emval_register;
  var __embind_register_void=env.__embind_register_void;
  var ClassHandle_isAliasOf=env.ClassHandle_isAliasOf;
  var throwUnboundTypeError=env.throwUnboundTypeError;
  var readLatin1String=env.readLatin1String;
  var getBasestPointer=env.getBasestPointer;
  var getInheritedInstanceCount=env.getInheritedInstanceCount;
  var __embind_register_float=env.__embind_register_float;
  var integerReadValueFromPointer=env.integerReadValueFromPointer;
  var ___unlock=env.___unlock;
  var __embind_register_std_wstring=env.__embind_register_std_wstring;
  var genericPointerToWireType=env.genericPointerToWireType;
  var registerType=env.registerType;
  var ___cxa_throw=env.___cxa_throw;
  var __embind_register_enum=env.__embind_register_enum;
  var count_emval_handles=env.count_emval_handles;
  var requireFunction=env.requireFunction;
  var tempFloat = Math_fround(0);
  const f0 = Math_fround(0);

// EMSCRIPTEN_START_FUNCS

function stackAlloc(size) {
  size = size|0;
  var ret = 0;
  ret = STACKTOP;
  STACKTOP = (STACKTOP + size)|0;
  STACKTOP = (STACKTOP + 15)&-16;
  if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(size|0);

  return ret|0;
}
function stackSave() {
  return STACKTOP|0;
}
function stackRestore(top) {
  top = top|0;
  STACKTOP = top;
}
function establishStackSpace(stackBase, stackMax) {
  stackBase = stackBase|0;
  stackMax = stackMax|0;
  STACKTOP = stackBase;
  STACK_MAX = stackMax;
}

function setThrew(threw, value) {
  threw = threw|0;
  value = value|0;
  if ((__THREW__|0) == 0) {
    __THREW__ = threw;
    threwValue = value;
  }
}

function setTempRet0(value) {
  value = value|0;
  tempRet0 = value;
}
function getTempRet0() {
  return tempRet0|0;
}

function ___cxx_global_var_init() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZN38EmscriptenBindingInitializer_FastNoiseC2Ev(12588);
 return;
}
function __ZN38EmscriptenBindingInitializer_FastNoiseC2Ev($0) {
 $0 = $0|0;
 var $$byval_copy = 0, $$byval_copy916 = 0, $$byval_copy917 = 0, $$byval_copy918 = 0, $$byval_copy919 = 0, $$byval_copy920 = 0, $$byval_copy921 = 0, $$byval_copy922 = 0, $$byval_copy923 = 0, $$byval_copy924 = 0, $$byval_copy925 = 0, $$byval_copy926 = 0, $$byval_copy927 = 0, $$byval_copy928 = 0, $$byval_copy929 = 0, $$byval_copy930 = 0, $$byval_copy931 = 0, $$byval_copy932 = 0, $$byval_copy933 = 0, $$byval_copy934 = 0;
 var $$byval_copy935 = 0, $$byval_copy936 = 0, $$byval_copy937 = 0, $$byval_copy938 = 0, $$byval_copy939 = 0, $$byval_copy940 = 0, $$byval_copy941 = 0, $$byval_copy942 = 0, $$byval_copy943 = 0, $$byval_copy944 = 0, $$byval_copy945 = 0, $$byval_copy946 = 0, $$byval_copy947 = 0, $$byval_copy948 = 0, $$byval_copy949 = 0, $$byval_copy950 = 0, $$byval_copy951 = 0, $$byval_copy952 = 0, $$byval_copy953 = 0, $$byval_copy954 = 0;
 var $$byval_copy955 = 0, $$byval_copy956 = 0, $$byval_copy957 = 0, $$byval_copy958 = 0, $$byval_copy959 = 0, $$byval_copy960 = 0, $$byval_copy961 = 0, $$byval_copy962 = 0, $$byval_copy963 = 0, $$byval_copy964 = 0, $$byval_copy965 = 0, $$field = 0, $$field102 = 0, $$field111 = 0, $$field114 = 0, $$field117 = 0, $$field12 = 0, $$field120 = 0, $$field127 = 0, $$field130 = 0;
 var $$field135 = 0, $$field138 = 0, $$field147 = 0, $$field150 = 0, $$field153 = 0, $$field156 = 0, $$field163 = 0, $$field166 = 0, $$field171 = 0, $$field174 = 0, $$field183 = 0, $$field186 = 0, $$field189 = 0, $$field19 = 0, $$field192 = 0, $$field199 = 0, $$field202 = 0, $$field207 = 0, $$field210 = 0, $$field219 = 0;
 var $$field22 = 0, $$field222 = 0, $$field225 = 0, $$field228 = 0, $$field235 = 0, $$field238 = 0, $$field243 = 0, $$field246 = 0, $$field255 = 0, $$field258 = 0, $$field261 = 0, $$field264 = 0, $$field27 = 0, $$field271 = 0, $$field274 = 0, $$field279 = 0, $$field282 = 0, $$field291 = 0, $$field294 = 0, $$field297 = 0;
 var $$field30 = 0, $$field300 = 0, $$field307 = 0, $$field310 = 0, $$field315 = 0, $$field318 = 0, $$field327 = 0, $$field330 = 0, $$field333 = 0, $$field336 = 0, $$field343 = 0, $$field346 = 0, $$field351 = 0, $$field354 = 0, $$field363 = 0, $$field366 = 0, $$field369 = 0, $$field372 = 0, $$field379 = 0, $$field382 = 0;
 var $$field387 = 0, $$field39 = 0, $$field390 = 0, $$field399 = 0, $$field402 = 0, $$field405 = 0, $$field408 = 0, $$field415 = 0, $$field418 = 0, $$field42 = 0, $$field423 = 0, $$field426 = 0, $$field433 = 0, $$field436 = 0, $$field441 = 0, $$field444 = 0, $$field45 = 0, $$field451 = 0, $$field454 = 0, $$field459 = 0;
 var $$field462 = 0, $$field469 = 0, $$field472 = 0, $$field477 = 0, $$field48 = 0, $$field480 = 0, $$field487 = 0, $$field490 = 0, $$field495 = 0, $$field498 = 0, $$field505 = 0, $$field508 = 0, $$field513 = 0, $$field516 = 0, $$field523 = 0, $$field526 = 0, $$field531 = 0, $$field534 = 0, $$field541 = 0, $$field544 = 0;
 var $$field549 = 0, $$field55 = 0, $$field552 = 0, $$field559 = 0, $$field562 = 0, $$field567 = 0, $$field570 = 0, $$field577 = 0, $$field58 = 0, $$field580 = 0, $$field585 = 0, $$field588 = 0, $$field595 = 0, $$field598 = 0, $$field6 = 0, $$field603 = 0, $$field606 = 0, $$field613 = 0, $$field616 = 0, $$field621 = 0;
 var $$field624 = 0, $$field63 = 0, $$field631 = 0, $$field634 = 0, $$field639 = 0, $$field642 = 0, $$field649 = 0, $$field652 = 0, $$field657 = 0, $$field66 = 0, $$field660 = 0, $$field667 = 0, $$field670 = 0, $$field675 = 0, $$field678 = 0, $$field685 = 0, $$field688 = 0, $$field693 = 0, $$field696 = 0, $$field703 = 0;
 var $$field706 = 0, $$field711 = 0, $$field714 = 0, $$field721 = 0, $$field724 = 0, $$field729 = 0, $$field732 = 0, $$field739 = 0, $$field742 = 0, $$field747 = 0, $$field75 = 0, $$field750 = 0, $$field757 = 0, $$field760 = 0, $$field765 = 0, $$field768 = 0, $$field775 = 0, $$field778 = 0, $$field78 = 0, $$field783 = 0;
 var $$field786 = 0, $$field793 = 0, $$field796 = 0, $$field801 = 0, $$field804 = 0, $$field81 = 0, $$field811 = 0, $$field814 = 0, $$field819 = 0, $$field822 = 0, $$field829 = 0, $$field832 = 0, $$field837 = 0, $$field84 = 0, $$field840 = 0, $$field847 = 0, $$field850 = 0, $$field855 = 0, $$field858 = 0, $$field865 = 0;
 var $$field868 = 0, $$field873 = 0, $$field876 = 0, $$field883 = 0, $$field886 = 0, $$field891 = 0, $$field894 = 0, $$field9 = 0, $$field901 = 0, $$field904 = 0, $$field909 = 0, $$field91 = 0, $$field912 = 0, $$field94 = 0, $$field99 = 0, $$index1 = 0, $$index101 = 0, $$index105 = 0, $$index107 = 0, $$index109 = 0;
 var $$index11 = 0, $$index113 = 0, $$index119 = 0, $$index123 = 0, $$index125 = 0, $$index129 = 0, $$index133 = 0, $$index137 = 0, $$index141 = 0, $$index143 = 0, $$index145 = 0, $$index149 = 0, $$index15 = 0, $$index155 = 0, $$index159 = 0, $$index161 = 0, $$index165 = 0, $$index169 = 0, $$index17 = 0, $$index173 = 0;
 var $$index177 = 0, $$index179 = 0, $$index181 = 0, $$index185 = 0, $$index191 = 0, $$index195 = 0, $$index197 = 0, $$index201 = 0, $$index205 = 0, $$index209 = 0, $$index21 = 0, $$index213 = 0, $$index215 = 0, $$index217 = 0, $$index221 = 0, $$index227 = 0, $$index231 = 0, $$index233 = 0, $$index237 = 0, $$index241 = 0;
 var $$index245 = 0, $$index249 = 0, $$index25 = 0, $$index251 = 0, $$index253 = 0, $$index257 = 0, $$index263 = 0, $$index267 = 0, $$index269 = 0, $$index273 = 0, $$index277 = 0, $$index281 = 0, $$index285 = 0, $$index287 = 0, $$index289 = 0, $$index29 = 0, $$index293 = 0, $$index299 = 0, $$index3 = 0, $$index303 = 0;
 var $$index305 = 0, $$index309 = 0, $$index313 = 0, $$index317 = 0, $$index321 = 0, $$index323 = 0, $$index325 = 0, $$index329 = 0, $$index33 = 0, $$index335 = 0, $$index339 = 0, $$index341 = 0, $$index345 = 0, $$index349 = 0, $$index35 = 0, $$index353 = 0, $$index357 = 0, $$index359 = 0, $$index361 = 0, $$index365 = 0;
 var $$index37 = 0, $$index371 = 0, $$index375 = 0, $$index377 = 0, $$index381 = 0, $$index385 = 0, $$index389 = 0, $$index393 = 0, $$index395 = 0, $$index397 = 0, $$index401 = 0, $$index407 = 0, $$index41 = 0, $$index411 = 0, $$index413 = 0, $$index417 = 0, $$index421 = 0, $$index425 = 0, $$index429 = 0, $$index431 = 0;
 var $$index435 = 0, $$index439 = 0, $$index443 = 0, $$index447 = 0, $$index449 = 0, $$index453 = 0, $$index457 = 0, $$index461 = 0, $$index465 = 0, $$index467 = 0, $$index47 = 0, $$index471 = 0, $$index475 = 0, $$index479 = 0, $$index483 = 0, $$index485 = 0, $$index489 = 0, $$index493 = 0, $$index497 = 0, $$index5 = 0;
 var $$index501 = 0, $$index503 = 0, $$index507 = 0, $$index51 = 0, $$index511 = 0, $$index515 = 0, $$index519 = 0, $$index521 = 0, $$index525 = 0, $$index529 = 0, $$index53 = 0, $$index533 = 0, $$index537 = 0, $$index539 = 0, $$index543 = 0, $$index547 = 0, $$index551 = 0, $$index555 = 0, $$index557 = 0, $$index561 = 0;
 var $$index565 = 0, $$index569 = 0, $$index57 = 0, $$index573 = 0, $$index575 = 0, $$index579 = 0, $$index583 = 0, $$index587 = 0, $$index591 = 0, $$index593 = 0, $$index597 = 0, $$index601 = 0, $$index605 = 0, $$index609 = 0, $$index61 = 0, $$index611 = 0, $$index615 = 0, $$index619 = 0, $$index623 = 0, $$index627 = 0;
 var $$index629 = 0, $$index633 = 0, $$index637 = 0, $$index641 = 0, $$index645 = 0, $$index647 = 0, $$index65 = 0, $$index651 = 0, $$index655 = 0, $$index659 = 0, $$index663 = 0, $$index665 = 0, $$index669 = 0, $$index673 = 0, $$index677 = 0, $$index681 = 0, $$index683 = 0, $$index687 = 0, $$index69 = 0, $$index691 = 0;
 var $$index695 = 0, $$index699 = 0, $$index701 = 0, $$index705 = 0, $$index709 = 0, $$index71 = 0, $$index713 = 0, $$index717 = 0, $$index719 = 0, $$index723 = 0, $$index727 = 0, $$index73 = 0, $$index731 = 0, $$index735 = 0, $$index737 = 0, $$index741 = 0, $$index745 = 0, $$index749 = 0, $$index753 = 0, $$index755 = 0;
 var $$index759 = 0, $$index763 = 0, $$index767 = 0, $$index77 = 0, $$index771 = 0, $$index773 = 0, $$index777 = 0, $$index781 = 0, $$index785 = 0, $$index789 = 0, $$index791 = 0, $$index795 = 0, $$index799 = 0, $$index803 = 0, $$index807 = 0, $$index809 = 0, $$index813 = 0, $$index817 = 0, $$index821 = 0, $$index825 = 0;
 var $$index827 = 0, $$index83 = 0, $$index831 = 0, $$index835 = 0, $$index839 = 0, $$index843 = 0, $$index845 = 0, $$index849 = 0, $$index853 = 0, $$index857 = 0, $$index861 = 0, $$index863 = 0, $$index867 = 0, $$index87 = 0, $$index871 = 0, $$index875 = 0, $$index879 = 0, $$index881 = 0, $$index885 = 0, $$index889 = 0;
 var $$index89 = 0, $$index893 = 0, $$index897 = 0, $$index899 = 0, $$index903 = 0, $$index907 = 0, $$index911 = 0, $$index915 = 0, $$index93 = 0, $$index97 = 0, $1 = 0, $10 = 0, $100 = 0, $101 = 0, $102 = 0, $103 = 0, $104 = 0, $105 = 0, $106 = 0, $107 = 0;
 var $108 = 0, $109 = 0, $11 = 0, $110 = 0, $111 = 0, $112 = 0, $113 = 0, $114 = 0, $115 = 0, $116 = 0, $117 = 0, $118 = 0, $119 = 0, $12 = 0, $120 = 0, $121 = 0, $122 = 0, $123 = 0, $124 = 0, $125 = 0;
 var $126 = 0, $127 = 0, $128 = 0, $129 = 0, $13 = 0, $130 = 0, $131 = 0, $132 = 0, $133 = 0, $134 = 0, $135 = 0, $136 = 0, $137 = 0, $138 = 0, $139 = 0, $14 = 0, $140 = 0, $141 = 0, $142 = 0, $143 = 0;
 var $144 = 0, $145 = 0, $146 = 0, $147 = 0, $148 = 0, $149 = 0, $15 = 0, $150 = 0, $151 = 0, $152 = 0, $153 = 0, $154 = 0, $155 = 0, $156 = 0, $157 = 0, $158 = 0, $159 = 0, $16 = 0, $160 = 0, $161 = 0;
 var $162 = 0, $163 = 0, $164 = 0, $165 = 0, $166 = 0, $167 = 0, $168 = 0, $169 = 0, $17 = 0, $170 = 0, $171 = 0, $172 = 0, $173 = 0, $174 = 0, $175 = 0, $176 = 0, $177 = 0, $178 = 0, $179 = 0, $18 = 0;
 var $180 = 0, $181 = 0, $182 = 0, $183 = 0, $184 = 0, $185 = 0, $186 = 0, $187 = 0, $188 = 0, $189 = 0, $19 = 0, $190 = 0, $191 = 0, $192 = 0, $193 = 0, $194 = 0, $195 = 0, $196 = 0, $197 = 0, $198 = 0;
 var $199 = 0, $2 = 0, $20 = 0, $200 = 0, $201 = 0, $202 = 0, $203 = 0, $204 = 0, $205 = 0, $206 = 0, $207 = 0, $208 = 0, $209 = 0, $21 = 0, $210 = 0, $211 = 0, $212 = 0, $213 = 0, $214 = 0, $215 = 0;
 var $216 = 0, $217 = 0, $218 = 0, $219 = 0, $22 = 0, $220 = 0, $221 = 0, $222 = 0, $223 = 0, $224 = 0, $225 = 0, $226 = 0, $227 = 0, $228 = 0, $229 = 0, $23 = 0, $230 = 0, $231 = 0, $232 = 0, $233 = 0;
 var $234 = 0, $235 = 0, $236 = 0, $237 = 0, $238 = 0, $239 = 0, $24 = 0, $240 = 0, $241 = 0, $242 = 0, $243 = 0, $244 = 0, $245 = 0, $246 = 0, $247 = 0, $248 = 0, $249 = 0, $25 = 0, $250 = 0, $251 = 0;
 var $252 = 0, $253 = 0, $254 = 0, $255 = 0, $256 = 0, $257 = 0, $258 = 0, $259 = 0, $26 = 0, $260 = 0, $261 = 0, $262 = 0, $263 = 0, $264 = 0, $265 = 0, $266 = 0, $267 = 0, $268 = 0, $269 = 0, $27 = 0;
 var $270 = 0, $271 = 0, $272 = 0, $273 = 0, $274 = 0, $275 = 0, $276 = 0, $277 = 0, $278 = 0, $279 = 0, $28 = 0, $280 = 0, $281 = 0, $282 = 0, $283 = 0, $284 = 0, $285 = 0, $286 = 0, $287 = 0, $288 = 0;
 var $289 = 0, $29 = 0, $290 = 0, $291 = 0, $292 = 0, $293 = 0, $294 = 0, $295 = 0, $296 = 0, $297 = 0, $298 = 0, $299 = 0, $3 = 0, $30 = 0, $300 = 0, $301 = 0, $302 = 0, $303 = 0, $304 = 0, $305 = 0;
 var $306 = 0, $307 = 0, $308 = 0, $309 = 0, $31 = 0, $310 = 0, $311 = 0, $312 = 0, $313 = 0, $314 = 0, $315 = 0, $316 = 0, $317 = 0, $318 = 0, $319 = 0, $32 = 0, $320 = 0, $321 = 0, $322 = 0, $323 = 0;
 var $324 = 0, $325 = 0, $326 = 0, $327 = 0, $328 = 0, $329 = 0, $33 = 0, $330 = 0, $331 = 0, $332 = 0, $333 = 0, $334 = 0, $335 = 0, $336 = 0, $337 = 0, $338 = 0, $339 = 0, $34 = 0, $340 = 0, $341 = 0;
 var $342 = 0, $343 = 0, $344 = 0, $345 = 0, $346 = 0, $347 = 0, $348 = 0, $349 = 0, $35 = 0, $350 = 0, $351 = 0, $352 = 0, $353 = 0, $354 = 0, $355 = 0, $356 = 0, $357 = 0, $358 = 0, $359 = 0, $36 = 0;
 var $360 = 0, $361 = 0, $362 = 0, $363 = 0, $364 = 0, $365 = 0, $366 = 0, $367 = 0, $368 = 0, $369 = 0, $37 = 0, $370 = 0, $371 = 0, $372 = 0, $373 = 0, $374 = 0, $375 = 0, $376 = 0, $377 = 0, $378 = 0;
 var $379 = 0, $38 = 0, $380 = 0, $381 = 0, $382 = 0, $383 = 0, $384 = 0, $385 = 0, $386 = 0, $387 = 0, $388 = 0, $389 = 0, $39 = 0, $390 = 0, $391 = 0, $392 = 0, $393 = 0, $394 = 0, $395 = 0, $396 = 0;
 var $397 = 0, $398 = 0, $399 = 0, $4 = 0, $40 = 0, $400 = 0, $401 = 0, $402 = 0, $403 = 0, $404 = 0, $405 = 0, $406 = 0, $407 = 0, $408 = 0, $409 = 0, $41 = 0, $410 = 0, $411 = 0, $412 = 0, $413 = 0;
 var $414 = 0, $415 = 0, $416 = 0, $417 = 0, $418 = 0, $419 = 0, $42 = 0, $420 = 0, $421 = 0, $422 = 0, $423 = 0, $424 = 0, $425 = 0, $426 = 0, $427 = 0, $428 = 0, $429 = 0, $43 = 0, $430 = 0, $431 = 0;
 var $432 = 0, $433 = 0, $434 = 0, $435 = 0, $436 = 0, $437 = 0, $438 = 0, $439 = 0, $44 = 0, $440 = 0, $441 = 0, $442 = 0, $443 = 0, $444 = 0, $445 = 0, $446 = 0, $447 = 0, $448 = 0, $449 = 0, $45 = 0;
 var $450 = 0, $451 = 0, $452 = 0, $453 = 0, $454 = 0, $455 = 0, $456 = 0, $457 = 0, $458 = 0, $459 = 0, $46 = 0, $460 = 0, $461 = 0, $462 = 0, $463 = 0, $464 = 0, $465 = 0, $466 = 0, $467 = 0, $468 = 0;
 var $469 = 0, $47 = 0, $470 = 0, $471 = 0, $472 = 0, $473 = 0, $474 = 0, $475 = 0, $476 = 0, $477 = 0, $478 = 0, $479 = 0, $48 = 0, $480 = 0, $481 = 0, $482 = 0, $483 = 0, $484 = 0, $485 = 0, $486 = 0;
 var $487 = 0, $488 = 0, $489 = 0, $49 = 0, $490 = 0, $491 = 0, $492 = 0, $493 = 0, $494 = 0, $495 = 0, $496 = 0, $497 = 0, $498 = 0, $499 = 0, $5 = 0, $50 = 0, $500 = 0, $501 = 0, $502 = 0, $503 = 0;
 var $504 = 0, $505 = 0, $506 = 0, $507 = 0, $508 = 0, $509 = 0, $51 = 0, $510 = 0, $511 = 0, $512 = 0, $513 = 0, $514 = 0, $515 = 0, $516 = 0, $517 = 0, $518 = 0, $519 = 0, $52 = 0, $520 = 0, $521 = 0;
 var $522 = 0, $523 = 0, $524 = 0, $525 = 0, $526 = 0, $527 = 0, $528 = 0, $529 = 0, $53 = 0, $530 = 0, $531 = 0, $532 = 0, $533 = 0, $534 = 0, $535 = 0, $536 = 0, $537 = 0, $538 = 0, $539 = 0, $54 = 0;
 var $540 = 0, $541 = 0, $542 = 0, $543 = 0, $544 = 0, $545 = 0, $546 = 0, $547 = 0, $548 = 0, $549 = 0, $55 = 0, $550 = 0, $551 = 0, $552 = 0, $553 = 0, $554 = 0, $555 = 0, $556 = 0, $557 = 0, $558 = 0;
 var $559 = 0, $56 = 0, $560 = 0, $561 = 0, $562 = 0, $563 = 0, $564 = 0, $565 = 0, $566 = 0, $567 = 0, $568 = 0, $569 = 0, $57 = 0, $570 = 0, $571 = 0, $572 = 0, $573 = 0, $574 = 0, $575 = 0, $576 = 0;
 var $577 = 0, $578 = 0, $579 = 0, $58 = 0, $580 = 0, $581 = 0, $582 = 0, $583 = 0, $584 = 0, $585 = 0, $586 = 0, $587 = 0, $588 = 0, $589 = 0, $59 = 0, $590 = 0, $591 = 0, $592 = 0, $593 = 0, $594 = 0;
 var $595 = 0, $596 = 0, $597 = 0, $598 = 0, $599 = 0, $6 = 0, $60 = 0, $600 = 0, $601 = 0, $602 = 0, $603 = 0, $604 = 0, $605 = 0, $606 = 0, $607 = 0, $608 = 0, $609 = 0, $61 = 0, $610 = 0, $611 = 0;
 var $612 = 0, $613 = 0, $614 = 0, $615 = 0, $616 = 0, $617 = 0, $618 = 0, $619 = 0, $62 = 0, $620 = 0, $621 = 0, $622 = 0, $623 = 0, $624 = 0, $625 = 0, $626 = 0, $627 = 0, $628 = 0, $629 = 0, $63 = 0;
 var $630 = 0, $631 = 0, $632 = 0, $633 = 0, $634 = 0, $635 = 0, $636 = 0, $637 = 0, $638 = 0, $639 = 0, $64 = 0, $640 = 0, $641 = 0, $642 = 0, $643 = 0, $644 = 0, $645 = 0, $646 = 0, $647 = 0, $648 = 0;
 var $649 = 0, $65 = 0, $650 = 0, $651 = 0, $652 = 0, $653 = 0, $654 = 0, $655 = 0, $656 = 0, $657 = 0, $658 = 0, $659 = 0, $66 = 0, $660 = 0, $661 = 0, $662 = 0, $663 = 0, $664 = 0, $665 = 0, $666 = 0;
 var $667 = 0, $668 = 0, $669 = 0, $67 = 0, $670 = 0, $671 = 0, $672 = 0, $673 = 0, $674 = 0, $675 = 0, $676 = 0, $677 = 0, $678 = 0, $679 = 0, $68 = 0, $680 = 0, $681 = 0, $682 = 0, $683 = 0, $684 = 0;
 var $685 = 0, $686 = 0, $687 = 0, $688 = 0, $689 = 0, $69 = 0, $690 = 0, $691 = 0, $692 = 0, $693 = 0, $694 = 0, $695 = 0, $696 = 0, $697 = 0, $698 = 0, $699 = 0, $7 = 0, $70 = 0, $700 = 0, $701 = 0;
 var $702 = 0, $703 = 0, $704 = 0, $705 = 0, $706 = 0, $707 = 0, $708 = 0, $709 = 0, $71 = 0, $710 = 0, $711 = 0, $712 = 0, $713 = 0, $714 = 0, $715 = 0, $716 = 0, $717 = 0, $718 = 0, $719 = 0, $72 = 0;
 var $720 = 0, $721 = 0, $722 = 0, $723 = 0, $724 = 0, $725 = 0, $726 = 0, $727 = 0, $728 = 0, $729 = 0, $73 = 0, $730 = 0, $731 = 0, $732 = 0, $733 = 0, $734 = 0, $735 = 0, $736 = 0, $737 = 0, $738 = 0;
 var $739 = 0, $74 = 0, $740 = 0, $741 = 0, $742 = 0, $743 = 0, $744 = 0, $745 = 0, $746 = 0, $747 = 0, $748 = 0, $749 = 0, $75 = 0, $750 = 0, $751 = 0, $752 = 0, $753 = 0, $754 = 0, $755 = 0, $756 = 0;
 var $757 = 0, $758 = 0, $759 = 0, $76 = 0, $760 = 0, $761 = 0, $762 = 0, $763 = 0, $764 = 0, $765 = 0, $766 = 0, $767 = 0, $768 = 0, $769 = 0, $77 = 0, $770 = 0, $771 = 0, $772 = 0, $773 = 0, $774 = 0;
 var $775 = 0, $776 = 0, $777 = 0, $778 = 0, $779 = 0, $78 = 0, $780 = 0, $781 = 0, $782 = 0, $783 = 0, $784 = 0, $785 = 0, $786 = 0, $787 = 0, $788 = 0, $789 = 0, $79 = 0, $790 = 0, $791 = 0, $792 = 0;
 var $793 = 0, $794 = 0, $795 = 0, $796 = 0, $797 = 0, $798 = 0, $799 = 0, $8 = 0, $80 = 0, $800 = 0, $801 = 0, $802 = 0, $803 = 0, $804 = 0, $805 = 0, $806 = 0, $807 = 0, $808 = 0, $809 = 0, $81 = 0;
 var $810 = 0, $811 = 0, $812 = 0, $813 = 0, $814 = 0, $815 = 0, $816 = 0, $817 = 0, $818 = 0, $819 = 0, $82 = 0, $820 = 0, $821 = 0, $822 = 0, $823 = 0, $824 = 0, $825 = 0, $826 = 0, $827 = 0, $828 = 0;
 var $829 = 0, $83 = 0, $830 = 0, $831 = 0, $832 = 0, $833 = 0, $834 = 0, $835 = 0, $836 = 0, $837 = 0, $838 = 0, $839 = 0, $84 = 0, $840 = 0, $841 = 0, $842 = 0, $843 = 0, $844 = 0, $845 = 0, $846 = 0;
 var $847 = 0, $848 = 0, $849 = 0, $85 = 0, $850 = 0, $851 = 0, $852 = 0, $853 = 0, $854 = 0, $855 = 0, $856 = 0, $857 = 0, $858 = 0, $859 = 0, $86 = 0, $860 = 0, $861 = 0, $862 = 0, $863 = 0, $864 = 0;
 var $865 = 0, $866 = 0, $867 = 0, $868 = 0, $869 = 0, $87 = 0, $870 = 0, $871 = 0, $872 = 0, $873 = 0, $874 = 0, $875 = 0, $876 = 0, $877 = 0, $878 = 0, $879 = 0, $88 = 0, $880 = 0, $881 = 0, $882 = 0;
 var $883 = 0, $884 = 0, $885 = 0, $886 = 0, $887 = 0, $888 = 0, $889 = 0, $89 = 0, $890 = 0, $891 = 0, $892 = 0, $893 = 0, $894 = 0, $895 = 0, $896 = 0, $897 = 0, $898 = 0, $899 = 0, $9 = 0, $90 = 0;
 var $900 = 0, $901 = 0, $902 = 0, $903 = 0, $904 = 0, $905 = 0, $906 = 0, $907 = 0, $908 = 0, $909 = 0, $91 = 0, $92 = 0, $93 = 0, $94 = 0, $95 = 0, $96 = 0, $97 = 0, $98 = 0, $99 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 3088|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(3088|0);
 $$byval_copy965 = sp + 3040|0;
 $$byval_copy964 = sp + 3032|0;
 $$byval_copy963 = sp + 3024|0;
 $$byval_copy962 = sp + 3016|0;
 $$byval_copy961 = sp + 3008|0;
 $$byval_copy960 = sp + 3000|0;
 $$byval_copy959 = sp + 2992|0;
 $$byval_copy958 = sp + 2984|0;
 $$byval_copy957 = sp + 2976|0;
 $$byval_copy956 = sp + 2968|0;
 $$byval_copy955 = sp + 2960|0;
 $$byval_copy954 = sp + 2952|0;
 $$byval_copy953 = sp + 2944|0;
 $$byval_copy952 = sp + 2936|0;
 $$byval_copy951 = sp + 2928|0;
 $$byval_copy950 = sp + 2920|0;
 $$byval_copy949 = sp + 2912|0;
 $$byval_copy948 = sp + 2904|0;
 $$byval_copy947 = sp + 2896|0;
 $$byval_copy946 = sp + 2888|0;
 $$byval_copy945 = sp + 2880|0;
 $$byval_copy944 = sp + 2872|0;
 $$byval_copy943 = sp + 2864|0;
 $$byval_copy942 = sp + 2856|0;
 $$byval_copy941 = sp + 2848|0;
 $$byval_copy940 = sp + 2840|0;
 $$byval_copy939 = sp + 2832|0;
 $$byval_copy938 = sp + 2824|0;
 $$byval_copy937 = sp + 2816|0;
 $$byval_copy936 = sp + 2808|0;
 $$byval_copy935 = sp + 2800|0;
 $$byval_copy934 = sp + 2792|0;
 $$byval_copy933 = sp + 2784|0;
 $$byval_copy932 = sp + 2776|0;
 $$byval_copy931 = sp + 2768|0;
 $$byval_copy930 = sp + 2760|0;
 $$byval_copy929 = sp + 2752|0;
 $$byval_copy928 = sp + 2744|0;
 $$byval_copy927 = sp + 2736|0;
 $$byval_copy926 = sp + 2728|0;
 $$byval_copy925 = sp + 2720|0;
 $$byval_copy924 = sp + 2712|0;
 $$byval_copy923 = sp + 2704|0;
 $$byval_copy922 = sp + 2696|0;
 $$byval_copy921 = sp + 2688|0;
 $$byval_copy920 = sp + 2680|0;
 $$byval_copy919 = sp + 2672|0;
 $$byval_copy918 = sp + 2664|0;
 $$byval_copy917 = sp + 2656|0;
 $$byval_copy916 = sp + 2648|0;
 $$byval_copy = sp + 2640|0;
 $4 = sp + 2616|0;
 $6 = sp + 3081|0;
 $7 = sp + 400|0;
 $11 = sp + 2592|0;
 $13 = sp + 3080|0;
 $14 = sp + 392|0;
 $18 = sp + 2568|0;
 $20 = sp + 3079|0;
 $21 = sp + 384|0;
 $25 = sp + 2544|0;
 $27 = sp + 3078|0;
 $28 = sp + 376|0;
 $32 = sp + 2520|0;
 $34 = sp + 3077|0;
 $35 = sp + 368|0;
 $39 = sp + 2496|0;
 $41 = sp + 3076|0;
 $42 = sp + 360|0;
 $46 = sp + 2472|0;
 $48 = sp + 3075|0;
 $49 = sp + 352|0;
 $53 = sp + 2448|0;
 $55 = sp + 3074|0;
 $56 = sp + 344|0;
 $60 = sp + 2424|0;
 $62 = sp + 3073|0;
 $63 = sp + 336|0;
 $67 = sp + 2400|0;
 $69 = sp + 3072|0;
 $70 = sp + 328|0;
 $74 = sp + 2376|0;
 $76 = sp + 3071|0;
 $77 = sp + 320|0;
 $81 = sp + 2352|0;
 $83 = sp + 3070|0;
 $84 = sp + 312|0;
 $88 = sp + 2328|0;
 $90 = sp + 3069|0;
 $91 = sp + 304|0;
 $95 = sp + 2304|0;
 $97 = sp + 3068|0;
 $98 = sp + 296|0;
 $102 = sp + 2280|0;
 $104 = sp + 3067|0;
 $105 = sp + 288|0;
 $109 = sp + 2256|0;
 $111 = sp + 3066|0;
 $112 = sp + 280|0;
 $116 = sp + 2232|0;
 $118 = sp + 3065|0;
 $119 = sp + 272|0;
 $123 = sp + 2208|0;
 $125 = sp + 3064|0;
 $126 = sp + 264|0;
 $130 = sp + 2184|0;
 $132 = sp + 3063|0;
 $133 = sp + 256|0;
 $137 = sp + 2160|0;
 $139 = sp + 3062|0;
 $140 = sp + 248|0;
 $144 = sp + 2136|0;
 $146 = sp + 3061|0;
 $147 = sp + 240|0;
 $151 = sp + 2112|0;
 $153 = sp + 3060|0;
 $154 = sp + 232|0;
 $158 = sp + 2088|0;
 $160 = sp + 3059|0;
 $161 = sp + 224|0;
 $165 = sp + 2064|0;
 $167 = sp + 3058|0;
 $168 = sp + 216|0;
 $172 = sp + 2040|0;
 $174 = sp + 3057|0;
 $175 = sp + 208|0;
 $179 = sp + 2016|0;
 $181 = sp + 3056|0;
 $182 = sp + 200|0;
 $186 = sp + 1992|0;
 $188 = sp + 3055|0;
 $189 = sp + 192|0;
 $194 = sp + 1960|0;
 $195 = sp + 1952|0;
 $198 = sp + 1936|0;
 $199 = sp + 1928|0;
 $200 = sp + 184|0;
 $201 = sp + 176|0;
 $206 = sp + 1904|0;
 $207 = sp + 1896|0;
 $210 = sp + 1880|0;
 $211 = sp + 1872|0;
 $212 = sp + 168|0;
 $213 = sp + 160|0;
 $218 = sp + 1848|0;
 $219 = sp + 1840|0;
 $222 = sp + 1824|0;
 $223 = sp + 1816|0;
 $224 = sp + 152|0;
 $225 = sp + 144|0;
 $230 = sp + 1792|0;
 $231 = sp + 1784|0;
 $234 = sp + 1768|0;
 $235 = sp + 1760|0;
 $236 = sp + 136|0;
 $237 = sp + 128|0;
 $242 = sp + 1736|0;
 $243 = sp + 1728|0;
 $246 = sp + 1712|0;
 $247 = sp + 1704|0;
 $248 = sp + 120|0;
 $249 = sp + 112|0;
 $254 = sp + 1680|0;
 $255 = sp + 1672|0;
 $258 = sp + 1656|0;
 $259 = sp + 1648|0;
 $260 = sp + 104|0;
 $261 = sp + 96|0;
 $266 = sp + 1624|0;
 $267 = sp + 1616|0;
 $270 = sp + 1600|0;
 $271 = sp + 1592|0;
 $272 = sp + 88|0;
 $273 = sp + 80|0;
 $278 = sp + 1568|0;
 $279 = sp + 1560|0;
 $282 = sp + 1544|0;
 $283 = sp + 1536|0;
 $284 = sp + 72|0;
 $285 = sp + 64|0;
 $290 = sp + 1512|0;
 $291 = sp + 1504|0;
 $294 = sp + 1488|0;
 $295 = sp + 1480|0;
 $296 = sp + 56|0;
 $297 = sp + 48|0;
 $302 = sp + 1456|0;
 $303 = sp + 1448|0;
 $306 = sp + 1432|0;
 $307 = sp + 1424|0;
 $308 = sp + 40|0;
 $309 = sp + 32|0;
 $314 = sp + 1400|0;
 $315 = sp + 1392|0;
 $318 = sp + 1376|0;
 $319 = sp + 1368|0;
 $320 = sp + 24|0;
 $321 = sp + 16|0;
 $326 = sp + 1344|0;
 $327 = sp + 1336|0;
 $330 = sp + 1320|0;
 $331 = sp + 1312|0;
 $332 = sp + 8|0;
 $333 = sp;
 $337 = sp + 3054|0;
 $351 = sp + 3053|0;
 $352 = sp + 3052|0;
 $353 = sp + 3051|0;
 $354 = sp + 3050|0;
 $355 = sp + 3049|0;
 $356 = sp + 3048|0;
 $357 = sp + 1240|0;
 $358 = sp + 1232|0;
 $359 = sp + 1224|0;
 $360 = sp + 1216|0;
 $361 = sp + 1208|0;
 $362 = sp + 1200|0;
 $363 = sp + 1192|0;
 $364 = sp + 1184|0;
 $365 = sp + 1176|0;
 $366 = sp + 1168|0;
 $367 = sp + 1160|0;
 $368 = sp + 1152|0;
 $369 = sp + 1144|0;
 $370 = sp + 1136|0;
 $371 = sp + 1128|0;
 $372 = sp + 1120|0;
 $373 = sp + 1112|0;
 $374 = sp + 1104|0;
 $375 = sp + 1096|0;
 $376 = sp + 1088|0;
 $377 = sp + 1080|0;
 $378 = sp + 1072|0;
 $379 = sp + 1064|0;
 $380 = sp + 1056|0;
 $381 = sp + 1048|0;
 $382 = sp + 1040|0;
 $383 = sp + 1032|0;
 $384 = sp + 1024|0;
 $385 = sp + 1016|0;
 $386 = sp + 1008|0;
 $387 = sp + 1000|0;
 $388 = sp + 992|0;
 $389 = sp + 984|0;
 $390 = sp + 976|0;
 $391 = sp + 968|0;
 $392 = sp + 960|0;
 $393 = sp + 952|0;
 $394 = sp + 944|0;
 $395 = sp + 936|0;
 $396 = sp + 928|0;
 $397 = sp + 920|0;
 $398 = sp + 912|0;
 $399 = sp + 904|0;
 $400 = sp + 896|0;
 $401 = sp + 888|0;
 $402 = sp + 880|0;
 $403 = sp + 872|0;
 $404 = sp + 864|0;
 $405 = sp + 856|0;
 $406 = sp + 848|0;
 $407 = sp + 840|0;
 $408 = sp + 832|0;
 $409 = sp + 824|0;
 $410 = sp + 816|0;
 $411 = sp + 808|0;
 $412 = sp + 800|0;
 $413 = sp + 792|0;
 $414 = sp + 784|0;
 $415 = sp + 776|0;
 $416 = sp + 768|0;
 $417 = sp + 760|0;
 $418 = sp + 752|0;
 $419 = sp + 744|0;
 $420 = sp + 736|0;
 $421 = sp + 728|0;
 $422 = sp + 720|0;
 $423 = sp + 712|0;
 $424 = sp + 704|0;
 $425 = sp + 696|0;
 $426 = sp + 688|0;
 $427 = sp + 680|0;
 $428 = sp + 672|0;
 $429 = sp + 664|0;
 $430 = sp + 656|0;
 $431 = sp + 648|0;
 $432 = sp + 640|0;
 $433 = sp + 632|0;
 $434 = sp + 624|0;
 $435 = sp + 616|0;
 $436 = sp + 608|0;
 $437 = sp + 600|0;
 $438 = sp + 592|0;
 $439 = sp + 584|0;
 $440 = sp + 576|0;
 $441 = sp + 568|0;
 $442 = sp + 560|0;
 $443 = sp + 552|0;
 $444 = sp + 544|0;
 $445 = sp + 536|0;
 $446 = sp + 528|0;
 $447 = sp + 520|0;
 $448 = sp + 512|0;
 $449 = sp + 504|0;
 $450 = sp + 496|0;
 $451 = sp + 488|0;
 $452 = sp + 480|0;
 $453 = sp + 472|0;
 $454 = sp + 464|0;
 $455 = sp + 456|0;
 $456 = sp + 448|0;
 $457 = sp + 440|0;
 $458 = sp + 432|0;
 $459 = sp + 424|0;
 $460 = sp + 416|0;
 $461 = sp + 408|0;
 $350 = $0;
 __ZN10emscripten5enum_IN9FastNoise9NoiseTypeEEC2EPKc($351,8844);
 $462 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($351,8854,0)|0);
 $463 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($462,8860,1)|0);
 $464 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($463,8873,2)|0);
 $465 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($464,8880,3)|0);
 $466 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($465,8894,4)|0);
 $467 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($466,8902,5)|0);
 $468 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($467,8917,6)|0);
 $469 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($468,8926,7)|0);
 $470 = (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($469,8937,8)|0);
 (__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($470,8943,9)|0);
 __ZN10emscripten5enum_IN9FastNoise6InterpEEC2EPKc($352,8956);
 $471 = (__ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_($352,8963,0)|0);
 $472 = (__ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_($471,8970,1)|0);
 (__ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_($472,8978,2)|0);
 __ZN10emscripten5enum_IN9FastNoise11FractalTypeEEC2EPKc($353,8986);
 $473 = (__ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_($353,8998,0)|0);
 $474 = (__ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_($473,9002,1)|0);
 (__ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_($474,9009,2)|0);
 __ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEEC2EPKc($354,9020);
 $475 = (__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_($354,9045,0)|0);
 $476 = (__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_($475,9055,1)|0);
 (__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_($476,9065,2)|0);
 __ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEEC2EPKc($355,9073);
 $477 = (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($355,9092,0)|0);
 $478 = (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($477,9102,1)|0);
 $479 = (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($478,9114,2)|0);
 $480 = (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($479,9123,3)|0);
 $481 = (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($480,9133,4)|0);
 $482 = (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($481,9146,5)|0);
 $483 = (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($482,9159,6)|0);
 (__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($483,9172,7)|0);
 $344 = $356;
 $345 = 9185;
 __ZN10emscripten8internal11NoBaseClass6verifyI9FastNoiseEEvv();
 $346 = 29;
 $484 = (__ZN10emscripten8internal11NoBaseClass11getUpcasterI9FastNoiseEEPFvvEv()|0);
 $347 = $484;
 $485 = (__ZN10emscripten8internal11NoBaseClass13getDowncasterI9FastNoiseEEPFvvEv()|0);
 $348 = $485;
 $349 = 30;
 $486 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $487 = (__ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerI9FastNoiseEEE3getEv()|0);
 $488 = (__ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerIK9FastNoiseEEE3getEv()|0);
 $489 = (__ZN10emscripten8internal11NoBaseClass3getEv()|0);
 $490 = $346;
 $343 = $490;
 $491 = (__ZN10emscripten8internal19getGenericSignatureIJiiEEEPKcv()|0);
 $492 = $346;
 $493 = $347;
 $342 = $493;
 $494 = (__ZN10emscripten8internal19getGenericSignatureIJvEEEPKcv()|0);
 $495 = $347;
 $496 = $348;
 $341 = $496;
 $497 = (__ZN10emscripten8internal19getGenericSignatureIJvEEEPKcv()|0);
 $498 = $348;
 $499 = $345;
 $500 = $349;
 $340 = $500;
 $501 = (__ZN10emscripten8internal19getGenericSignatureIJviEEEPKcv()|0);
 $502 = $349;
 __embind_register_class(($486|0),($487|0),($488|0),($489|0),($491|0),($492|0),($494|0),($495|0),($497|0),($498|0),($499|0),($501|0),($502|0));
 $339 = $356;
 $503 = $339;
 $335 = $503;
 $336 = 31;
 $504 = $335;
 $338 = 32;
 $505 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $506 = (__ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getCountEv($337)|0);
 $507 = (__ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getTypesEv($337)|0);
 $508 = $338;
 $334 = $508;
 $509 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $510 = $338;
 $511 = $336;
 __embind_register_class_constructor(($505|0),($506|0),($507|0),($509|0),($510|0),($511|0));
 store4($357,(33));
 $$index1 = ((($357)) + 4|0);
 store4($$index1,0);
 store4($358,(34));
 $$index3 = ((($358)) + 4|0);
 store4($$index3,0);
 ; store8($332,load8($358,1),1);
 ; store8($333,load8($357,1),1);
 $$field = load4($333);
 $$index5 = ((($333)) + 4|0);
 $$field6 = load4($$index5);
 $$field9 = load4($332);
 $$index11 = ((($332)) + 4|0);
 $$field12 = load4($$index11);
 $324 = $504;
 $325 = 9195;
 store4($326,$$field);
 $$index15 = ((($326)) + 4|0);
 store4($$index15,$$field6);
 store4($327,$$field9);
 $$index17 = ((($327)) + 4|0);
 store4($$index17,$$field12);
 $512 = $324;
 $328 = 35;
 $329 = 36;
 $513 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $514 = $325;
 $515 = (__ZN10emscripten8internal6TypeIDIiE3getEv()|0);
 $516 = $328;
 $323 = $516;
 $517 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $518 = $328;
 $$field19 = load4($326);
 $$index21 = ((($326)) + 4|0);
 $$field22 = load4($$index21);
 store4($330,$$field19);
 $$index25 = ((($330)) + 4|0);
 store4($$index25,$$field22);
 ; store8($$byval_copy,load8($330,4),4);
 $519 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE10getContextES4_($$byval_copy)|0);
 $520 = (__ZN10emscripten8internal6TypeIDIiE3getEv()|0);
 $521 = $329;
 $322 = $521;
 $522 = (__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv()|0);
 $523 = $329;
 $$field27 = load4($327);
 $$index29 = ((($327)) + 4|0);
 $$field30 = load4($$index29);
 store4($331,$$field27);
 $$index33 = ((($331)) + 4|0);
 store4($$index33,$$field30);
 ; store8($$byval_copy916,load8($331,4),4);
 $524 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE10getContextES4_($$byval_copy916)|0);
 __embind_register_class_property(($513|0),($514|0),($515|0),($517|0),($518|0),($519|0),($520|0),($522|0),($523|0),($524|0));
 store4($359,(37));
 $$index35 = ((($359)) + 4|0);
 store4($$index35,0);
 store4($360,(38));
 $$index37 = ((($360)) + 4|0);
 store4($$index37,0);
 ; store8($320,load8($360,1),1);
 ; store8($321,load8($359,1),1);
 $$field39 = load4($321);
 $$index41 = ((($321)) + 4|0);
 $$field42 = load4($$index41);
 $$field45 = load4($320);
 $$index47 = ((($320)) + 4|0);
 $$field48 = load4($$index47);
 $312 = $512;
 $313 = 9200;
 store4($314,$$field39);
 $$index51 = ((($314)) + 4|0);
 store4($$index51,$$field42);
 store4($315,$$field45);
 $$index53 = ((($315)) + 4|0);
 store4($$index53,$$field48);
 $525 = $312;
 $316 = 39;
 $317 = 40;
 $526 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $527 = $313;
 $528 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $529 = $316;
 $311 = $529;
 $530 = (__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv()|0);
 $531 = $316;
 $$field55 = load4($314);
 $$index57 = ((($314)) + 4|0);
 $$field58 = load4($$index57);
 store4($318,$$field55);
 $$index61 = ((($318)) + 4|0);
 store4($$index61,$$field58);
 ; store8($$byval_copy917,load8($318,4),4);
 $532 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_($$byval_copy917)|0);
 $533 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $534 = $317;
 $310 = $534;
 $535 = (__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv()|0);
 $536 = $317;
 $$field63 = load4($315);
 $$index65 = ((($315)) + 4|0);
 $$field66 = load4($$index65);
 store4($319,$$field63);
 $$index69 = ((($319)) + 4|0);
 store4($$index69,$$field66);
 ; store8($$byval_copy918,load8($319,4),4);
 $537 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_($$byval_copy918)|0);
 __embind_register_class_property(($526|0),($527|0),($528|0),($530|0),($531|0),($532|0),($533|0),($535|0),($536|0),($537|0));
 store4($361,(41));
 $$index71 = ((($361)) + 4|0);
 store4($$index71,0);
 store4($362,(42));
 $$index73 = ((($362)) + 4|0);
 store4($$index73,0);
 ; store8($308,load8($362,1),1);
 ; store8($309,load8($361,1),1);
 $$field75 = load4($309);
 $$index77 = ((($309)) + 4|0);
 $$field78 = load4($$index77);
 $$field81 = load4($308);
 $$index83 = ((($308)) + 4|0);
 $$field84 = load4($$index83);
 $300 = $525;
 $301 = 9210;
 store4($302,$$field75);
 $$index87 = ((($302)) + 4|0);
 store4($$index87,$$field78);
 store4($303,$$field81);
 $$index89 = ((($303)) + 4|0);
 store4($$index89,$$field84);
 $538 = $300;
 $304 = 43;
 $305 = 44;
 $539 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $540 = $301;
 $541 = (__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv()|0);
 $542 = $304;
 $299 = $542;
 $543 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $544 = $304;
 $$field91 = load4($302);
 $$index93 = ((($302)) + 4|0);
 $$field94 = load4($$index93);
 store4($306,$$field91);
 $$index97 = ((($306)) + 4|0);
 store4($$index97,$$field94);
 ; store8($$byval_copy919,load8($306,4),4);
 $545 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE10getContextES5_($$byval_copy919)|0);
 $546 = (__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv()|0);
 $547 = $305;
 $298 = $547;
 $548 = (__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv()|0);
 $549 = $305;
 $$field99 = load4($303);
 $$index101 = ((($303)) + 4|0);
 $$field102 = load4($$index101);
 store4($307,$$field99);
 $$index105 = ((($307)) + 4|0);
 store4($$index105,$$field102);
 ; store8($$byval_copy920,load8($307,4),4);
 $550 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE10getContextES5_($$byval_copy920)|0);
 __embind_register_class_property(($539|0),($540|0),($541|0),($543|0),($544|0),($545|0),($546|0),($548|0),($549|0),($550|0));
 store4($363,(45));
 $$index107 = ((($363)) + 4|0);
 store4($$index107,0);
 store4($364,(46));
 $$index109 = ((($364)) + 4|0);
 store4($$index109,0);
 ; store8($296,load8($364,1),1);
 ; store8($297,load8($363,1),1);
 $$field111 = load4($297);
 $$index113 = ((($297)) + 4|0);
 $$field114 = load4($$index113);
 $$field117 = load4($296);
 $$index119 = ((($296)) + 4|0);
 $$field120 = load4($$index119);
 $288 = $538;
 $289 = 9217;
 store4($290,$$field111);
 $$index123 = ((($290)) + 4|0);
 store4($$index123,$$field114);
 store4($291,$$field117);
 $$index125 = ((($291)) + 4|0);
 store4($$index125,$$field120);
 $551 = $288;
 $292 = 47;
 $293 = 48;
 $552 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $553 = $289;
 $554 = (__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv()|0);
 $555 = $292;
 $287 = $555;
 $556 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $557 = $292;
 $$field127 = load4($290);
 $$index129 = ((($290)) + 4|0);
 $$field130 = load4($$index129);
 store4($294,$$field127);
 $$index133 = ((($294)) + 4|0);
 store4($$index133,$$field130);
 ; store8($$byval_copy921,load8($294,4),4);
 $558 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE10getContextES5_($$byval_copy921)|0);
 $559 = (__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv()|0);
 $560 = $293;
 $286 = $560;
 $561 = (__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv()|0);
 $562 = $293;
 $$field135 = load4($291);
 $$index137 = ((($291)) + 4|0);
 $$field138 = load4($$index137);
 store4($295,$$field135);
 $$index141 = ((($295)) + 4|0);
 store4($$index141,$$field138);
 ; store8($$byval_copy922,load8($295,4),4);
 $563 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE10getContextES5_($$byval_copy922)|0);
 __embind_register_class_property(($552|0),($553|0),($554|0),($556|0),($557|0),($558|0),($559|0),($561|0),($562|0),($563|0));
 store4($365,(41));
 $$index143 = ((($365)) + 4|0);
 store4($$index143,0);
 store4($366,(42));
 $$index145 = ((($366)) + 4|0);
 store4($$index145,0);
 ; store8($284,load8($366,1),1);
 ; store8($285,load8($365,1),1);
 $$field147 = load4($285);
 $$index149 = ((($285)) + 4|0);
 $$field150 = load4($$index149);
 $$field153 = load4($284);
 $$index155 = ((($284)) + 4|0);
 $$field156 = load4($$index155);
 $276 = $551;
 $277 = 9210;
 store4($278,$$field147);
 $$index159 = ((($278)) + 4|0);
 store4($$index159,$$field150);
 store4($279,$$field153);
 $$index161 = ((($279)) + 4|0);
 store4($$index161,$$field156);
 $564 = $276;
 $280 = 43;
 $281 = 44;
 $565 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $566 = $277;
 $567 = (__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv()|0);
 $568 = $280;
 $275 = $568;
 $569 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $570 = $280;
 $$field163 = load4($278);
 $$index165 = ((($278)) + 4|0);
 $$field166 = load4($$index165);
 store4($282,$$field163);
 $$index169 = ((($282)) + 4|0);
 store4($$index169,$$field166);
 ; store8($$byval_copy923,load8($282,4),4);
 $571 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE10getContextES5_($$byval_copy923)|0);
 $572 = (__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv()|0);
 $573 = $281;
 $274 = $573;
 $574 = (__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv()|0);
 $575 = $281;
 $$field171 = load4($279);
 $$index173 = ((($279)) + 4|0);
 $$field174 = load4($$index173);
 store4($283,$$field171);
 $$index177 = ((($283)) + 4|0);
 store4($$index177,$$field174);
 ; store8($$byval_copy924,load8($283,4),4);
 $576 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE10getContextES5_($$byval_copy924)|0);
 __embind_register_class_property(($565|0),($566|0),($567|0),($569|0),($570|0),($571|0),($572|0),($574|0),($575|0),($576|0));
 store4($367,(49));
 $$index179 = ((($367)) + 4|0);
 store4($$index179,0);
 store4($368,(50));
 $$index181 = ((($368)) + 4|0);
 store4($$index181,0);
 ; store8($272,load8($368,1),1);
 ; store8($273,load8($367,1),1);
 $$field183 = load4($273);
 $$index185 = ((($273)) + 4|0);
 $$field186 = load4($$index185);
 $$field189 = load4($272);
 $$index191 = ((($272)) + 4|0);
 $$field192 = load4($$index191);
 $264 = $564;
 $265 = 9227;
 store4($266,$$field183);
 $$index195 = ((($266)) + 4|0);
 store4($$index195,$$field186);
 store4($267,$$field189);
 $$index197 = ((($267)) + 4|0);
 store4($$index197,$$field192);
 $577 = $264;
 $268 = 35;
 $269 = 36;
 $578 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $579 = $265;
 $580 = (__ZN10emscripten8internal6TypeIDIiE3getEv()|0);
 $581 = $268;
 $263 = $581;
 $582 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $583 = $268;
 $$field199 = load4($266);
 $$index201 = ((($266)) + 4|0);
 $$field202 = load4($$index201);
 store4($270,$$field199);
 $$index205 = ((($270)) + 4|0);
 store4($$index205,$$field202);
 ; store8($$byval_copy925,load8($270,4),4);
 $584 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE10getContextES4_($$byval_copy925)|0);
 $585 = (__ZN10emscripten8internal6TypeIDIiE3getEv()|0);
 $586 = $269;
 $262 = $586;
 $587 = (__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv()|0);
 $588 = $269;
 $$field207 = load4($267);
 $$index209 = ((($267)) + 4|0);
 $$field210 = load4($$index209);
 store4($271,$$field207);
 $$index213 = ((($271)) + 4|0);
 store4($$index213,$$field210);
 ; store8($$byval_copy926,load8($271,4),4);
 $589 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE10getContextES4_($$byval_copy926)|0);
 __embind_register_class_property(($578|0),($579|0),($580|0),($582|0),($583|0),($584|0),($585|0),($587|0),($588|0),($589|0));
 store4($369,(51));
 $$index215 = ((($369)) + 4|0);
 store4($$index215,0);
 store4($370,(52));
 $$index217 = ((($370)) + 4|0);
 store4($$index217,0);
 ; store8($260,load8($370,1),1);
 ; store8($261,load8($369,1),1);
 $$field219 = load4($261);
 $$index221 = ((($261)) + 4|0);
 $$field222 = load4($$index221);
 $$field225 = load4($260);
 $$index227 = ((($260)) + 4|0);
 $$field228 = load4($$index227);
 $252 = $577;
 $253 = 9242;
 store4($254,$$field219);
 $$index231 = ((($254)) + 4|0);
 store4($$index231,$$field222);
 store4($255,$$field225);
 $$index233 = ((($255)) + 4|0);
 store4($$index233,$$field228);
 $590 = $252;
 $256 = 39;
 $257 = 40;
 $591 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $592 = $253;
 $593 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $594 = $256;
 $251 = $594;
 $595 = (__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv()|0);
 $596 = $256;
 $$field235 = load4($254);
 $$index237 = ((($254)) + 4|0);
 $$field238 = load4($$index237);
 store4($258,$$field235);
 $$index241 = ((($258)) + 4|0);
 store4($$index241,$$field238);
 ; store8($$byval_copy927,load8($258,4),4);
 $597 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_($$byval_copy927)|0);
 $598 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $599 = $257;
 $250 = $599;
 $600 = (__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv()|0);
 $601 = $257;
 $$field243 = load4($255);
 $$index245 = ((($255)) + 4|0);
 $$field246 = load4($$index245);
 store4($259,$$field243);
 $$index249 = ((($259)) + 4|0);
 store4($$index249,$$field246);
 ; store8($$byval_copy928,load8($259,4),4);
 $602 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_($$byval_copy928)|0);
 __embind_register_class_property(($591|0),($592|0),($593|0),($595|0),($596|0),($597|0),($598|0),($600|0),($601|0),($602|0));
 store4($371,(53));
 $$index251 = ((($371)) + 4|0);
 store4($$index251,0);
 store4($372,(54));
 $$index253 = ((($372)) + 4|0);
 store4($$index253,0);
 ; store8($248,load8($372,1),1);
 ; store8($249,load8($371,1),1);
 $$field255 = load4($249);
 $$index257 = ((($249)) + 4|0);
 $$field258 = load4($$index257);
 $$field261 = load4($248);
 $$index263 = ((($248)) + 4|0);
 $$field264 = load4($$index263);
 $240 = $590;
 $241 = 9260;
 store4($242,$$field255);
 $$index267 = ((($242)) + 4|0);
 store4($$index267,$$field258);
 store4($243,$$field261);
 $$index269 = ((($243)) + 4|0);
 store4($$index269,$$field264);
 $603 = $240;
 $244 = 39;
 $245 = 40;
 $604 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $605 = $241;
 $606 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $607 = $244;
 $239 = $607;
 $608 = (__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv()|0);
 $609 = $244;
 $$field271 = load4($242);
 $$index273 = ((($242)) + 4|0);
 $$field274 = load4($$index273);
 store4($246,$$field271);
 $$index277 = ((($246)) + 4|0);
 store4($$index277,$$field274);
 ; store8($$byval_copy929,load8($246,4),4);
 $610 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_($$byval_copy929)|0);
 $611 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $612 = $245;
 $238 = $612;
 $613 = (__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv()|0);
 $614 = $245;
 $$field279 = load4($243);
 $$index281 = ((($243)) + 4|0);
 $$field282 = load4($$index281);
 store4($247,$$field279);
 $$index285 = ((($247)) + 4|0);
 store4($$index285,$$field282);
 ; store8($$byval_copy930,load8($247,4),4);
 $615 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_($$byval_copy930)|0);
 __embind_register_class_property(($604|0),($605|0),($606|0),($608|0),($609|0),($610|0),($611|0),($613|0),($614|0),($615|0));
 store4($373,(55));
 $$index287 = ((($373)) + 4|0);
 store4($$index287,0);
 store4($374,(56));
 $$index289 = ((($374)) + 4|0);
 store4($$index289,0);
 ; store8($236,load8($374,1),1);
 ; store8($237,load8($373,1),1);
 $$field291 = load4($237);
 $$index293 = ((($237)) + 4|0);
 $$field294 = load4($$index293);
 $$field297 = load4($236);
 $$index299 = ((($236)) + 4|0);
 $$field300 = load4($$index299);
 $228 = $603;
 $229 = 9272;
 store4($230,$$field291);
 $$index303 = ((($230)) + 4|0);
 store4($$index303,$$field294);
 store4($231,$$field297);
 $$index305 = ((($231)) + 4|0);
 store4($$index305,$$field300);
 $616 = $228;
 $232 = 57;
 $233 = 58;
 $617 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $618 = $229;
 $619 = (__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv()|0);
 $620 = $232;
 $227 = $620;
 $621 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $622 = $232;
 $$field307 = load4($230);
 $$index309 = ((($230)) + 4|0);
 $$field310 = load4($$index309);
 store4($234,$$field307);
 $$index313 = ((($234)) + 4|0);
 store4($$index313,$$field310);
 ; store8($$byval_copy931,load8($234,4),4);
 $623 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE10getContextES5_($$byval_copy931)|0);
 $624 = (__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv()|0);
 $625 = $233;
 $226 = $625;
 $626 = (__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv()|0);
 $627 = $233;
 $$field315 = load4($231);
 $$index317 = ((($231)) + 4|0);
 $$field318 = load4($$index317);
 store4($235,$$field315);
 $$index321 = ((($235)) + 4|0);
 store4($$index321,$$field318);
 ; store8($$byval_copy932,load8($235,4),4);
 $628 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE10getContextES5_($$byval_copy932)|0);
 __embind_register_class_property(($617|0),($618|0),($619|0),($621|0),($622|0),($623|0),($624|0),($626|0),($627|0),($628|0));
 store4($375,(59));
 $$index323 = ((($375)) + 4|0);
 store4($$index323,0);
 store4($376,(60));
 $$index325 = ((($376)) + 4|0);
 store4($$index325,0);
 ; store8($224,load8($376,1),1);
 ; store8($225,load8($375,1),1);
 $$field327 = load4($225);
 $$index329 = ((($225)) + 4|0);
 $$field330 = load4($$index329);
 $$field333 = load4($224);
 $$index335 = ((($224)) + 4|0);
 $$field336 = load4($$index335);
 $216 = $616;
 $217 = 9284;
 store4($218,$$field327);
 $$index339 = ((($218)) + 4|0);
 store4($$index339,$$field330);
 store4($219,$$field333);
 $$index341 = ((($219)) + 4|0);
 store4($$index341,$$field336);
 $629 = $216;
 $220 = 61;
 $221 = 62;
 $630 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $631 = $217;
 $632 = (__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv()|0);
 $633 = $220;
 $215 = $633;
 $634 = (__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv()|0);
 $635 = $220;
 $$field343 = load4($218);
 $$index345 = ((($218)) + 4|0);
 $$field346 = load4($$index345);
 store4($222,$$field343);
 $$index349 = ((($222)) + 4|0);
 store4($$index349,$$field346);
 ; store8($$byval_copy933,load8($222,4),4);
 $636 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE10getContextES5_($$byval_copy933)|0);
 $637 = (__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv()|0);
 $638 = $221;
 $214 = $638;
 $639 = (__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv()|0);
 $640 = $221;
 $$field351 = load4($219);
 $$index353 = ((($219)) + 4|0);
 $$field354 = load4($$index353);
 store4($223,$$field351);
 $$index357 = ((($223)) + 4|0);
 store4($$index357,$$field354);
 ; store8($$byval_copy934,load8($223,4),4);
 $641 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE10getContextES5_($$byval_copy934)|0);
 __embind_register_class_property(($630|0),($631|0),($632|0),($634|0),($635|0),($636|0),($637|0),($639|0),($640|0),($641|0));
 store4($377,(63));
 $$index359 = ((($377)) + 4|0);
 store4($$index359,0);
 store4($378,(64));
 $$index361 = ((($378)) + 4|0);
 store4($$index361,0);
 ; store8($212,load8($378,1),1);
 ; store8($213,load8($377,1),1);
 $$field363 = load4($213);
 $$index365 = ((($213)) + 4|0);
 $$field366 = load4($$index365);
 $$field369 = load4($212);
 $$index371 = ((($212)) + 4|0);
 $$field372 = load4($$index371);
 $204 = $629;
 $205 = 9309;
 store4($206,$$field363);
 $$index375 = ((($206)) + 4|0);
 store4($$index375,$$field366);
 store4($207,$$field369);
 $$index377 = ((($207)) + 4|0);
 store4($$index377,$$field372);
 $642 = $204;
 $208 = 39;
 $209 = 40;
 $643 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $644 = $205;
 $645 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $646 = $208;
 $203 = $646;
 $647 = (__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv()|0);
 $648 = $208;
 $$field379 = load4($206);
 $$index381 = ((($206)) + 4|0);
 $$field382 = load4($$index381);
 store4($210,$$field379);
 $$index385 = ((($210)) + 4|0);
 store4($$index385,$$field382);
 ; store8($$byval_copy935,load8($210,4),4);
 $649 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_($$byval_copy935)|0);
 $650 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $651 = $209;
 $202 = $651;
 $652 = (__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv()|0);
 $653 = $209;
 $$field387 = load4($207);
 $$index389 = ((($207)) + 4|0);
 $$field390 = load4($$index389);
 store4($211,$$field387);
 $$index393 = ((($211)) + 4|0);
 store4($$index393,$$field390);
 ; store8($$byval_copy936,load8($211,4),4);
 $654 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_($$byval_copy936)|0);
 __embind_register_class_property(($643|0),($644|0),($645|0),($647|0),($648|0),($649|0),($650|0),($652|0),($653|0),($654|0));
 store4($379,(65));
 $$index395 = ((($379)) + 4|0);
 store4($$index395,0);
 store4($380,(66));
 $$index397 = ((($380)) + 4|0);
 store4($$index397,0);
 ; store8($200,load8($380,1),1);
 ; store8($201,load8($379,1),1);
 $$field399 = load4($201);
 $$index401 = ((($201)) + 4|0);
 $$field402 = load4($$index401);
 $$field405 = load4($200);
 $$index407 = ((($200)) + 4|0);
 $$field408 = load4($$index407);
 $192 = $642;
 $193 = 9324;
 store4($194,$$field399);
 $$index411 = ((($194)) + 4|0);
 store4($$index411,$$field402);
 store4($195,$$field405);
 $$index413 = ((($195)) + 4|0);
 store4($$index413,$$field408);
 $655 = $192;
 $196 = 39;
 $197 = 40;
 $656 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $657 = $193;
 $658 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $659 = $196;
 $191 = $659;
 $660 = (__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv()|0);
 $661 = $196;
 $$field415 = load4($194);
 $$index417 = ((($194)) + 4|0);
 $$field418 = load4($$index417);
 store4($198,$$field415);
 $$index421 = ((($198)) + 4|0);
 store4($$index421,$$field418);
 ; store8($$byval_copy937,load8($198,4),4);
 $662 = (__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_($$byval_copy937)|0);
 $663 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $664 = $197;
 $190 = $664;
 $665 = (__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv()|0);
 $666 = $197;
 $$field423 = load4($195);
 $$index425 = ((($195)) + 4|0);
 $$field426 = load4($$index425);
 store4($199,$$field423);
 $$index429 = ((($199)) + 4|0);
 store4($$index429,$$field426);
 ; store8($$byval_copy938,load8($199,4),4);
 $667 = (__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_($$byval_copy938)|0);
 __embind_register_class_property(($656|0),($657|0),($658|0),($660|0),($661|0),($662|0),($663|0),($665|0),($666|0),($667|0));
 store4($382,(67));
 $$index431 = ((($382)) + 4|0);
 store4($$index431,0);
 ; store8($$byval_copy939,load8($382,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($381,$$byval_copy939);
 $$field433 = load4($381);
 $$index435 = ((($381)) + 4|0);
 $$field436 = load4($$index435);
 store4($383,$$field433);
 $$index439 = ((($383)) + 4|0);
 store4($$index439,$$field436);
 ; store8($189,load8($383,1),1);
 $$field441 = load4($189);
 $$index443 = ((($189)) + 4|0);
 $$field444 = load4($$index443);
 $184 = $655;
 $185 = 9343;
 store4($186,$$field441);
 $$index447 = ((($186)) + 4|0);
 store4($$index447,$$field444);
 $668 = $184;
 $187 = 68;
 $669 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $670 = $185;
 $671 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($188)|0);
 $672 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($188)|0);
 $673 = $187;
 $183 = $673;
 $674 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $675 = $187;
 $676 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($186)|0);
 __embind_register_class_function(($669|0),($670|0),($671|0),($672|0),($674|0),($675|0),($676|0),0);
 store4($385,(69));
 $$index449 = ((($385)) + 4|0);
 store4($$index449,0);
 ; store8($$byval_copy940,load8($385,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($384,$$byval_copy940);
 $$field451 = load4($384);
 $$index453 = ((($384)) + 4|0);
 $$field454 = load4($$index453);
 store4($386,$$field451);
 $$index457 = ((($386)) + 4|0);
 store4($$index457,$$field454);
 ; store8($182,load8($386,1),1);
 $$field459 = load4($182);
 $$index461 = ((($182)) + 4|0);
 $$field462 = load4($$index461);
 $177 = $668;
 $178 = 9351;
 store4($179,$$field459);
 $$index465 = ((($179)) + 4|0);
 store4($$index465,$$field462);
 $677 = $177;
 $180 = 68;
 $678 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $679 = $178;
 $680 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($181)|0);
 $681 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($181)|0);
 $682 = $180;
 $176 = $682;
 $683 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $684 = $180;
 $685 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($179)|0);
 __embind_register_class_function(($678|0),($679|0),($680|0),($681|0),($683|0),($684|0),($685|0),0);
 store4($388,(70));
 $$index467 = ((($388)) + 4|0);
 store4($$index467,0);
 ; store8($$byval_copy941,load8($388,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($387,$$byval_copy941);
 $$field469 = load4($387);
 $$index471 = ((($387)) + 4|0);
 $$field472 = load4($$index471);
 store4($389,$$field469);
 $$index475 = ((($389)) + 4|0);
 store4($$index475,$$field472);
 ; store8($175,load8($389,1),1);
 $$field477 = load4($175);
 $$index479 = ((($175)) + 4|0);
 $$field480 = load4($$index479);
 $170 = $677;
 $171 = 9366;
 store4($172,$$field477);
 $$index483 = ((($172)) + 4|0);
 store4($$index483,$$field480);
 $686 = $170;
 $173 = 68;
 $687 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $688 = $171;
 $689 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($174)|0);
 $690 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($174)|0);
 $691 = $173;
 $169 = $691;
 $692 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $693 = $173;
 $694 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($172)|0);
 __embind_register_class_function(($687|0),($688|0),($689|0),($690|0),($692|0),($693|0),($694|0),0);
 store4($391,(71));
 $$index485 = ((($391)) + 4|0);
 store4($$index485,0);
 ; store8($$byval_copy942,load8($391,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($390,$$byval_copy942);
 $$field487 = load4($390);
 $$index489 = ((($390)) + 4|0);
 $$field490 = load4($$index489);
 store4($392,$$field487);
 $$index493 = ((($392)) + 4|0);
 store4($$index493,$$field490);
 ; store8($168,load8($392,1),1);
 $$field495 = load4($168);
 $$index497 = ((($168)) + 4|0);
 $$field498 = load4($$index497);
 $163 = $686;
 $164 = 9375;
 store4($165,$$field495);
 $$index501 = ((($165)) + 4|0);
 store4($$index501,$$field498);
 $695 = $163;
 $166 = 68;
 $696 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $697 = $164;
 $698 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($167)|0);
 $699 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($167)|0);
 $700 = $166;
 $162 = $700;
 $701 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $702 = $166;
 $703 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($165)|0);
 __embind_register_class_function(($696|0),($697|0),($698|0),($699|0),($701|0),($702|0),($703|0),0);
 store4($394,(72));
 $$index503 = ((($394)) + 4|0);
 store4($$index503,0);
 ; store8($$byval_copy943,load8($394,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($393,$$byval_copy943);
 $$field505 = load4($393);
 $$index507 = ((($393)) + 4|0);
 $$field508 = load4($$index507);
 store4($395,$$field505);
 $$index511 = ((($395)) + 4|0);
 store4($$index511,$$field508);
 ; store8($161,load8($395,1),1);
 $$field513 = load4($161);
 $$index515 = ((($161)) + 4|0);
 $$field516 = load4($$index515);
 $156 = $695;
 $157 = 9391;
 store4($158,$$field513);
 $$index519 = ((($158)) + 4|0);
 store4($$index519,$$field516);
 $704 = $156;
 $159 = 68;
 $705 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $706 = $157;
 $707 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($160)|0);
 $708 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($160)|0);
 $709 = $159;
 $155 = $709;
 $710 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $711 = $159;
 $712 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($158)|0);
 __embind_register_class_function(($705|0),($706|0),($707|0),($708|0),($710|0),($711|0),($712|0),0);
 store4($397,(73));
 $$index521 = ((($397)) + 4|0);
 store4($$index521,0);
 ; store8($$byval_copy944,load8($397,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($396,$$byval_copy944);
 $$field523 = load4($396);
 $$index525 = ((($396)) + 4|0);
 $$field526 = load4($$index525);
 store4($398,$$field523);
 $$index529 = ((($398)) + 4|0);
 store4($$index529,$$field526);
 ; store8($154,load8($398,1),1);
 $$field531 = load4($154);
 $$index533 = ((($154)) + 4|0);
 $$field534 = load4($$index533);
 $149 = $704;
 $150 = 9401;
 store4($151,$$field531);
 $$index537 = ((($151)) + 4|0);
 store4($$index537,$$field534);
 $713 = $149;
 $152 = 68;
 $714 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $715 = $150;
 $716 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($153)|0);
 $717 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($153)|0);
 $718 = $152;
 $148 = $718;
 $719 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $720 = $152;
 $721 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($151)|0);
 __embind_register_class_function(($714|0),($715|0),($716|0),($717|0),($719|0),($720|0),($721|0),0);
 store4($400,(74));
 $$index539 = ((($400)) + 4|0);
 store4($$index539,0);
 ; store8($$byval_copy945,load8($400,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($399,$$byval_copy945);
 $$field541 = load4($399);
 $$index543 = ((($399)) + 4|0);
 $$field544 = load4($$index543);
 store4($401,$$field541);
 $$index547 = ((($401)) + 4|0);
 store4($$index547,$$field544);
 ; store8($147,load8($401,1),1);
 $$field549 = load4($147);
 $$index551 = ((($147)) + 4|0);
 $$field552 = load4($$index551);
 $142 = $713;
 $143 = 9418;
 store4($144,$$field549);
 $$index555 = ((($144)) + 4|0);
 store4($$index555,$$field552);
 $722 = $142;
 $145 = 68;
 $723 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $724 = $143;
 $725 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($146)|0);
 $726 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($146)|0);
 $727 = $145;
 $141 = $727;
 $728 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $729 = $145;
 $730 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($144)|0);
 __embind_register_class_function(($723|0),($724|0),($725|0),($726|0),($728|0),($729|0),($730|0),0);
 store4($403,(75));
 $$index557 = ((($403)) + 4|0);
 store4($$index557,0);
 ; store8($$byval_copy946,load8($403,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($402,$$byval_copy946);
 $$field559 = load4($402);
 $$index561 = ((($402)) + 4|0);
 $$field562 = load4($$index561);
 store4($404,$$field559);
 $$index565 = ((($404)) + 4|0);
 store4($$index565,$$field562);
 ; store8($140,load8($404,1),1);
 $$field567 = load4($140);
 $$index569 = ((($140)) + 4|0);
 $$field570 = load4($$index569);
 $135 = $722;
 $136 = 9429;
 store4($137,$$field567);
 $$index573 = ((($137)) + 4|0);
 store4($$index573,$$field570);
 $731 = $135;
 $138 = 68;
 $732 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $733 = $136;
 $734 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($139)|0);
 $735 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($139)|0);
 $736 = $138;
 $134 = $736;
 $737 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $738 = $138;
 $739 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($137)|0);
 __embind_register_class_function(($732|0),($733|0),($734|0),($735|0),($737|0),($738|0),($739|0),0);
 store4($406,(76));
 $$index575 = ((($406)) + 4|0);
 store4($$index575,0);
 ; store8($$byval_copy947,load8($406,4),4);
 __ZN10emscripten15select_overloadIKFfiiE9FastNoiseEEDtfp_EMT0_T_($405,$$byval_copy947);
 $$field577 = load4($405);
 $$index579 = ((($405)) + 4|0);
 $$field580 = load4($$index579);
 store4($407,$$field577);
 $$index583 = ((($407)) + 4|0);
 store4($$index583,$$field580);
 ; store8($133,load8($407,1),1);
 $$field585 = load4($133);
 $$index587 = ((($133)) + 4|0);
 $$field588 = load4($$index587);
 $128 = $731;
 $129 = 9442;
 store4($130,$$field585);
 $$index591 = ((($130)) + 4|0);
 store4($$index591,$$field588);
 $740 = $128;
 $131 = 77;
 $741 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $742 = $129;
 $743 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getCountEv($132)|0);
 $744 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getTypesEv($132)|0);
 $745 = $131;
 $127 = $745;
 $746 = (__ZN10emscripten8internal19getGenericSignatureIJfiiiiEEEPKcv()|0);
 $747 = $131;
 $748 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiEEEPT_RKS5_($130)|0);
 __embind_register_class_function(($741|0),($742|0),($743|0),($744|0),($746|0),($747|0),($748|0),0);
 store4($409,(78));
 $$index593 = ((($409)) + 4|0);
 store4($$index593,0);
 ; store8($$byval_copy948,load8($409,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($408,$$byval_copy948);
 $$field595 = load4($408);
 $$index597 = ((($408)) + 4|0);
 $$field598 = load4($$index597);
 store4($410,$$field595);
 $$index601 = ((($410)) + 4|0);
 store4($$index601,$$field598);
 ; store8($126,load8($410,1),1);
 $$field603 = load4($126);
 $$index605 = ((($126)) + 4|0);
 $$field606 = load4($$index605);
 $121 = $740;
 $122 = 9458;
 store4($123,$$field603);
 $$index609 = ((($123)) + 4|0);
 store4($$index609,$$field606);
 $749 = $121;
 $124 = 68;
 $750 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $751 = $122;
 $752 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($125)|0);
 $753 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($125)|0);
 $754 = $124;
 $120 = $754;
 $755 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $756 = $124;
 $757 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($123)|0);
 __embind_register_class_function(($750|0),($751|0),($752|0),($753|0),($755|0),($756|0),($757|0),0);
 store4($412,(79));
 $$index611 = ((($412)) + 4|0);
 store4($$index611,0);
 ; store8($$byval_copy949,load8($412,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($411,$$byval_copy949);
 $$field613 = load4($411);
 $$index615 = ((($411)) + 4|0);
 $$field616 = load4($$index615);
 store4($413,$$field613);
 $$index619 = ((($413)) + 4|0);
 store4($$index619,$$field616);
 ; store8($119,load8($413,1),1);
 $$field621 = load4($119);
 $$index623 = ((($119)) + 4|0);
 $$field624 = load4($$index623);
 $114 = $749;
 $115 = 9466;
 store4($116,$$field621);
 $$index627 = ((($116)) + 4|0);
 store4($$index627,$$field624);
 $758 = $114;
 $117 = 68;
 $759 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $760 = $115;
 $761 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($118)|0);
 $762 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($118)|0);
 $763 = $117;
 $113 = $763;
 $764 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $765 = $117;
 $766 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($116)|0);
 __embind_register_class_function(($759|0),($760|0),($761|0),($762|0),($764|0),($765|0),($766|0),0);
 store4($415,(80));
 $$index629 = ((($415)) + 4|0);
 store4($$index629,0);
 ; store8($$byval_copy950,load8($415,4),4);
 __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($414,$$byval_copy950);
 $$field631 = load4($414);
 $$index633 = ((($414)) + 4|0);
 $$field634 = load4($$index633);
 store4($416,$$field631);
 $$index637 = ((($416)) + 4|0);
 store4($$index637,$$field634);
 ; store8($112,load8($416,1),1);
 $$field639 = load4($112);
 $$index641 = ((($112)) + 4|0);
 $$field642 = load4($$index641);
 $107 = $758;
 $108 = 9481;
 store4($109,$$field639);
 $$index645 = ((($109)) + 4|0);
 store4($$index645,$$field642);
 $767 = $107;
 $110 = 68;
 $768 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $769 = $108;
 $770 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($111)|0);
 $771 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($111)|0);
 $772 = $110;
 $106 = $772;
 $773 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv()|0);
 $774 = $110;
 $775 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($109)|0);
 __embind_register_class_function(($768|0),($769|0),($770|0),($771|0),($773|0),($774|0),($775|0),0);
 store4($418,(81));
 $$index647 = ((($418)) + 4|0);
 store4($$index647,0);
 ; store8($$byval_copy951,load8($418,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($417,$$byval_copy951);
 $$field649 = load4($417);
 $$index651 = ((($417)) + 4|0);
 $$field652 = load4($$index651);
 store4($419,$$field649);
 $$index655 = ((($419)) + 4|0);
 store4($$index655,$$field652);
 ; store8($105,load8($419,1),1);
 $$field657 = load4($105);
 $$index659 = ((($105)) + 4|0);
 $$field660 = load4($$index659);
 $100 = $767;
 $101 = 9492;
 store4($102,$$field657);
 $$index663 = ((($102)) + 4|0);
 store4($$index663,$$field660);
 $776 = $100;
 $103 = 82;
 $777 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $778 = $101;
 $779 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($104)|0);
 $780 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($104)|0);
 $781 = $103;
 $99 = $781;
 $782 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $783 = $103;
 $784 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($102)|0);
 __embind_register_class_function(($777|0),($778|0),($779|0),($780|0),($782|0),($783|0),($784|0),0);
 store4($421,(83));
 $$index665 = ((($421)) + 4|0);
 store4($$index665,0);
 ; store8($$byval_copy952,load8($421,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($420,$$byval_copy952);
 $$field667 = load4($420);
 $$index669 = ((($420)) + 4|0);
 $$field670 = load4($$index669);
 store4($422,$$field667);
 $$index673 = ((($422)) + 4|0);
 store4($$index673,$$field670);
 ; store8($98,load8($422,1),1);
 $$field675 = load4($98);
 $$index677 = ((($98)) + 4|0);
 $$field678 = load4($$index677);
 $93 = $776;
 $94 = 9500;
 store4($95,$$field675);
 $$index681 = ((($95)) + 4|0);
 store4($$index681,$$field678);
 $785 = $93;
 $96 = 82;
 $786 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $787 = $94;
 $788 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($97)|0);
 $789 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($97)|0);
 $790 = $96;
 $92 = $790;
 $791 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $792 = $96;
 $793 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($95)|0);
 __embind_register_class_function(($786|0),($787|0),($788|0),($789|0),($791|0),($792|0),($793|0),0);
 store4($424,(84));
 $$index683 = ((($424)) + 4|0);
 store4($$index683,0);
 ; store8($$byval_copy953,load8($424,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($423,$$byval_copy953);
 $$field685 = load4($423);
 $$index687 = ((($423)) + 4|0);
 $$field688 = load4($$index687);
 store4($425,$$field685);
 $$index691 = ((($425)) + 4|0);
 store4($$index691,$$field688);
 ; store8($91,load8($425,1),1);
 $$field693 = load4($91);
 $$index695 = ((($91)) + 4|0);
 $$field696 = load4($$index695);
 $86 = $785;
 $87 = 9515;
 store4($88,$$field693);
 $$index699 = ((($88)) + 4|0);
 store4($$index699,$$field696);
 $794 = $86;
 $89 = 82;
 $795 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $796 = $87;
 $797 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($90)|0);
 $798 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($90)|0);
 $799 = $89;
 $85 = $799;
 $800 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $801 = $89;
 $802 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($88)|0);
 __embind_register_class_function(($795|0),($796|0),($797|0),($798|0),($800|0),($801|0),($802|0),0);
 store4($427,(85));
 $$index701 = ((($427)) + 4|0);
 store4($$index701,0);
 ; store8($$byval_copy954,load8($427,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($426,$$byval_copy954);
 $$field703 = load4($426);
 $$index705 = ((($426)) + 4|0);
 $$field706 = load4($$index705);
 store4($428,$$field703);
 $$index709 = ((($428)) + 4|0);
 store4($$index709,$$field706);
 ; store8($84,load8($428,1),1);
 $$field711 = load4($84);
 $$index713 = ((($84)) + 4|0);
 $$field714 = load4($$index713);
 $79 = $794;
 $80 = 9524;
 store4($81,$$field711);
 $$index717 = ((($81)) + 4|0);
 store4($$index717,$$field714);
 $803 = $79;
 $82 = 82;
 $804 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $805 = $80;
 $806 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($83)|0);
 $807 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($83)|0);
 $808 = $82;
 $78 = $808;
 $809 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $810 = $82;
 $811 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($81)|0);
 __embind_register_class_function(($804|0),($805|0),($806|0),($807|0),($809|0),($810|0),($811|0),0);
 store4($430,(86));
 $$index719 = ((($430)) + 4|0);
 store4($$index719,0);
 ; store8($$byval_copy955,load8($430,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($429,$$byval_copy955);
 $$field721 = load4($429);
 $$index723 = ((($429)) + 4|0);
 $$field724 = load4($$index723);
 store4($431,$$field721);
 $$index727 = ((($431)) + 4|0);
 store4($$index727,$$field724);
 ; store8($77,load8($431,1),1);
 $$field729 = load4($77);
 $$index731 = ((($77)) + 4|0);
 $$field732 = load4($$index731);
 $72 = $803;
 $73 = 9540;
 store4($74,$$field729);
 $$index735 = ((($74)) + 4|0);
 store4($$index735,$$field732);
 $812 = $72;
 $75 = 82;
 $813 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $814 = $73;
 $815 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($76)|0);
 $816 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($76)|0);
 $817 = $75;
 $71 = $817;
 $818 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $819 = $75;
 $820 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($74)|0);
 __embind_register_class_function(($813|0),($814|0),($815|0),($816|0),($818|0),($819|0),($820|0),0);
 store4($433,(87));
 $$index737 = ((($433)) + 4|0);
 store4($$index737,0);
 ; store8($$byval_copy956,load8($433,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($432,$$byval_copy956);
 $$field739 = load4($432);
 $$index741 = ((($432)) + 4|0);
 $$field742 = load4($$index741);
 store4($434,$$field739);
 $$index745 = ((($434)) + 4|0);
 store4($$index745,$$field742);
 ; store8($70,load8($434,1),1);
 $$field747 = load4($70);
 $$index749 = ((($70)) + 4|0);
 $$field750 = load4($$index749);
 $65 = $812;
 $66 = 9550;
 store4($67,$$field747);
 $$index753 = ((($67)) + 4|0);
 store4($$index753,$$field750);
 $821 = $65;
 $68 = 82;
 $822 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $823 = $66;
 $824 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($69)|0);
 $825 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($69)|0);
 $826 = $68;
 $64 = $826;
 $827 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $828 = $68;
 $829 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($67)|0);
 __embind_register_class_function(($822|0),($823|0),($824|0),($825|0),($827|0),($828|0),($829|0),0);
 store4($436,(88));
 $$index755 = ((($436)) + 4|0);
 store4($$index755,0);
 ; store8($$byval_copy957,load8($436,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($435,$$byval_copy957);
 $$field757 = load4($435);
 $$index759 = ((($435)) + 4|0);
 $$field760 = load4($$index759);
 store4($437,$$field757);
 $$index763 = ((($437)) + 4|0);
 store4($$index763,$$field760);
 ; store8($63,load8($437,1),1);
 $$field765 = load4($63);
 $$index767 = ((($63)) + 4|0);
 $$field768 = load4($$index767);
 $58 = $821;
 $59 = 9567;
 store4($60,$$field765);
 $$index771 = ((($60)) + 4|0);
 store4($$index771,$$field768);
 $830 = $58;
 $61 = 82;
 $831 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $832 = $59;
 $833 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($62)|0);
 $834 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($62)|0);
 $835 = $61;
 $57 = $835;
 $836 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $837 = $61;
 $838 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($60)|0);
 __embind_register_class_function(($831|0),($832|0),($833|0),($834|0),($836|0),($837|0),($838|0),0);
 store4($439,(89));
 $$index773 = ((($439)) + 4|0);
 store4($$index773,0);
 ; store8($$byval_copy958,load8($439,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($438,$$byval_copy958);
 $$field775 = load4($438);
 $$index777 = ((($438)) + 4|0);
 $$field778 = load4($$index777);
 store4($440,$$field775);
 $$index781 = ((($440)) + 4|0);
 store4($$index781,$$field778);
 ; store8($56,load8($440,1),1);
 $$field783 = load4($56);
 $$index785 = ((($56)) + 4|0);
 $$field786 = load4($$index785);
 $51 = $830;
 $52 = 9578;
 store4($53,$$field783);
 $$index789 = ((($53)) + 4|0);
 store4($$index789,$$field786);
 $839 = $51;
 $54 = 82;
 $840 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $841 = $52;
 $842 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($55)|0);
 $843 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($55)|0);
 $844 = $54;
 $50 = $844;
 $845 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $846 = $54;
 $847 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($53)|0);
 __embind_register_class_function(($840|0),($841|0),($842|0),($843|0),($845|0),($846|0),($847|0),0);
 store4($442,(90));
 $$index791 = ((($442)) + 4|0);
 store4($$index791,0);
 ; store8($$byval_copy959,load8($442,4),4);
 __ZN10emscripten15select_overloadIKFfiiiE9FastNoiseEEDtfp_EMT0_T_($441,$$byval_copy959);
 $$field793 = load4($441);
 $$index795 = ((($441)) + 4|0);
 $$field796 = load4($$index795);
 store4($443,$$field793);
 $$index799 = ((($443)) + 4|0);
 store4($$index799,$$field796);
 ; store8($49,load8($443,1),1);
 $$field801 = load4($49);
 $$index803 = ((($49)) + 4|0);
 $$field804 = load4($$index803);
 $44 = $839;
 $45 = 9591;
 store4($46,$$field801);
 $$index807 = ((($46)) + 4|0);
 store4($$index807,$$field804);
 $848 = $44;
 $47 = 91;
 $849 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $850 = $45;
 $851 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getCountEv($48)|0);
 $852 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getTypesEv($48)|0);
 $853 = $47;
 $43 = $853;
 $854 = (__ZN10emscripten8internal19getGenericSignatureIJfiiiiiEEEPKcv()|0);
 $855 = $47;
 $856 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiEEEPT_RKS5_($46)|0);
 __embind_register_class_function(($849|0),($850|0),($851|0),($852|0),($854|0),($855|0),($856|0),0);
 store4($445,(92));
 $$index809 = ((($445)) + 4|0);
 store4($$index809,0);
 ; store8($$byval_copy960,load8($445,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($444,$$byval_copy960);
 $$field811 = load4($444);
 $$index813 = ((($444)) + 4|0);
 $$field814 = load4($$index813);
 store4($446,$$field811);
 $$index817 = ((($446)) + 4|0);
 store4($$index817,$$field814);
 ; store8($42,load8($446,1),1);
 $$field819 = load4($42);
 $$index821 = ((($42)) + 4|0);
 $$field822 = load4($$index821);
 $37 = $848;
 $38 = 9607;
 store4($39,$$field819);
 $$index825 = ((($39)) + 4|0);
 store4($$index825,$$field822);
 $857 = $37;
 $40 = 82;
 $858 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $859 = $38;
 $860 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($41)|0);
 $861 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($41)|0);
 $862 = $40;
 $36 = $862;
 $863 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $864 = $40;
 $865 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($39)|0);
 __embind_register_class_function(($858|0),($859|0),($860|0),($861|0),($863|0),($864|0),($865|0),0);
 store4($448,(93));
 $$index827 = ((($448)) + 4|0);
 store4($$index827,0);
 ; store8($$byval_copy961,load8($448,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($447,$$byval_copy961);
 $$field829 = load4($447);
 $$index831 = ((($447)) + 4|0);
 $$field832 = load4($$index831);
 store4($449,$$field829);
 $$index835 = ((($449)) + 4|0);
 store4($$index835,$$field832);
 ; store8($35,load8($449,1),1);
 $$field837 = load4($35);
 $$index839 = ((($35)) + 4|0);
 $$field840 = load4($$index839);
 $30 = $857;
 $31 = 9615;
 store4($32,$$field837);
 $$index843 = ((($32)) + 4|0);
 store4($$index843,$$field840);
 $866 = $30;
 $33 = 82;
 $867 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $868 = $31;
 $869 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($34)|0);
 $870 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($34)|0);
 $871 = $33;
 $29 = $871;
 $872 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $873 = $33;
 $874 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($32)|0);
 __embind_register_class_function(($867|0),($868|0),($869|0),($870|0),($872|0),($873|0),($874|0),0);
 store4($451,(94));
 $$index845 = ((($451)) + 4|0);
 store4($$index845,0);
 ; store8($$byval_copy962,load8($451,4),4);
 __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($450,$$byval_copy962);
 $$field847 = load4($450);
 $$index849 = ((($450)) + 4|0);
 $$field850 = load4($$index849);
 store4($452,$$field847);
 $$index853 = ((($452)) + 4|0);
 store4($$index853,$$field850);
 ; store8($28,load8($452,1),1);
 $$field855 = load4($28);
 $$index857 = ((($28)) + 4|0);
 $$field858 = load4($$index857);
 $23 = $866;
 $24 = 9630;
 store4($25,$$field855);
 $$index861 = ((($25)) + 4|0);
 store4($$index861,$$field858);
 $875 = $23;
 $26 = 82;
 $876 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $877 = $24;
 $878 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($27)|0);
 $879 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($27)|0);
 $880 = $26;
 $22 = $880;
 $881 = (__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv()|0);
 $882 = $26;
 $883 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($25)|0);
 __embind_register_class_function(($876|0),($877|0),($878|0),($879|0),($881|0),($882|0),($883|0),0);
 store4($454,(95));
 $$index863 = ((($454)) + 4|0);
 store4($$index863,0);
 ; store8($$byval_copy963,load8($454,4),4);
 __ZN10emscripten15select_overloadIKFfffffE9FastNoiseEEDtfp_EMT0_T_($453,$$byval_copy963);
 $$field865 = load4($453);
 $$index867 = ((($453)) + 4|0);
 $$field868 = load4($$index867);
 store4($455,$$field865);
 $$index871 = ((($455)) + 4|0);
 store4($$index871,$$field868);
 ; store8($21,load8($455,1),1);
 $$field873 = load4($21);
 $$index875 = ((($21)) + 4|0);
 $$field876 = load4($$index875);
 $16 = $875;
 $17 = 9641;
 store4($18,$$field873);
 $$index879 = ((($18)) + 4|0);
 store4($$index879,$$field876);
 $884 = $16;
 $19 = 96;
 $885 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $886 = $17;
 $887 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getCountEv($20)|0);
 $888 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getTypesEv($20)|0);
 $889 = $19;
 $15 = $889;
 $890 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffffEEEPKcv()|0);
 $891 = $19;
 $892 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffffEEEPT_RKS5_($18)|0);
 __embind_register_class_function(($885|0),($886|0),($887|0),($888|0),($890|0),($891|0),($892|0),0);
 store4($457,(97));
 $$index881 = ((($457)) + 4|0);
 store4($$index881,0);
 ; store8($$byval_copy964,load8($457,4),4);
 __ZN10emscripten15select_overloadIKFfffffE9FastNoiseEEDtfp_EMT0_T_($456,$$byval_copy964);
 $$field883 = load4($456);
 $$index885 = ((($456)) + 4|0);
 $$field886 = load4($$index885);
 store4($458,$$field883);
 $$index889 = ((($458)) + 4|0);
 store4($$index889,$$field886);
 ; store8($14,load8($458,1),1);
 $$field891 = load4($14);
 $$index893 = ((($14)) + 4|0);
 $$field894 = load4($$index893);
 $9 = $884;
 $10 = 9651;
 store4($11,$$field891);
 $$index897 = ((($11)) + 4|0);
 store4($$index897,$$field894);
 $893 = $9;
 $12 = 96;
 $894 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $895 = $10;
 $896 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getCountEv($13)|0);
 $897 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getTypesEv($13)|0);
 $898 = $12;
 $8 = $898;
 $899 = (__ZN10emscripten8internal19getGenericSignatureIJfiiffffEEEPKcv()|0);
 $900 = $12;
 $901 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfffffEEEPT_RKS5_($11)|0);
 __embind_register_class_function(($894|0),($895|0),($896|0),($897|0),($899|0),($900|0),($901|0),0);
 store4($460,(98));
 $$index899 = ((($460)) + 4|0);
 store4($$index899,0);
 ; store8($$byval_copy965,load8($460,4),4);
 __ZN10emscripten15select_overloadIKFfiiiiE9FastNoiseEEDtfp_EMT0_T_($459,$$byval_copy965);
 $$field901 = load4($459);
 $$index903 = ((($459)) + 4|0);
 $$field904 = load4($$index903);
 store4($461,$$field901);
 $$index907 = ((($461)) + 4|0);
 store4($$index907,$$field904);
 ; store8($7,load8($461,1),1);
 $$field909 = load4($7);
 $$index911 = ((($7)) + 4|0);
 $$field912 = load4($$index911);
 $2 = $893;
 $3 = 9664;
 store4($4,$$field909);
 $$index915 = ((($4)) + 4|0);
 store4($$index915,$$field912);
 $5 = 99;
 $902 = (__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv()|0);
 $903 = $3;
 $904 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getCountEv($6)|0);
 $905 = (__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getTypesEv($6)|0);
 $906 = $5;
 $1 = $906;
 $907 = (__ZN10emscripten8internal19getGenericSignatureIJfiiiiiiEEEPKcv()|0);
 $908 = $5;
 $909 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiiEEEPT_RKS5_($4)|0);
 __embind_register_class_function(($902|0),($903|0),($904|0),($905|0),($907|0),($908|0),($909|0),0);
 STACKTOP = sp;return;
}
function __ZN10emscripten5enum_IN9FastNoise9NoiseTypeEEC2EPKc($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = (__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv()|0);
 $5 = $3;
 __embind_register_enum(($4|0),($5|0),4,0);
 STACKTOP = sp;return;
}
function __ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = (__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv()|0);
 $8 = $4;
 $9 = $5;
 __embind_register_enum_value(($7|0),($8|0),($9|0));
 STACKTOP = sp;return ($6|0);
}
function __ZN10emscripten5enum_IN9FastNoise6InterpEEC2EPKc($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = (__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv()|0);
 $5 = $3;
 __embind_register_enum(($4|0),($5|0),4,0);
 STACKTOP = sp;return;
}
function __ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = (__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv()|0);
 $8 = $4;
 $9 = $5;
 __embind_register_enum_value(($7|0),($8|0),($9|0));
 STACKTOP = sp;return ($6|0);
}
function __ZN10emscripten5enum_IN9FastNoise11FractalTypeEEC2EPKc($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = (__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv()|0);
 $5 = $3;
 __embind_register_enum(($4|0),($5|0),4,0);
 STACKTOP = sp;return;
}
function __ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = (__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv()|0);
 $8 = $4;
 $9 = $5;
 __embind_register_enum_value(($7|0),($8|0),($9|0));
 STACKTOP = sp;return ($6|0);
}
function __ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEEC2EPKc($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = (__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv()|0);
 $5 = $3;
 __embind_register_enum(($4|0),($5|0),4,0);
 STACKTOP = sp;return;
}
function __ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = (__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv()|0);
 $8 = $4;
 $9 = $5;
 __embind_register_enum_value(($7|0),($8|0),($9|0));
 STACKTOP = sp;return ($6|0);
}
function __ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEEC2EPKc($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = (__ZN10emscripten8internal6TypeIDIN9FastNoise18CellularReturnTypeEE3getEv()|0);
 $5 = $3;
 __embind_register_enum(($4|0),($5|0),4,0);
 STACKTOP = sp;return;
}
function __ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = (__ZN10emscripten8internal6TypeIDIN9FastNoise18CellularReturnTypeEE3getEv()|0);
 $8 = $4;
 $9 = $5;
 __embind_register_enum_value(($7|0),($8|0),($9|0));
 STACKTOP = sp;return ($6|0);
}
function __ZNK9FastNoise7GetSeedEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1024|0);
 $4 = load4($3);
 STACKTOP = sp;return ($4|0);
}
function __ZNK9FastNoise12GetFrequencyEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1028|0);
 $4 = loadf($3);
 STACKTOP = sp;return (Math_fround($4));
}
function __ZN9FastNoise12SetFrequencyEf($0,$1) {
 $0 = $0|0;
 $1 = Math_fround($1);
 var $2 = 0, $3 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1028|0);
 storef($6,$5);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise9GetInterpEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1032|0);
 $4 = load4($3);
 STACKTOP = sp;return ($4|0);
}
function __ZN9FastNoise9SetInterpENS_6InterpE($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1032|0);
 store4($6,$5);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise12GetNoiseTypeEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1036|0);
 $4 = load4($3);
 STACKTOP = sp;return ($4|0);
}
function __ZN9FastNoise12SetNoiseTypeENS_9NoiseTypeE($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1036|0);
 store4($6,$5);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise17GetFractalOctavesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1040|0);
 $4 = load4($3);
 STACKTOP = sp;return ($4|0);
}
function __ZN9FastNoise17SetFractalOctavesEi($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1040|0);
 store4($6,$5);
 __ZN9FastNoise24CalculateFractalBoundingEv($4);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise20GetFractalLacunarityEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1044|0);
 $4 = loadf($3);
 STACKTOP = sp;return (Math_fround($4));
}
function __ZN9FastNoise20SetFractalLacunarityEf($0,$1) {
 $0 = $0|0;
 $1 = Math_fround($1);
 var $2 = 0, $3 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1044|0);
 storef($6,$5);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise14GetFractalGainEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1048|0);
 $4 = loadf($3);
 STACKTOP = sp;return (Math_fround($4));
}
function __ZN9FastNoise14SetFractalGainEf($0,$1) {
 $0 = $0|0;
 $1 = Math_fround($1);
 var $2 = 0, $3 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1048|0);
 storef($6,$5);
 __ZN9FastNoise24CalculateFractalBoundingEv($4);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise14GetFractalTypeEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1052|0);
 $4 = load4($3);
 STACKTOP = sp;return ($4|0);
}
function __ZN9FastNoise14SetFractalTypeENS_11FractalTypeE($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1052|0);
 store4($6,$5);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise27GetCellularDistanceFunctionEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1060|0);
 $4 = load4($3);
 STACKTOP = sp;return ($4|0);
}
function __ZN9FastNoise27SetCellularDistanceFunctionENS_24CellularDistanceFunctionE($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1060|0);
 store4($6,$5);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise17GetCellularJitterEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1080|0);
 $4 = loadf($3);
 STACKTOP = sp;return (Math_fround($4));
}
function __ZN9FastNoise17SetCellularJitterEf($0,$1) {
 $0 = $0|0;
 $1 = Math_fround($1);
 var $2 = 0, $3 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1080|0);
 storef($6,$5);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise21GetGradientPerturbAmpEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 1084|0);
 $4 = loadf($3);
 STACKTOP = sp;return (Math_fround($4));
}
function __ZN9FastNoise21SetGradientPerturbAmpEf($0,$1) {
 $0 = $0|0;
 $1 = Math_fround($1);
 var $2 = 0, $3 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = ((($4)) + 1084|0);
 storef($6,$5);
 STACKTOP = sp;return;
}
function __ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field10 = 0, $$field15 = 0, $$field18 = 0, $$field2 = 0, $$field7 = 0, $$index1 = 0, $$index13 = 0, $$index17 = 0, $$index21 = 0, $$index5 = 0, $$index9 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = sp + 8|0;
 $3 = sp;
 $$field = load4($1);
 $$index1 = ((($1)) + 4|0);
 $$field2 = load4($$index1);
 store4($3,$$field);
 $$index5 = ((($3)) + 4|0);
 store4($$index5,$$field2);
 $$field7 = load4($3);
 $$index9 = ((($3)) + 4|0);
 $$field10 = load4($$index9);
 store4($2,$$field7);
 $$index13 = ((($2)) + 4|0);
 store4($$index13,$$field10);
 $$field15 = load4($2);
 $$index17 = ((($2)) + 4|0);
 $$field18 = load4($$index17);
 store4($0,$$field15);
 $$index21 = ((($0)) + 4|0);
 store4($$index21,$$field18);
 STACKTOP = sp;return;
}
function __ZN10emscripten15select_overloadIKFfiiE9FastNoiseEEDtfp_EMT0_T_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field10 = 0, $$field15 = 0, $$field18 = 0, $$field2 = 0, $$field7 = 0, $$index1 = 0, $$index13 = 0, $$index17 = 0, $$index21 = 0, $$index5 = 0, $$index9 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = sp + 8|0;
 $3 = sp;
 $$field = load4($1);
 $$index1 = ((($1)) + 4|0);
 $$field2 = load4($$index1);
 store4($3,$$field);
 $$index5 = ((($3)) + 4|0);
 store4($$index5,$$field2);
 $$field7 = load4($3);
 $$index9 = ((($3)) + 4|0);
 $$field10 = load4($$index9);
 store4($2,$$field7);
 $$index13 = ((($2)) + 4|0);
 store4($$index13,$$field10);
 $$field15 = load4($2);
 $$index17 = ((($2)) + 4|0);
 $$field18 = load4($$index17);
 store4($0,$$field15);
 $$index21 = ((($0)) + 4|0);
 store4($$index21,$$field18);
 STACKTOP = sp;return;
}
function __ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field10 = 0, $$field15 = 0, $$field18 = 0, $$field2 = 0, $$field7 = 0, $$index1 = 0, $$index13 = 0, $$index17 = 0, $$index21 = 0, $$index5 = 0, $$index9 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = sp + 8|0;
 $3 = sp;
 $$field = load4($1);
 $$index1 = ((($1)) + 4|0);
 $$field2 = load4($$index1);
 store4($3,$$field);
 $$index5 = ((($3)) + 4|0);
 store4($$index5,$$field2);
 $$field7 = load4($3);
 $$index9 = ((($3)) + 4|0);
 $$field10 = load4($$index9);
 store4($2,$$field7);
 $$index13 = ((($2)) + 4|0);
 store4($$index13,$$field10);
 $$field15 = load4($2);
 $$index17 = ((($2)) + 4|0);
 $$field18 = load4($$index17);
 store4($0,$$field15);
 $$index21 = ((($0)) + 4|0);
 store4($$index21,$$field18);
 STACKTOP = sp;return;
}
function __ZN10emscripten15select_overloadIKFfiiiE9FastNoiseEEDtfp_EMT0_T_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field10 = 0, $$field15 = 0, $$field18 = 0, $$field2 = 0, $$field7 = 0, $$index1 = 0, $$index13 = 0, $$index17 = 0, $$index21 = 0, $$index5 = 0, $$index9 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = sp + 8|0;
 $3 = sp;
 $$field = load4($1);
 $$index1 = ((($1)) + 4|0);
 $$field2 = load4($$index1);
 store4($3,$$field);
 $$index5 = ((($3)) + 4|0);
 store4($$index5,$$field2);
 $$field7 = load4($3);
 $$index9 = ((($3)) + 4|0);
 $$field10 = load4($$index9);
 store4($2,$$field7);
 $$index13 = ((($2)) + 4|0);
 store4($$index13,$$field10);
 $$field15 = load4($2);
 $$index17 = ((($2)) + 4|0);
 $$field18 = load4($$index17);
 store4($0,$$field15);
 $$index21 = ((($0)) + 4|0);
 store4($$index21,$$field18);
 STACKTOP = sp;return;
}
function __ZN10emscripten15select_overloadIKFfffffE9FastNoiseEEDtfp_EMT0_T_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field10 = 0, $$field15 = 0, $$field18 = 0, $$field2 = 0, $$field7 = 0, $$index1 = 0, $$index13 = 0, $$index17 = 0, $$index21 = 0, $$index5 = 0, $$index9 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = sp + 8|0;
 $3 = sp;
 $$field = load4($1);
 $$index1 = ((($1)) + 4|0);
 $$field2 = load4($$index1);
 store4($3,$$field);
 $$index5 = ((($3)) + 4|0);
 store4($$index5,$$field2);
 $$field7 = load4($3);
 $$index9 = ((($3)) + 4|0);
 $$field10 = load4($$index9);
 store4($2,$$field7);
 $$index13 = ((($2)) + 4|0);
 store4($$index13,$$field10);
 $$field15 = load4($2);
 $$index17 = ((($2)) + 4|0);
 $$field18 = load4($$index17);
 store4($0,$$field15);
 $$index21 = ((($0)) + 4|0);
 store4($$index21,$$field18);
 STACKTOP = sp;return;
}
function __ZN10emscripten15select_overloadIKFfiiiiE9FastNoiseEEDtfp_EMT0_T_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field10 = 0, $$field15 = 0, $$field18 = 0, $$field2 = 0, $$field7 = 0, $$index1 = 0, $$index13 = 0, $$index17 = 0, $$index21 = 0, $$index5 = 0, $$index9 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = sp + 8|0;
 $3 = sp;
 $$field = load4($1);
 $$index1 = ((($1)) + 4|0);
 $$field2 = load4($$index1);
 store4($3,$$field);
 $$index5 = ((($3)) + 4|0);
 store4($$index5,$$field2);
 $$field7 = load4($3);
 $$index9 = ((($3)) + 4|0);
 $$field10 = load4($$index9);
 store4($2,$$field7);
 $$index13 = ((($2)) + 4|0);
 store4($$index13,$$field10);
 $$field15 = load4($2);
 $$index17 = ((($2)) + 4|0);
 $$field18 = load4($$index17);
 store4($0,$$field15);
 $$index21 = ((($0)) + 4|0);
 store4($$index21,$$field18);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIN9FastNoise9NoiseTypeEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIN9FastNoise9NoiseTypeEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1024|0);
}
function __ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIN9FastNoise6InterpEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIN9FastNoise6InterpEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1032|0);
}
function __ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIN9FastNoise11FractalTypeEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIN9FastNoise11FractalTypeEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1040|0);
}
function __ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1048|0);
}
function __ZN10emscripten8internal6TypeIDIN9FastNoise18CellularReturnTypeEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIN9FastNoise18CellularReturnTypeEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIN9FastNoise18CellularReturnTypeEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1056|0);
}
function __ZN10emscripten8internal11NoBaseClass6verifyI9FastNoiseEEvv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function __ZN10emscripten8internal13getActualTypeI9FastNoiseEEPKvPT_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = (__ZN10emscripten8internal14getLightTypeIDI9FastNoiseEEPKvRKT_($2)|0);
 STACKTOP = sp;return ($3|0);
}
function __ZN10emscripten8internal11NoBaseClass11getUpcasterI9FastNoiseEEPFvvEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (0|0);
}
function __ZN10emscripten8internal11NoBaseClass13getDowncasterI9FastNoiseEEPFvvEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (0|0);
}
function __ZN10emscripten8internal14raw_destructorI9FastNoiseEEvPT_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ($2|0)==(0|0);
 if (!($3)) {
  __ZdlPv($2);
 }
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDI9FastNoiseE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerI9FastNoiseEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIP9FastNoiseE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerIK9FastNoiseEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIPK9FastNoiseE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11NoBaseClass3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (0|0);
}
function __ZN10emscripten8internal14getLightTypeIDI9FastNoiseEEPKvRKT_($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return (1064|0);
}
function __ZN10emscripten8internal11LightTypeIDI9FastNoiseE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1064|0);
}
function __ZN10emscripten8internal11LightTypeIDIP9FastNoiseE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1072|0);
}
function __ZN10emscripten8internal11LightTypeIDIPK9FastNoiseE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1088|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJiiEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9857|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJvEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9860|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJviEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9862|0);
}
function __ZN10emscripten8internal12operator_newI9FastNoiseJiEEEPT_DpOT0_($0) {
 $0 = $0|0;
 var $1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $5 = (__Znwj(1088)|0);
 $6 = $2;
 $1 = $6;
 $7 = $1;
 $8 = load4($7);
 __THREW__ = 0;
 invoke_vii(100,($5|0),($8|0));
 $9 = __THREW__; __THREW__ = 0;
 $10 = $9&1;
 if ($10) {
  $11 = ___cxa_find_matching_catch_2()|0;
  $12 = tempRet0;
  $3 = $11;
  $4 = $12;
  __ZdlPv($5);
  $13 = $3;
  $14 = $4;
  ___resumeException($13|0);
  // unreachable;
 } else {
  STACKTOP = sp;return ($5|0);
 }
 return (0)|0;
}
function __ZN10emscripten8internal7InvokerIP9FastNoiseJOiEE6invokeEPFS3_S4_Ei($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = sp;
 $2 = $0;
 $3 = $1;
 $5 = $2;
 $6 = $3;
 $7 = (__ZN10emscripten8internal11BindingTypeIOiE12fromWireTypeEi($6)|0);
 store4($4,$7);
 $8 = (FUNCTION_TABLE_ii[$5 & 63]($4)|0);
 $9 = (__ZN10emscripten8internal11BindingTypeIP9FastNoiseE10toWireTypeES3_($8)|0);
 STACKTOP = sp;return ($9|0);
}
function __ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getCountEv($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return 2;
}
function __ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getTypesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJNS0_17AllowedRawPointerI9FastNoiseEEOiEEEE3getEv()|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal11BindingTypeIP9FastNoiseE10toWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal11BindingTypeIOiE12fromWireTypeEi($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($2)|0);
 STACKTOP = sp;return ($3|0);
}
function __ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJNS0_17AllowedRawPointerI9FastNoiseEEOiEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1560|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9865|0);
}
function __ZN9FastNoiseC2Ei($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $2 = 0, $20 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = ((($4)) + 1024|0);
 store4($5,1337);
 $6 = ((($4)) + 1028|0);
 storef($6,Math_fround(0.00999999977));
 $7 = ((($4)) + 1032|0);
 store4($7,2);
 $8 = ((($4)) + 1036|0);
 store4($8,4);
 $9 = ((($4)) + 1040|0);
 store4($9,3);
 $10 = ((($4)) + 1044|0);
 storef($10,Math_fround(2.0));
 $11 = ((($4)) + 1048|0);
 storef($11,Math_fround(0.5));
 $12 = ((($4)) + 1052|0);
 store4($12,0);
 $13 = ((($4)) + 1060|0);
 store4($13,0);
 $14 = ((($4)) + 1064|0);
 store4($14,0);
 $15 = ((($4)) + 1068|0);
 store4($15,0);
 $16 = ((($4)) + 1072|0);
 store4($16,0);
 $17 = ((($4)) + 1076|0);
 store4($17,1);
 $18 = ((($4)) + 1080|0);
 storef($18,Math_fround(0.449999988));
 $19 = ((($4)) + 1084|0);
 storef($19,Math_fround(1.0));
 $20 = $3;
 __ZN9FastNoise7SetSeedEi($4,$20);
 __ZN9FastNoise24CalculateFractalBoundingEv($4);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE3getIS2_EEiRKS4_RKT_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = sp;
 $2 = $0;
 $3 = $1;
 $5 = $2;
 $$field = load4($5);
 $$index1 = ((($5)) + 4|0);
 $$field2 = load4($$index1);
 $6 = $3;
 $7 = $$field2 >> 1;
 $8 = (($6) + ($7)|0);
 $9 = $$field2 & 1;
 $10 = ($9|0)!=(0);
 if ($10) {
  $11 = load4($8);
  $12 = (($11) + ($$field)|0);
  $13 = load4($12);
  $15 = $13;
 } else {
  $14 = $$field;
  $15 = $14;
 }
 $16 = (FUNCTION_TABLE_ii[$15 & 63]($8)|0);
 store4($4,$16);
 $17 = (__ZN10emscripten8internal11BindingTypeIiE10toWireTypeERKi($4)|0);
 STACKTOP = sp;return ($17|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE3setIS2_EEvRKS4_RT_i($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $$field = load4($6);
 $$index1 = ((($6)) + 4|0);
 $$field2 = load4($$index1);
 $7 = $4;
 $8 = $$field2 >> 1;
 $9 = (($7) + ($8)|0);
 $10 = $$field2 & 1;
 $11 = ($10|0)!=(0);
 if ($11) {
  $12 = load4($9);
  $13 = (($12) + ($$field)|0);
  $14 = load4($13);
  $18 = $14;
 } else {
  $15 = $$field;
  $18 = $15;
 }
 $16 = $5;
 $17 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($16)|0);
 FUNCTION_TABLE_vii[$18 & 127]($9,$17);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal6TypeIDIiE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIiE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE10getContextES4_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFivEEEPT_RKS5_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE10getContextES4_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseFviEEEPT_RKS5_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal11BindingTypeIiE10toWireTypeERKi($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = load4($2);
 STACKTOP = sp;return ($3|0);
}
function __ZN10emscripten8internal11LightTypeIDIiE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1480|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFivEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9869|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseFviEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE3getIS2_EEfRKS4_RKT_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = Math_fround(0), $17 = Math_fround(0), $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = sp;
 $2 = $0;
 $3 = $1;
 $5 = $2;
 $$field = load4($5);
 $$index1 = ((($5)) + 4|0);
 $$field2 = load4($$index1);
 $6 = $3;
 $7 = $$field2 >> 1;
 $8 = (($6) + ($7)|0);
 $9 = $$field2 & 1;
 $10 = ($9|0)!=(0);
 if ($10) {
  $11 = load4($8);
  $12 = (($11) + ($$field)|0);
  $13 = load4($12);
  $15 = $13;
 } else {
  $14 = $$field;
  $15 = $14;
 }
 $16 = (Math_fround(FUNCTION_TABLE_fi[$15 & 127]($8)));
 storef($4,$16);
 $17 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($4)));
 STACKTOP = sp;return (Math_fround($17));
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE3setIS2_EEvRKS4_RT_f($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $3 = 0, $4 = 0, $5 = Math_fround(0), $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $$field = load4($6);
 $$index1 = ((($6)) + 4|0);
 $$field2 = load4($$index1);
 $7 = $4;
 $8 = $$field2 >> 1;
 $9 = (($7) + ($8)|0);
 $10 = $$field2 & 1;
 $11 = ($10|0)!=(0);
 if ($11) {
  $12 = load4($9);
  $13 = (($12) + ($$field)|0);
  $14 = load4($13);
  $18 = $14;
 } else {
  $15 = $$field;
  $18 = $15;
 }
 $16 = $5;
 $17 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($16)));
 FUNCTION_TABLE_vif[$18 & 127]($9,$17);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal6TypeIDIfE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIfE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFfvEEEPT_RKS5_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseFvfEEEPT_RKS5_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = loadf($2);
 STACKTOP = sp;return (Math_fround($3));
}
function __ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($0) {
 $0 = Math_fround($0);
 var $1 = Math_fround(0), $2 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return (Math_fround($2));
}
function __ZN10emscripten8internal11LightTypeIDIfE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1512|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9874|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFfvEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9878|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseFvfEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE3getIS2_EES3_RKS5_RKT_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $$field = load4($4);
 $$index1 = ((($4)) + 4|0);
 $$field2 = load4($$index1);
 $5 = $3;
 $6 = $$field2 >> 1;
 $7 = (($5) + ($6)|0);
 $8 = $$field2 & 1;
 $9 = ($8|0)!=(0);
 if ($9) {
  $10 = load4($7);
  $11 = (($10) + ($$field)|0);
  $12 = load4($11);
  $14 = $12;
 } else {
  $13 = $$field;
  $14 = $13;
 }
 $15 = (FUNCTION_TABLE_ii[$14 & 63]($7)|0);
 $16 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE10toWireTypeES3_($15)|0);
 STACKTOP = sp;return ($16|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE3setIS2_EEvRKS5_RT_S3_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $$field = load4($6);
 $$index1 = ((($6)) + 4|0);
 $$field2 = load4($$index1);
 $7 = $4;
 $8 = $$field2 >> 1;
 $9 = (($7) + ($8)|0);
 $10 = $$field2 & 1;
 $11 = ($10|0)!=(0);
 if ($11) {
  $12 = load4($9);
  $13 = (($12) + ($$field)|0);
  $14 = load4($13);
  $18 = $14;
 } else {
  $15 = $$field;
  $18 = $15;
 }
 $16 = $5;
 $17 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE12fromWireTypeES3_($16)|0);
 FUNCTION_TABLE_vii[$18 & 127]($9,$17);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_6InterpEvEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_6InterpEEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE10toWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE12fromWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_6InterpEvEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_6InterpEEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE3getIS2_EES3_RKS5_RKT_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $$field = load4($4);
 $$index1 = ((($4)) + 4|0);
 $$field2 = load4($$index1);
 $5 = $3;
 $6 = $$field2 >> 1;
 $7 = (($5) + ($6)|0);
 $8 = $$field2 & 1;
 $9 = ($8|0)!=(0);
 if ($9) {
  $10 = load4($7);
  $11 = (($10) + ($$field)|0);
  $12 = load4($11);
  $14 = $12;
 } else {
  $13 = $$field;
  $14 = $13;
 }
 $15 = (FUNCTION_TABLE_ii[$14 & 63]($7)|0);
 $16 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE10toWireTypeES3_($15)|0);
 STACKTOP = sp;return ($16|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE3setIS2_EEvRKS5_RT_S3_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $$field = load4($6);
 $$index1 = ((($6)) + 4|0);
 $$field2 = load4($$index1);
 $7 = $4;
 $8 = $$field2 >> 1;
 $9 = (($7) + ($8)|0);
 $10 = $$field2 & 1;
 $11 = ($10|0)!=(0);
 if ($11) {
  $12 = load4($9);
  $13 = (($12) + ($$field)|0);
  $14 = load4($13);
  $18 = $14;
 } else {
  $15 = $$field;
  $18 = $15;
 }
 $16 = $5;
 $17 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE12fromWireTypeES3_($16)|0);
 FUNCTION_TABLE_vii[$18 & 127]($9,$17);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_9NoiseTypeEvEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_9NoiseTypeEEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE10toWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE12fromWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_9NoiseTypeEvEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_9NoiseTypeEEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE3getIS2_EES3_RKS5_RKT_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $$field = load4($4);
 $$index1 = ((($4)) + 4|0);
 $$field2 = load4($$index1);
 $5 = $3;
 $6 = $$field2 >> 1;
 $7 = (($5) + ($6)|0);
 $8 = $$field2 & 1;
 $9 = ($8|0)!=(0);
 if ($9) {
  $10 = load4($7);
  $11 = (($10) + ($$field)|0);
  $12 = load4($11);
  $14 = $12;
 } else {
  $13 = $$field;
  $14 = $13;
 }
 $15 = (FUNCTION_TABLE_ii[$14 & 63]($7)|0);
 $16 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE10toWireTypeES3_($15)|0);
 STACKTOP = sp;return ($16|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE3setIS2_EEvRKS5_RT_S3_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $$field = load4($6);
 $$index1 = ((($6)) + 4|0);
 $$field2 = load4($$index1);
 $7 = $4;
 $8 = $$field2 >> 1;
 $9 = (($7) + ($8)|0);
 $10 = $$field2 & 1;
 $11 = ($10|0)!=(0);
 if ($11) {
  $12 = load4($9);
  $13 = (($12) + ($$field)|0);
  $14 = load4($13);
  $18 = $14;
 } else {
  $15 = $$field;
  $18 = $15;
 }
 $16 = $5;
 $17 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE12fromWireTypeES3_($16)|0);
 FUNCTION_TABLE_vii[$18 & 127]($9,$17);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_11FractalTypeEvEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_11FractalTypeEEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE10toWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE12fromWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_11FractalTypeEvEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_11FractalTypeEEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE3getIS2_EES3_RKS5_RKT_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $$field = load4($4);
 $$index1 = ((($4)) + 4|0);
 $$field2 = load4($$index1);
 $5 = $3;
 $6 = $$field2 >> 1;
 $7 = (($5) + ($6)|0);
 $8 = $$field2 & 1;
 $9 = ($8|0)!=(0);
 if ($9) {
  $10 = load4($7);
  $11 = (($10) + ($$field)|0);
  $12 = load4($11);
  $14 = $12;
 } else {
  $13 = $$field;
  $14 = $13;
 }
 $15 = (FUNCTION_TABLE_ii[$14 & 63]($7)|0);
 $16 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE10toWireTypeES3_($15)|0);
 STACKTOP = sp;return ($16|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE3setIS2_EEvRKS5_RT_S3_($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $$field = load4($6);
 $$index1 = ((($6)) + 4|0);
 $$field2 = load4($$index1);
 $7 = $4;
 $8 = $$field2 >> 1;
 $9 = (($7) + ($8)|0);
 $10 = $$field2 & 1;
 $11 = ($10|0)!=(0);
 if ($11) {
  $12 = load4($9);
  $13 = (($12) + ($$field)|0);
  $14 = load4($13);
  $18 = $14;
 } else {
  $15 = $$field;
  $18 = $15;
 }
 $16 = $5;
 $17 = (__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE12fromWireTypeES3_($16)|0);
 FUNCTION_TABLE_vii[$18 & 127]($9,$17);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE10getContextES5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $$field = load4($0);
 $$index1 = ((($0)) + 4|0);
 $$field2 = load4($$index1);
 store4($1,$$field);
 $$index5 = ((($1)) + 4|0);
 store4($$index5,$$field2);
 $2 = (__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_24CellularDistanceFunctionEEEEPT_RKS6_($1)|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE10toWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE12fromWireTypeES3_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_24CellularDistanceFunctionEEEEPT_RKS6_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffEfPKS2_JffEE6invokeERKS4_S6_ff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0);
 var $4 = 0, $5 = 0, $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $8 = sp;
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $9 = $4;
 $$field = load4($9);
 $$index1 = ((($9)) + 4|0);
 $$field2 = load4($$index1);
 $10 = $5;
 $11 = (__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_($10)|0);
 $12 = $$field2 >> 1;
 $13 = (($11) + ($12)|0);
 $14 = $$field2 & 1;
 $15 = ($14|0)!=(0);
 if ($15) {
  $16 = load4($13);
  $17 = (($16) + ($$field)|0);
  $18 = load4($17);
  $24 = $18;
 } else {
  $19 = $$field;
  $24 = $19;
 }
 $20 = $6;
 $21 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($20)));
 $22 = $7;
 $23 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($22)));
 $25 = (Math_fround(FUNCTION_TABLE_fiff[$24 & 127]($13,$21,$23)));
 storef($8,$25);
 $26 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($8)));
 STACKTOP = sp;return (Math_fround($26));
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return 4;
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEEEE3getEv()|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1568|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9883|0);
}
function __ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiEfPKS2_JiiEE6invokeERKS4_S6_ii($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0);
 var $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $8 = sp;
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $9 = $4;
 $$field = load4($9);
 $$index1 = ((($9)) + 4|0);
 $$field2 = load4($$index1);
 $10 = $5;
 $11 = (__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_($10)|0);
 $12 = $$field2 >> 1;
 $13 = (($11) + ($12)|0);
 $14 = $$field2 & 1;
 $15 = ($14|0)!=(0);
 if ($15) {
  $16 = load4($13);
  $17 = (($16) + ($$field)|0);
  $18 = load4($17);
  $24 = $18;
 } else {
  $19 = $$field;
  $24 = $19;
 }
 $20 = $6;
 $21 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($20)|0);
 $22 = $7;
 $23 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($22)|0);
 $25 = (Math_fround(FUNCTION_TABLE_fiii[$24 & 127]($13,$21,$23)));
 storef($8,$25);
 $26 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($8)));
 STACKTOP = sp;return (Math_fround($26));
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getCountEv($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return 4;
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getTypesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEEEE3getEv()|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFfiiEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1584|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJfiiiiEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9889|0);
}
function __ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFffffEfPKS2_JfffEE6invokeERKS4_S6_fff($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0);
 var $27 = Math_fround(0), $28 = 0, $29 = Math_fround(0), $30 = Math_fround(0), $5 = 0, $6 = 0, $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $10 = sp;
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $11 = $5;
 $$field = load4($11);
 $$index1 = ((($11)) + 4|0);
 $$field2 = load4($$index1);
 $12 = $6;
 $13 = (__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_($12)|0);
 $14 = $$field2 >> 1;
 $15 = (($13) + ($14)|0);
 $16 = $$field2 & 1;
 $17 = ($16|0)!=(0);
 if ($17) {
  $18 = load4($15);
  $19 = (($18) + ($$field)|0);
  $20 = load4($19);
  $28 = $20;
 } else {
  $21 = $$field;
  $28 = $21;
 }
 $22 = $7;
 $23 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($22)));
 $24 = $8;
 $25 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($24)));
 $26 = $9;
 $27 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($26)));
 $29 = (Math_fround(FUNCTION_TABLE_fifff[$28 & 127]($15,$23,$25,$27)));
 storef($10,$29);
 $30 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($10)));
 STACKTOP = sp;return (Math_fround($30));
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return 5;
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEEEE3getEv()|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1600|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9895|0);
}
function __ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiEfPKS2_JiiiEE6invokeERKS4_S6_iii($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0;
 var $27 = 0, $28 = 0, $29 = Math_fround(0), $30 = Math_fround(0), $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $10 = sp;
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $11 = $5;
 $$field = load4($11);
 $$index1 = ((($11)) + 4|0);
 $$field2 = load4($$index1);
 $12 = $6;
 $13 = (__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_($12)|0);
 $14 = $$field2 >> 1;
 $15 = (($13) + ($14)|0);
 $16 = $$field2 & 1;
 $17 = ($16|0)!=(0);
 if ($17) {
  $18 = load4($15);
  $19 = (($18) + ($$field)|0);
  $20 = load4($19);
  $28 = $20;
 } else {
  $21 = $$field;
  $28 = $21;
 }
 $22 = $7;
 $23 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($22)|0);
 $24 = $8;
 $25 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($24)|0);
 $26 = $9;
 $27 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($26)|0);
 $29 = (Math_fround(FUNCTION_TABLE_fiiii[$28 & 127]($15,$23,$25,$27)));
 storef($10,$29);
 $30 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($10)));
 STACKTOP = sp;return (Math_fround($30));
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getCountEv($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return 5;
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getTypesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEEEE3getEv()|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1620|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJfiiiiiEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9902|0);
}
function __ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffffEfPKS2_JffffEE6invokeERKS4_S6_ffff($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 $5 = Math_fround($5);
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0);
 var $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0), $30 = Math_fround(0), $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $6 = 0, $7 = 0, $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $12 = sp;
 $6 = $0;
 $7 = $1;
 $8 = $2;
 $9 = $3;
 $10 = $4;
 $11 = $5;
 $13 = $6;
 $$field = load4($13);
 $$index1 = ((($13)) + 4|0);
 $$field2 = load4($$index1);
 $14 = $7;
 $15 = (__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_($14)|0);
 $16 = $$field2 >> 1;
 $17 = (($15) + ($16)|0);
 $18 = $$field2 & 1;
 $19 = ($18|0)!=(0);
 if ($19) {
  $20 = load4($17);
  $21 = (($20) + ($$field)|0);
  $22 = load4($21);
  $32 = $22;
 } else {
  $23 = $$field;
  $32 = $23;
 }
 $24 = $8;
 $25 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($24)));
 $26 = $9;
 $27 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($26)));
 $28 = $10;
 $29 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($28)));
 $30 = $11;
 $31 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf($30)));
 $33 = (Math_fround(FUNCTION_TABLE_fiffff[$32 & 127]($17,$25,$27,$29,$31)));
 storef($12,$33);
 $34 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($12)));
 STACKTOP = sp;return (Math_fround($34));
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getCountEv($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return 6;
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getTypesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEEEE3getEv()|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFfffffEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1640|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJfiiffffEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9909|0);
}
function __ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiiEfPKS2_JiiiiEE6invokeERKS4_S6_iiii($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = $5|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0;
 var $27 = 0, $28 = 0, $29 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $12 = sp;
 $6 = $0;
 $7 = $1;
 $8 = $2;
 $9 = $3;
 $10 = $4;
 $11 = $5;
 $13 = $6;
 $$field = load4($13);
 $$index1 = ((($13)) + 4|0);
 $$field2 = load4($$index1);
 $14 = $7;
 $15 = (__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_($14)|0);
 $16 = $$field2 >> 1;
 $17 = (($15) + ($16)|0);
 $18 = $$field2 & 1;
 $19 = ($18|0)!=(0);
 if ($19) {
  $20 = load4($17);
  $21 = (($20) + ($$field)|0);
  $22 = load4($21);
  $32 = $22;
 } else {
  $23 = $$field;
  $32 = $23;
 }
 $24 = $8;
 $25 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($24)|0);
 $26 = $9;
 $27 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($26)|0);
 $28 = $10;
 $29 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($28)|0);
 $30 = $11;
 $31 = (__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi($30)|0);
 $33 = (Math_fround(FUNCTION_TABLE_fiiiii[$32 & 127]($17,$25,$27,$29,$31)));
 storef($12,$33);
 $34 = (Math_fround(__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf($12)));
 STACKTOP = sp;return (Math_fround($34));
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getCountEv($0) {
 $0 = $0|0;
 var $1 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 STACKTOP = sp;return 6;
}
function __ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getTypesEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEEEE3getEv()|0);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiiEEEPT_RKS5_($0) {
 $0 = $0|0;
 var $$field = 0, $$field2 = 0, $$index1 = 0, $$index5 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__Znwj(8)|0);
 $3 = $1;
 $$field = load4($3);
 $$index1 = ((($3)) + 4|0);
 $$field2 = load4($$index1);
 store4($2,$$field);
 $$index5 = ((($2)) + 4|0);
 store4($$index5,$$field2);
 STACKTOP = sp;return ($2|0);
}
function __ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1664|0);
}
function __ZN10emscripten8internal19getGenericSignatureIJfiiiiiiEEEPKcv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (9917|0);
}
function __GLOBAL__sub_I_EMBindings_cpp() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 ___cxx_global_var_init();
 return;
}
function __GLOBAL__sub_I_FastNoise_cpp() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 ___cxx_global_var_init_2();
 ___cxx_global_var_init_1();
 return;
}
function ___cxx_global_var_init_2() {
 var $0 = Math_fround(0), $1 = Math_fround(0), $2 = Math_fround(0), $3 = Math_fround(0), $4 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $0 = Math_fround(5.0);
 $1 = $0;
 $2 = (Math_fround(Math_sqrt((Math_fround($1)))));
 $3 = Math_fround($2 - Math_fround(1.0));
 $4 = Math_fround($3 / Math_fround(4.0));
 storef(12036,$4);
 STACKTOP = sp;return;
}
function ___cxx_global_var_init_1() {
 var $0 = Math_fround(0), $1 = Math_fround(0), $2 = Math_fround(0), $3 = Math_fround(0), $4 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $0 = Math_fround(5.0);
 $1 = $0;
 $2 = (Math_fround(Math_sqrt((Math_fround($1)))));
 $3 = Math_fround(Math_fround(5.0) - $2);
 $4 = Math_fround($3 / Math_fround(2.0));
 storef(12032,$4);
 STACKTOP = sp;return;
}
function __ZN9FastNoise7SetSeedEi($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $2 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0;
 var $29 = 0, $3 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0, $46 = 0;
 var $47 = 0, $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $54 = 0, $55 = 0, $56 = 0, $57 = 0, $58 = 0, $59 = 0, $6 = 0, $60 = 0, $61 = 0, $62 = 0, $63 = 0, $7 = 0;
 var $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 2544|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(2544|0);
 $6 = sp + 24|0;
 $9 = sp + 8|0;
 $4 = $0;
 $5 = $1;
 $12 = $4;
 $13 = $5;
 $14 = ((($12)) + 1024|0);
 store4($14,$13);
 $15 = $5;
 $2 = $6;
 $3 = $15;
 $16 = $2;
 $17 = $3;
 __ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EE4seedEj($16,$17);
 $7 = 0;
 while(1) {
  $18 = $7;
  $19 = ($18|0)<(256);
  if (!($19)) {
   break;
  }
  $20 = $7;
  $21 = $20&255;
  $22 = $7;
  $23 = (($12) + ($22)|0);
  store1($23,$21);
  $24 = $7;
  $25 = (($24) + 1)|0;
  $7 = $25;
 }
 $8 = 0;
 while(1) {
  $26 = $8;
  $27 = ($26|0)<(256);
  if (!($27)) {
   break;
  }
  $28 = $8;
  $29 = (256 - ($28))|0;
  __ZNSt3__224uniform_int_distributionIiEC2Eii($9,0,$29);
  $30 = (__ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_($9,$6)|0);
  $31 = $8;
  $32 = (($30) + ($31))|0;
  $10 = $32;
  $33 = $8;
  $34 = (($12) + ($33)|0);
  $35 = load1($34);
  $36 = $35&255;
  $11 = $36;
  $37 = $10;
  $38 = (($12) + ($37)|0);
  $39 = load1($38);
  $40 = $8;
  $41 = (($40) + 256)|0;
  $42 = (($12) + ($41)|0);
  store1($42,$39);
  $43 = $8;
  $44 = (($12) + ($43)|0);
  store1($44,$39);
  $45 = $11;
  $46 = $45&255;
  $47 = $10;
  $48 = (($12) + ($47)|0);
  store1($48,$46);
  $49 = $8;
  $50 = (($12) + ($49)|0);
  $51 = load1($50);
  $52 = $51&255;
  $53 = (($52|0) % 12)&-1;
  $54 = $53&255;
  $55 = $8;
  $56 = (($55) + 256)|0;
  $57 = ((($12)) + 512|0);
  $58 = (($57) + ($56)|0);
  store1($58,$54);
  $59 = $8;
  $60 = ((($12)) + 512|0);
  $61 = (($60) + ($59)|0);
  store1($61,$54);
  $62 = $8;
  $63 = (($62) + 1)|0;
  $8 = $63;
 }
 STACKTOP = sp;return;
}
function __ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EE4seedEj($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $2 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $6 = $3;
 $7 = $4;
 store4($6,$7);
 $5 = 1;
 while(1) {
  $8 = $5;
  $9 = ($8>>>0)<(624);
  if (!($9)) {
   break;
  }
  $10 = $5;
  $11 = (($10) - 1)|0;
  $12 = (($6) + ($11<<2)|0);
  $13 = load4($12);
  $14 = $5;
  $15 = (($14) - 1)|0;
  $16 = (($6) + ($15<<2)|0);
  $17 = load4($16);
  $2 = $17;
  $18 = $2;
  $19 = $18 >>> 30;
  $20 = $13 ^ $19;
  $21 = Math_imul(1812433253, $20)|0;
  $22 = $5;
  $23 = (($21) + ($22))|0;
  $24 = $5;
  $25 = (($6) + ($24<<2)|0);
  store4($25,$23);
  $26 = $5;
  $27 = (($26) + 1)|0;
  $5 = $27;
 }
 $28 = ((($6)) + 2496|0);
 store4($28,0);
 STACKTOP = sp;return;
}
function __ZNSt3__224uniform_int_distributionIiEC2Eii($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = $4;
 $8 = $5;
 __ZNSt3__224uniform_int_distributionIiE10param_typeC2Eii($6,$7,$8);
 STACKTOP = sp;return;
}
function __ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $1;
 $4 = $2;
 $5 = $3;
 $6 = (__ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_RKNS1_10param_typeE($4,$5,$4)|0);
 STACKTOP = sp;return ($6|0);
}
function __ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_RKNS1_10param_typeE($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $3 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0, $46 = 0, $47 = 0;
 var $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 112|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(112|0);
 $10 = sp + 44|0;
 $12 = sp + 4|0;
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $14 = $7;
 $15 = (__ZNKSt3__224uniform_int_distributionIiE10param_type1bEv($14)|0);
 $16 = $7;
 $17 = (__ZNKSt3__224uniform_int_distributionIiE10param_type1aEv($16)|0);
 $18 = (($15) - ($17))|0;
 $19 = (($18) + 1)|0;
 $8 = $19;
 $20 = $8;
 $21 = ($20|0)==(1);
 if ($21) {
  $22 = $7;
  $23 = (__ZNKSt3__224uniform_int_distributionIiE10param_type1aEv($22)|0);
  $4 = $23;
  $51 = $4;
  STACKTOP = sp;return ($51|0);
 }
 $9 = 32;
 $24 = $8;
 $25 = ($24|0)==(0);
 if ($25) {
  $26 = $6;
  __ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEC2ERS2_j($10,$26,32);
  $27 = (__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEclEv($10)|0);
  $4 = $27;
  $51 = $4;
  STACKTOP = sp;return ($51|0);
 }
 $28 = $8;
 $3 = $28;
 $29 = $3;
 $30 = (Math_clz32(($29|0))|0);
 $31 = (32 - ($30))|0;
 $32 = (($31) - 1)|0;
 $11 = $32;
 $33 = $8;
 $34 = $11;
 $35 = (32 - ($34))|0;
 $36 = -1 >>> $35;
 $37 = $33 & $36;
 $38 = ($37|0)!=(0);
 if ($38) {
  $39 = $11;
  $40 = (($39) + 1)|0;
  $11 = $40;
 }
 $41 = $6;
 $42 = $11;
 __ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEC2ERS2_j($12,$41,$42);
 while(1) {
  $43 = (__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEclEv($12)|0);
  $13 = $43;
  $44 = $13;
  $45 = $8;
  $46 = ($44>>>0)>=($45>>>0);
  if (!($46)) {
   break;
  }
 }
 $47 = $13;
 $48 = $7;
 $49 = (__ZNKSt3__224uniform_int_distributionIiE10param_type1aEv($48)|0);
 $50 = (($47) + ($49))|0;
 $4 = $50;
 $51 = $4;
 STACKTOP = sp;return ($51|0);
}
function __ZNKSt3__224uniform_int_distributionIiE10param_type1bEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = ((($2)) + 4|0);
 $4 = load4($3);
 STACKTOP = sp;return ($4|0);
}
function __ZNKSt3__224uniform_int_distributionIiE10param_type1aEv($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = load4($2);
 STACKTOP = sp;return ($3|0);
}
function __ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEC2ERS2_j($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $3 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0, $46 = 0, $47 = 0;
 var $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $54 = 0, $55 = 0, $56 = 0, $57 = 0, $58 = 0, $59 = 0, $6 = 0, $60 = 0, $61 = 0, $62 = 0, $63 = 0, $64 = 0, $65 = 0;
 var $66 = 0, $67 = 0, $68 = 0, $69 = 0, $7 = 0, $70 = 0, $71 = 0, $72 = 0, $73 = 0, $74 = 0, $75 = 0, $76 = 0, $77 = 0, $78 = 0, $79 = 0, $8 = 0, $80 = 0, $81 = 0, $82 = 0, $83 = 0;
 var $84 = 0, $85 = 0, $86 = 0, $87 = 0, $88 = 0, $89 = 0, $9 = 0, $90 = 0, $91 = 0, $92 = 0, $93 = 0, $94 = 0, $95 = 0, $96 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = $4;
 store4($6,$7);
 $8 = ((($6)) + 4|0);
 $9 = $5;
 store4($8,$9);
 $10 = ((($6)) + 4|0);
 $11 = load4($10);
 $12 = (($11>>>0) / 32)&-1;
 $13 = ((($6)) + 4|0);
 $14 = load4($13);
 $15 = (($14>>>0) % 32)&-1;
 $16 = ($15|0)!=(0);
 $17 = $16&1;
 $18 = (($12) + ($17))|0;
 $19 = ((($6)) + 12|0);
 store4($19,$18);
 $20 = ((($6)) + 4|0);
 $21 = load4($20);
 $22 = ((($6)) + 12|0);
 $23 = load4($22);
 $24 = (($21>>>0) / ($23>>>0))&-1;
 $25 = ((($6)) + 8|0);
 store4($25,$24);
 $26 = ((($6)) + 20|0);
 store4($26,0);
 $27 = ((($6)) + 20|0);
 $28 = load4($27);
 $29 = (0 - ($28))|0;
 $30 = ((($6)) + 20|0);
 $31 = load4($30);
 $32 = ((($6)) + 12|0);
 $33 = load4($32);
 $34 = (($31>>>0) / ($33>>>0))&-1;
 $35 = ($29>>>0)>($34>>>0);
 do {
  if ($35) {
   $36 = ((($6)) + 12|0);
   $37 = load4($36);
   $38 = (($37) + 1)|0;
   store4($36,$38);
   $39 = ((($6)) + 4|0);
   $40 = load4($39);
   $41 = ((($6)) + 12|0);
   $42 = load4($41);
   $43 = (($40>>>0) / ($42>>>0))&-1;
   $44 = ((($6)) + 8|0);
   store4($44,$43);
   $45 = ((($6)) + 8|0);
   $46 = load4($45);
   $47 = ($46>>>0)<(32);
   if ($47) {
    $48 = ((($6)) + 8|0);
    $49 = load4($48);
    $50 = 0 >>> $49;
    $51 = ((($6)) + 8|0);
    $52 = load4($51);
    $53 = $50 << $52;
    $54 = ((($6)) + 20|0);
    store4($54,$53);
    break;
   } else {
    $55 = ((($6)) + 20|0);
    store4($55,0);
    break;
   }
  }
 } while(0);
 $56 = ((($6)) + 12|0);
 $57 = load4($56);
 $58 = ((($6)) + 4|0);
 $59 = load4($58);
 $60 = ((($6)) + 12|0);
 $61 = load4($60);
 $62 = (($59>>>0) % ($61>>>0))&-1;
 $63 = (($57) - ($62))|0;
 $64 = ((($6)) + 16|0);
 store4($64,$63);
 $65 = ((($6)) + 8|0);
 $66 = load4($65);
 $67 = ($66>>>0)<(31);
 if ($67) {
  $68 = ((($6)) + 8|0);
  $69 = load4($68);
  $70 = (($69) + 1)|0;
  $71 = 0 >>> $70;
  $72 = ((($6)) + 8|0);
  $73 = load4($72);
  $74 = (($73) + 1)|0;
  $75 = $71 << $74;
  $76 = ((($6)) + 24|0);
  store4($76,$75);
 } else {
  $77 = ((($6)) + 24|0);
  store4($77,0);
 }
 $78 = ((($6)) + 8|0);
 $79 = load4($78);
 $80 = ($79>>>0)>(0);
 if ($80) {
  $81 = ((($6)) + 8|0);
  $82 = load4($81);
  $83 = (32 - ($82))|0;
  $84 = -1 >>> $83;
  $86 = $84;
 } else {
  $86 = 0;
 }
 $85 = ((($6)) + 28|0);
 store4($85,$86);
 $87 = ((($6)) + 8|0);
 $88 = load4($87);
 $89 = ($88>>>0)<(31);
 if (!($89)) {
  $96 = -1;
  $95 = ((($6)) + 32|0);
  store4($95,$96);
  STACKTOP = sp;return;
 }
 $90 = ((($6)) + 8|0);
 $91 = load4($90);
 $92 = (($91) + 1)|0;
 $93 = (32 - ($92))|0;
 $94 = -1 >>> $93;
 $96 = $94;
 $95 = ((($6)) + 32|0);
 store4($95,$96);
 STACKTOP = sp;return;
}
function __ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEclEv($0) {
 $0 = $0|0;
 var $$byval_copy = 0, $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $$byval_copy = sp + 5|0;
 $2 = sp + 4|0;
 $1 = $0;
 $3 = $1;
 ; store1($$byval_copy,load1($2,1),1);
 $4 = (__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE($3,$$byval_copy)|0);
 STACKTOP = sp;return ($4|0);
}
function __ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE($0,$1) {
 $0 = $0|0;
 $1 = $1|0;
 var $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $2;
 $4 = load4($3);
 $5 = (__ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEclEv($4)|0);
 $6 = ((($3)) + 28|0);
 $7 = load4($6);
 $8 = $5 & $7;
 STACKTOP = sp;return ($8|0);
}
function __ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEclEv($0) {
 $0 = $0|0;
 var $1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $2 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0;
 var $28 = 0, $29 = 0, $3 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0;
 var $46 = 0, $47 = 0, $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $54 = 0, $55 = 0, $56 = 0, $57 = 0, $58 = 0, $59 = 0, $6 = 0, $60 = 0, $61 = 0, $62 = 0, $63 = 0;
 var $64 = 0, $65 = 0, $66 = 0, $67 = 0, $68 = 0, $69 = 0, $7 = 0, $70 = 0, $71 = 0, $72 = 0, $73 = 0, $74 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 48|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(48|0);
 $6 = $0;
 $12 = $6;
 $13 = ((($12)) + 2496|0);
 $14 = load4($13);
 $15 = (($14) + 1)|0;
 $16 = (($15>>>0) % 624)&-1;
 $7 = $16;
 $8 = 2147483647;
 $17 = ((($12)) + 2496|0);
 $18 = load4($17);
 $19 = (($12) + ($18<<2)|0);
 $20 = load4($19);
 $21 = $20 & -2147483648;
 $22 = $7;
 $23 = (($12) + ($22<<2)|0);
 $24 = load4($23);
 $25 = $24 & 2147483647;
 $26 = $21 | $25;
 $9 = $26;
 $27 = ((($12)) + 2496|0);
 $28 = load4($27);
 $29 = (($28) + 397)|0;
 $30 = (($29>>>0) % 624)&-1;
 $10 = $30;
 $31 = $10;
 $32 = (($12) + ($31<<2)|0);
 $33 = load4($32);
 $34 = $9;
 $5 = $34;
 $35 = $5;
 $36 = $35 >>> 1;
 $37 = $33 ^ $36;
 $38 = $9;
 $39 = $38 & 1;
 $40 = Math_imul(-1727483681, $39)|0;
 $41 = $37 ^ $40;
 $42 = ((($12)) + 2496|0);
 $43 = load4($42);
 $44 = (($12) + ($43<<2)|0);
 store4($44,$41);
 $45 = ((($12)) + 2496|0);
 $46 = load4($45);
 $47 = (($12) + ($46<<2)|0);
 $48 = load4($47);
 $49 = ((($12)) + 2496|0);
 $50 = load4($49);
 $51 = (($12) + ($50<<2)|0);
 $52 = load4($51);
 $1 = $52;
 $53 = $1;
 $54 = $53 >>> 11;
 $55 = $48 ^ $54;
 $11 = $55;
 $56 = $7;
 $57 = ((($12)) + 2496|0);
 store4($57,$56);
 $58 = $11;
 $2 = $58;
 $59 = $2;
 $60 = $59 << 7;
 $61 = $60 & -1658038656;
 $62 = $11;
 $63 = $62 ^ $61;
 $11 = $63;
 $64 = $11;
 $3 = $64;
 $65 = $3;
 $66 = $65 << 15;
 $67 = $66 & -272236544;
 $68 = $11;
 $69 = $68 ^ $67;
 $11 = $69;
 $70 = $11;
 $71 = $11;
 $4 = $71;
 $72 = $4;
 $73 = $72 >>> 18;
 $74 = $70 ^ $73;
 STACKTOP = sp;return ($74|0);
}
function __ZNSt3__224uniform_int_distributionIiE10param_typeC2Eii($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = $4;
 store4($6,$7);
 $8 = ((($6)) + 4|0);
 $9 = $5;
 store4($8,$9);
 STACKTOP = sp;return;
}
function __ZN9FastNoise24CalculateFractalBoundingEv($0) {
 $0 = $0|0;
 var $1 = 0, $10 = 0, $11 = 0, $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = 0, $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = 0, $2 = Math_fround(0), $20 = 0, $21 = Math_fround(0), $22 = Math_fround(0), $23 = 0, $3 = Math_fround(0), $4 = 0, $5 = 0, $6 = 0;
 var $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $5 = $1;
 $6 = ((($5)) + 1048|0);
 $7 = loadf($6);
 $2 = $7;
 $3 = Math_fround(1.0);
 $4 = 1;
 while(1) {
  $8 = $4;
  $9 = ((($5)) + 1040|0);
  $10 = load4($9);
  $11 = ($8|0)<($10|0);
  if (!($11)) {
   break;
  }
  $12 = $2;
  $13 = $3;
  $14 = Math_fround($13 + $12);
  $3 = $14;
  $15 = ((($5)) + 1048|0);
  $16 = loadf($15);
  $17 = $2;
  $18 = Math_fround($17 * $16);
  $2 = $18;
  $19 = $4;
  $20 = (($19) + 1)|0;
  $4 = $20;
 }
 $21 = $3;
 $22 = Math_fround(Math_fround(1.0) / $21);
 $23 = ((($5)) + 1056|0);
 storef($23,$22);
 STACKTOP = sp;return;
}
function __ZNK9FastNoise8GetNoiseEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $100 = Math_fround(0), $101 = Math_fround(0), $102 = Math_fround(0), $103 = Math_fround(0), $104 = Math_fround(0), $105 = Math_fround(0), $106 = Math_fround(0), $107 = Math_fround(0), $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0);
 var $22 = 0, $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = 0, $29 = 0, $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0);
 var $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = 0, $47 = 0, $48 = Math_fround(0), $49 = Math_fround(0), $5 = 0, $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = Math_fround(0), $58 = Math_fround(0), $59 = Math_fround(0);
 var $6 = Math_fround(0), $60 = Math_fround(0), $61 = Math_fround(0), $62 = Math_fround(0), $63 = Math_fround(0), $64 = 0, $65 = 0, $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = Math_fround(0), $7 = Math_fround(0), $70 = Math_fround(0), $71 = Math_fround(0), $72 = Math_fround(0), $73 = Math_fround(0), $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = Math_fround(0);
 var $78 = 0, $79 = 0, $8 = Math_fround(0), $80 = Math_fround(0), $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = Math_fround(0), $85 = Math_fround(0), $86 = Math_fround(0), $87 = Math_fround(0), $88 = Math_fround(0), $89 = Math_fround(0), $9 = 0, $90 = Math_fround(0), $91 = Math_fround(0), $92 = Math_fround(0), $93 = 0, $94 = 0, $95 = Math_fround(0);
 var $96 = Math_fround(0), $97 = Math_fround(0), $98 = Math_fround(0), $99 = Math_fround(0), $switch = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $5;
 $10 = ((($9)) + 1028|0);
 $11 = loadf($10);
 $12 = $6;
 $13 = Math_fround($12 * $11);
 $6 = $13;
 $14 = ((($9)) + 1028|0);
 $15 = loadf($14);
 $16 = $7;
 $17 = Math_fround($16 * $15);
 $7 = $17;
 $18 = ((($9)) + 1028|0);
 $19 = loadf($18);
 $20 = $8;
 $21 = Math_fround($20 * $19);
 $8 = $21;
 $22 = ((($9)) + 1036|0);
 $23 = load4($22);
 L1: do {
  switch ($23|0) {
  case 0:  {
   $24 = $6;
   $25 = $7;
   $26 = $8;
   $27 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($9,0,$24,$25,$26)));
   $4 = $27;
   break;
  }
  case 1:  {
   $28 = ((($9)) + 1052|0);
   $29 = load4($28);
   switch ($29|0) {
   case 0:  {
    $30 = $6;
    $31 = $7;
    $32 = $8;
    $33 = (Math_fround(__ZNK9FastNoise21SingleValueFractalFBMEfff($9,$30,$31,$32)));
    $4 = $33;
    break L1;
    break;
   }
   case 1:  {
    $34 = $6;
    $35 = $7;
    $36 = $8;
    $37 = (Math_fround(__ZNK9FastNoise24SingleValueFractalBillowEfff($9,$34,$35,$36)));
    $4 = $37;
    break L1;
    break;
   }
   case 2:  {
    $38 = $6;
    $39 = $7;
    $40 = $8;
    $41 = (Math_fround(__ZNK9FastNoise28SingleValueFractalRigidMultiEfff($9,$38,$39,$40)));
    $4 = $41;
    break L1;
    break;
   }
   default: {
    $4 = Math_fround(0.0);
    break L1;
   }
   }
   break;
  }
  case 2:  {
   $42 = $6;
   $43 = $7;
   $44 = $8;
   $45 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($9,0,$42,$43,$44)));
   $4 = $45;
   break;
  }
  case 3:  {
   $46 = ((($9)) + 1052|0);
   $47 = load4($46);
   switch ($47|0) {
   case 0:  {
    $48 = $6;
    $49 = $7;
    $50 = $8;
    $51 = (Math_fround(__ZNK9FastNoise22SinglePerlinFractalFBMEfff($9,$48,$49,$50)));
    $4 = $51;
    break L1;
    break;
   }
   case 1:  {
    $52 = $6;
    $53 = $7;
    $54 = $8;
    $55 = (Math_fround(__ZNK9FastNoise25SinglePerlinFractalBillowEfff($9,$52,$53,$54)));
    $4 = $55;
    break L1;
    break;
   }
   case 2:  {
    $56 = $6;
    $57 = $7;
    $58 = $8;
    $59 = (Math_fround(__ZNK9FastNoise29SinglePerlinFractalRigidMultiEfff($9,$56,$57,$58)));
    $4 = $59;
    break L1;
    break;
   }
   default: {
    $4 = Math_fround(0.0);
    break L1;
   }
   }
   break;
  }
  case 4:  {
   $60 = $6;
   $61 = $7;
   $62 = $8;
   $63 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($9,0,$60,$61,$62)));
   $4 = $63;
   break;
  }
  case 5:  {
   $64 = ((($9)) + 1052|0);
   $65 = load4($64);
   switch ($65|0) {
   case 0:  {
    $66 = $6;
    $67 = $7;
    $68 = $8;
    $69 = (Math_fround(__ZNK9FastNoise23SingleSimplexFractalFBMEfff($9,$66,$67,$68)));
    $4 = $69;
    break L1;
    break;
   }
   case 1:  {
    $70 = $6;
    $71 = $7;
    $72 = $8;
    $73 = (Math_fround(__ZNK9FastNoise26SingleSimplexFractalBillowEfff($9,$70,$71,$72)));
    $4 = $73;
    break L1;
    break;
   }
   case 2:  {
    $74 = $6;
    $75 = $7;
    $76 = $8;
    $77 = (Math_fround(__ZNK9FastNoise30SingleSimplexFractalRigidMultiEfff($9,$74,$75,$76)));
    $4 = $77;
    break L1;
    break;
   }
   default: {
    $4 = Math_fround(0.0);
    break L1;
   }
   }
   break;
  }
  case 6:  {
   $78 = ((($9)) + 1064|0);
   $79 = load4($78);
   $switch = ($79>>>0)<(3);
   $80 = $6;
   $81 = $7;
   $82 = $8;
   if ($switch) {
    $83 = (Math_fround(__ZNK9FastNoise14SingleCellularEfff($9,$80,$81,$82)));
    $4 = $83;
    break L1;
   } else {
    $84 = (Math_fround(__ZNK9FastNoise19SingleCellular2EdgeEfff($9,$80,$81,$82)));
    $4 = $84;
    break L1;
   }
   break;
  }
  case 7:  {
   $85 = $6;
   $86 = $7;
   $87 = $8;
   $88 = (Math_fround(__ZNK9FastNoise13GetWhiteNoiseEfff($9,$85,$86,$87)));
   $4 = $88;
   break;
  }
  case 8:  {
   $89 = $6;
   $90 = $7;
   $91 = $8;
   $92 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($9,0,$89,$90,$91)));
   $4 = $92;
   break;
  }
  case 9:  {
   $93 = ((($9)) + 1052|0);
   $94 = load4($93);
   switch ($94|0) {
   case 0:  {
    $95 = $6;
    $96 = $7;
    $97 = $8;
    $98 = (Math_fround(__ZNK9FastNoise21SingleCubicFractalFBMEfff($9,$95,$96,$97)));
    $4 = $98;
    break L1;
    break;
   }
   case 1:  {
    $99 = $6;
    $100 = $7;
    $101 = $8;
    $102 = (Math_fround(__ZNK9FastNoise24SingleCubicFractalBillowEfff($9,$99,$100,$101)));
    $4 = $102;
    break L1;
    break;
   }
   case 2:  {
    $103 = $6;
    $104 = $7;
    $105 = $8;
    $106 = (Math_fround(__ZNK9FastNoise28SingleCubicFractalRigidMultiEfff($9,$103,$104,$105)));
    $4 = $106;
    break L1;
    break;
   }
   default: {
    label = 29;
    break L1;
   }
   }
   break;
  }
  default: {
   label = 29;
  }
  }
 } while(0);
 if ((label|0) == 29) {
  $4 = Math_fround(0.0);
 }
 $107 = $4;
 STACKTOP = sp;return (Math_fround($107));
}
function __ZNK9FastNoise11SingleValueEhfff($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $10 = 0, $100 = 0, $101 = 0, $102 = 0, $103 = Math_fround(0), $104 = Math_fround(0), $105 = Math_fround(0), $106 = 0, $107 = 0, $108 = 0, $109 = 0, $11 = 0, $110 = Math_fround(0), $111 = 0, $112 = 0, $113 = 0, $114 = 0, $115 = Math_fround(0), $116 = Math_fround(0), $117 = Math_fround(0);
 var $118 = 0, $119 = 0, $12 = 0, $120 = 0, $121 = 0, $122 = Math_fround(0), $123 = 0, $124 = 0, $125 = 0, $126 = 0, $127 = Math_fround(0), $128 = Math_fround(0), $129 = Math_fround(0), $13 = 0, $130 = Math_fround(0), $131 = Math_fround(0), $132 = Math_fround(0), $133 = Math_fround(0), $134 = Math_fround(0), $135 = Math_fround(0);
 var $136 = Math_fround(0), $137 = Math_fround(0), $138 = Math_fround(0), $139 = Math_fround(0), $14 = 0, $140 = Math_fround(0), $141 = Math_fround(0), $15 = 0, $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = 0, $26 = Math_fround(0), $27 = 0;
 var $28 = Math_fround(0), $29 = 0, $30 = Math_fround(0), $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $40 = Math_fround(0), $41 = 0, $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = 0, $46 = Math_fround(0), $47 = Math_fround(0);
 var $48 = Math_fround(0), $49 = 0, $5 = 0, $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = 0, $54 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = Math_fround(0), $58 = 0, $59 = Math_fround(0), $6 = 0, $60 = Math_fround(0), $61 = Math_fround(0), $62 = Math_fround(0), $63 = 0, $64 = Math_fround(0), $65 = Math_fround(0);
 var $66 = Math_fround(0), $67 = Math_fround(0), $68 = 0, $69 = Math_fround(0), $7 = Math_fround(0), $70 = Math_fround(0), $71 = Math_fround(0), $72 = Math_fround(0), $73 = 0, $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = Math_fround(0), $78 = 0, $79 = Math_fround(0), $8 = Math_fround(0), $80 = Math_fround(0), $81 = Math_fround(0), $82 = 0, $83 = 0;
 var $84 = 0, $85 = 0, $86 = Math_fround(0), $87 = 0, $88 = 0, $89 = 0, $9 = Math_fround(0), $90 = 0, $91 = Math_fround(0), $92 = Math_fround(0), $93 = Math_fround(0), $94 = 0, $95 = 0, $96 = 0, $97 = 0, $98 = Math_fround(0), $99 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 80|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(80|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $25 = $5;
 $26 = $7;
 $27 = (__ZL9FastFloorf($26)|0);
 $10 = $27;
 $28 = $8;
 $29 = (__ZL9FastFloorf($28)|0);
 $11 = $29;
 $30 = $9;
 $31 = (__ZL9FastFloorf($30)|0);
 $12 = $31;
 $32 = $10;
 $33 = (($32) + 1)|0;
 $13 = $33;
 $34 = $11;
 $35 = (($34) + 1)|0;
 $14 = $35;
 $36 = $12;
 $37 = (($36) + 1)|0;
 $15 = $37;
 $38 = ((($25)) + 1032|0);
 $39 = load4($38);
 switch ($39|0) {
 case 0:  {
  $40 = $7;
  $41 = $10;
  $42 = (Math_fround(($41|0)));
  $43 = Math_fround($40 - $42);
  $16 = $43;
  $44 = $8;
  $45 = $11;
  $46 = (Math_fround(($45|0)));
  $47 = Math_fround($44 - $46);
  $17 = $47;
  $48 = $9;
  $49 = $12;
  $50 = (Math_fround(($49|0)));
  $51 = Math_fround($48 - $50);
  $18 = $51;
  break;
 }
 case 1:  {
  $52 = $7;
  $53 = $10;
  $54 = (Math_fround(($53|0)));
  $55 = Math_fround($52 - $54);
  $56 = (Math_fround(__ZL17InterpHermiteFuncf($55)));
  $16 = $56;
  $57 = $8;
  $58 = $11;
  $59 = (Math_fround(($58|0)));
  $60 = Math_fround($57 - $59);
  $61 = (Math_fround(__ZL17InterpHermiteFuncf($60)));
  $17 = $61;
  $62 = $9;
  $63 = $12;
  $64 = (Math_fround(($63|0)));
  $65 = Math_fround($62 - $64);
  $66 = (Math_fround(__ZL17InterpHermiteFuncf($65)));
  $18 = $66;
  break;
 }
 case 2:  {
  $67 = $7;
  $68 = $10;
  $69 = (Math_fround(($68|0)));
  $70 = Math_fround($67 - $69);
  $71 = (Math_fround(__ZL17InterpQuinticFuncf($70)));
  $16 = $71;
  $72 = $8;
  $73 = $11;
  $74 = (Math_fround(($73|0)));
  $75 = Math_fround($72 - $74);
  $76 = (Math_fround(__ZL17InterpQuinticFuncf($75)));
  $17 = $76;
  $77 = $9;
  $78 = $12;
  $79 = (Math_fround(($78|0)));
  $80 = Math_fround($77 - $79);
  $81 = (Math_fround(__ZL17InterpQuinticFuncf($80)));
  $18 = $81;
  break;
 }
 default: {
 }
 }
 $82 = $6;
 $83 = $10;
 $84 = $11;
 $85 = $12;
 $86 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$82,$83,$84,$85)));
 $87 = $6;
 $88 = $13;
 $89 = $11;
 $90 = $12;
 $91 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$87,$88,$89,$90)));
 $92 = $16;
 $93 = (Math_fround(__ZL4Lerpfff($86,$91,$92)));
 $19 = $93;
 $94 = $6;
 $95 = $10;
 $96 = $14;
 $97 = $12;
 $98 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$94,$95,$96,$97)));
 $99 = $6;
 $100 = $13;
 $101 = $14;
 $102 = $12;
 $103 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$99,$100,$101,$102)));
 $104 = $16;
 $105 = (Math_fround(__ZL4Lerpfff($98,$103,$104)));
 $20 = $105;
 $106 = $6;
 $107 = $10;
 $108 = $11;
 $109 = $15;
 $110 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$106,$107,$108,$109)));
 $111 = $6;
 $112 = $13;
 $113 = $11;
 $114 = $15;
 $115 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$111,$112,$113,$114)));
 $116 = $16;
 $117 = (Math_fround(__ZL4Lerpfff($110,$115,$116)));
 $21 = $117;
 $118 = $6;
 $119 = $10;
 $120 = $14;
 $121 = $15;
 $122 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$118,$119,$120,$121)));
 $123 = $6;
 $124 = $13;
 $125 = $14;
 $126 = $15;
 $127 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$123,$124,$125,$126)));
 $128 = $16;
 $129 = (Math_fround(__ZL4Lerpfff($122,$127,$128)));
 $22 = $129;
 $130 = $19;
 $131 = $20;
 $132 = $17;
 $133 = (Math_fround(__ZL4Lerpfff($130,$131,$132)));
 $23 = $133;
 $134 = $21;
 $135 = $22;
 $136 = $17;
 $137 = (Math_fround(__ZL4Lerpfff($134,$135,$136)));
 $24 = $137;
 $138 = $23;
 $139 = $24;
 $140 = $18;
 $141 = (Math_fround(__ZL4Lerpfff($138,$139,$140)));
 STACKTOP = sp;return (Math_fround($141));
}
function __ZNK9FastNoise21SingleValueFractalFBMEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = 0, $51 = Math_fround(0), $52 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($11,$12,$13,$14,$15)));
 $8 = $16;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $17 = $10;
  $18 = (($17) + 1)|0;
  $10 = $18;
  $19 = ((($11)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($11)) + 1044|0);
  $23 = loadf($22);
  $24 = $5;
  $25 = Math_fround($24 * $23);
  $5 = $25;
  $26 = ((($11)) + 1044|0);
  $27 = loadf($26);
  $28 = $6;
  $29 = Math_fround($28 * $27);
  $6 = $29;
  $30 = ((($11)) + 1044|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = ((($11)) + 1048|0);
  $35 = loadf($34);
  $36 = $9;
  $37 = Math_fround($36 * $35);
  $9 = $37;
  $38 = $10;
  $39 = (($11) + ($38)|0);
  $40 = load1($39);
  $41 = $5;
  $42 = $6;
  $43 = $7;
  $44 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($11,$40,$41,$42,$43)));
  $45 = $9;
  $46 = Math_fround($44 * $45);
  $47 = $8;
  $48 = Math_fround($47 + $46);
  $8 = $48;
 }
 $49 = $8;
 $50 = ((($11)) + 1056|0);
 $51 = loadf($50);
 $52 = Math_fround($49 * $51);
 STACKTOP = sp;return (Math_fround($52));
}
function __ZNK9FastNoise24SingleValueFractalBillowEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = 0, $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = Math_fround(0), $41 = 0, $42 = 0, $43 = 0, $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = 0, $57 = Math_fround(0), $58 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround($17 * Math_fround(2.0));
 $19 = Math_fround($18 - Math_fround(1.0));
 $8 = $19;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $20 = $10;
  $21 = (($20) + 1)|0;
  $10 = $21;
  $22 = ((($11)) + 1040|0);
  $23 = load4($22);
  $24 = ($21|0)<($23|0);
  if (!($24)) {
   break;
  }
  $25 = ((($11)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($11)) + 1044|0);
  $30 = loadf($29);
  $31 = $6;
  $32 = Math_fround($31 * $30);
  $6 = $32;
  $33 = ((($11)) + 1044|0);
  $34 = loadf($33);
  $35 = $7;
  $36 = Math_fround($35 * $34);
  $7 = $36;
  $37 = ((($11)) + 1048|0);
  $38 = loadf($37);
  $39 = $9;
  $40 = Math_fround($39 * $38);
  $9 = $40;
  $41 = $10;
  $42 = (($11) + ($41)|0);
  $43 = load1($42);
  $44 = $5;
  $45 = $6;
  $46 = $7;
  $47 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($11,$43,$44,$45,$46)));
  $48 = (Math_fround(__ZL7FastAbsf($47)));
  $49 = Math_fround($48 * Math_fround(2.0));
  $50 = Math_fround($49 - Math_fround(1.0));
  $51 = $9;
  $52 = Math_fround($50 * $51);
  $53 = $8;
  $54 = Math_fround($53 + $52);
  $8 = $54;
 }
 $55 = $8;
 $56 = ((($11)) + 1056|0);
 $57 = loadf($56);
 $58 = Math_fround($55 * $57);
 STACKTOP = sp;return (Math_fround($58));
}
function __ZNK9FastNoise28SingleValueFractalRigidMultiEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = 0, $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround(Math_fround(1.0) - $17);
 $8 = $18;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $19 = $10;
  $20 = (($19) + 1)|0;
  $10 = $20;
  $21 = ((($11)) + 1040|0);
  $22 = load4($21);
  $23 = ($20|0)<($22|0);
  if (!($23)) {
   break;
  }
  $24 = ((($11)) + 1044|0);
  $25 = loadf($24);
  $26 = $5;
  $27 = Math_fround($26 * $25);
  $5 = $27;
  $28 = ((($11)) + 1044|0);
  $29 = loadf($28);
  $30 = $6;
  $31 = Math_fround($30 * $29);
  $6 = $31;
  $32 = ((($11)) + 1044|0);
  $33 = loadf($32);
  $34 = $7;
  $35 = Math_fround($34 * $33);
  $7 = $35;
  $36 = ((($11)) + 1048|0);
  $37 = loadf($36);
  $38 = $9;
  $39 = Math_fround($38 * $37);
  $9 = $39;
  $40 = $10;
  $41 = (($11) + ($40)|0);
  $42 = load1($41);
  $43 = $5;
  $44 = $6;
  $45 = $7;
  $46 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($11,$42,$43,$44,$45)));
  $47 = (Math_fround(__ZL7FastAbsf($46)));
  $48 = Math_fround(Math_fround(1.0) - $47);
  $49 = $9;
  $50 = Math_fround($48 * $49);
  $51 = $8;
  $52 = Math_fround($51 - $50);
  $8 = $52;
 }
 $53 = $8;
 STACKTOP = sp;return (Math_fround($53));
}
function __ZNK9FastNoise12SinglePerlinEhfff($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $10 = 0, $100 = Math_fround(0), $101 = Math_fround(0), $102 = Math_fround(0), $103 = Math_fround(0), $104 = Math_fround(0), $105 = Math_fround(0), $106 = 0, $107 = 0, $108 = 0, $109 = 0, $11 = 0, $110 = Math_fround(0), $111 = Math_fround(0), $112 = Math_fround(0), $113 = Math_fround(0), $114 = 0, $115 = 0, $116 = 0, $117 = 0;
 var $118 = Math_fround(0), $119 = Math_fround(0), $12 = 0, $120 = Math_fround(0), $121 = Math_fround(0), $122 = Math_fround(0), $123 = Math_fround(0), $124 = 0, $125 = 0, $126 = 0, $127 = 0, $128 = Math_fround(0), $129 = Math_fround(0), $13 = 0, $130 = Math_fround(0), $131 = Math_fround(0), $132 = 0, $133 = 0, $134 = 0, $135 = 0;
 var $136 = Math_fround(0), $137 = Math_fround(0), $138 = Math_fround(0), $139 = Math_fround(0), $14 = 0, $140 = Math_fround(0), $141 = Math_fround(0), $142 = 0, $143 = 0, $144 = 0, $145 = 0, $146 = Math_fround(0), $147 = Math_fround(0), $148 = Math_fround(0), $149 = Math_fround(0), $15 = 0, $150 = 0, $151 = 0, $152 = 0, $153 = 0;
 var $154 = Math_fround(0), $155 = Math_fround(0), $156 = Math_fround(0), $157 = Math_fround(0), $158 = Math_fround(0), $159 = Math_fround(0), $16 = Math_fround(0), $160 = 0, $161 = 0, $162 = 0, $163 = 0, $164 = Math_fround(0), $165 = Math_fround(0), $166 = Math_fround(0), $167 = Math_fround(0), $168 = 0, $169 = 0, $17 = Math_fround(0), $170 = 0, $171 = 0;
 var $172 = Math_fround(0), $173 = Math_fround(0), $174 = Math_fround(0), $175 = Math_fround(0), $176 = Math_fround(0), $177 = Math_fround(0), $178 = Math_fround(0), $179 = Math_fround(0), $18 = Math_fround(0), $180 = Math_fround(0), $181 = Math_fround(0), $182 = Math_fround(0), $183 = Math_fround(0), $184 = Math_fround(0), $185 = Math_fround(0), $186 = Math_fround(0), $187 = Math_fround(0), $188 = Math_fround(0), $189 = Math_fround(0), $19 = Math_fround(0);
 var $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0), $30 = Math_fround(0), $31 = 0, $32 = Math_fround(0), $33 = 0, $34 = Math_fround(0), $35 = 0, $36 = Math_fround(0), $37 = 0, $38 = 0, $39 = 0;
 var $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0, $46 = Math_fround(0), $47 = 0, $48 = Math_fround(0), $49 = Math_fround(0), $5 = 0, $50 = Math_fround(0), $51 = 0, $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = 0, $56 = Math_fround(0), $57 = Math_fround(0), $58 = Math_fround(0);
 var $59 = 0, $6 = 0, $60 = Math_fround(0), $61 = Math_fround(0), $62 = Math_fround(0), $63 = Math_fround(0), $64 = 0, $65 = Math_fround(0), $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = 0, $7 = Math_fround(0), $70 = Math_fround(0), $71 = Math_fround(0), $72 = Math_fround(0), $73 = Math_fround(0), $74 = 0, $75 = Math_fround(0), $76 = Math_fround(0);
 var $77 = Math_fround(0), $78 = Math_fround(0), $79 = 0, $8 = Math_fround(0), $80 = Math_fround(0), $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = 0, $85 = Math_fround(0), $86 = Math_fround(0), $87 = Math_fround(0), $88 = Math_fround(0), $89 = 0, $9 = Math_fround(0), $90 = Math_fround(0), $91 = Math_fround(0), $92 = Math_fround(0), $93 = 0, $94 = Math_fround(0);
 var $95 = Math_fround(0), $96 = Math_fround(0), $97 = 0, $98 = Math_fround(0), $99 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 112|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(112|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $31 = $5;
 $32 = $7;
 $33 = (__ZL9FastFloorf($32)|0);
 $10 = $33;
 $34 = $8;
 $35 = (__ZL9FastFloorf($34)|0);
 $11 = $35;
 $36 = $9;
 $37 = (__ZL9FastFloorf($36)|0);
 $12 = $37;
 $38 = $10;
 $39 = (($38) + 1)|0;
 $13 = $39;
 $40 = $11;
 $41 = (($40) + 1)|0;
 $14 = $41;
 $42 = $12;
 $43 = (($42) + 1)|0;
 $15 = $43;
 $44 = ((($31)) + 1032|0);
 $45 = load4($44);
 switch ($45|0) {
 case 0:  {
  $46 = $7;
  $47 = $10;
  $48 = (Math_fround(($47|0)));
  $49 = Math_fround($46 - $48);
  $16 = $49;
  $50 = $8;
  $51 = $11;
  $52 = (Math_fround(($51|0)));
  $53 = Math_fround($50 - $52);
  $17 = $53;
  $54 = $9;
  $55 = $12;
  $56 = (Math_fround(($55|0)));
  $57 = Math_fround($54 - $56);
  $18 = $57;
  break;
 }
 case 1:  {
  $58 = $7;
  $59 = $10;
  $60 = (Math_fround(($59|0)));
  $61 = Math_fround($58 - $60);
  $62 = (Math_fround(__ZL17InterpHermiteFuncf($61)));
  $16 = $62;
  $63 = $8;
  $64 = $11;
  $65 = (Math_fround(($64|0)));
  $66 = Math_fround($63 - $65);
  $67 = (Math_fround(__ZL17InterpHermiteFuncf($66)));
  $17 = $67;
  $68 = $9;
  $69 = $12;
  $70 = (Math_fround(($69|0)));
  $71 = Math_fround($68 - $70);
  $72 = (Math_fround(__ZL17InterpHermiteFuncf($71)));
  $18 = $72;
  break;
 }
 case 2:  {
  $73 = $7;
  $74 = $10;
  $75 = (Math_fround(($74|0)));
  $76 = Math_fround($73 - $75);
  $77 = (Math_fround(__ZL17InterpQuinticFuncf($76)));
  $16 = $77;
  $78 = $8;
  $79 = $11;
  $80 = (Math_fround(($79|0)));
  $81 = Math_fround($78 - $80);
  $82 = (Math_fround(__ZL17InterpQuinticFuncf($81)));
  $17 = $82;
  $83 = $9;
  $84 = $12;
  $85 = (Math_fround(($84|0)));
  $86 = Math_fround($83 - $85);
  $87 = (Math_fround(__ZL17InterpQuinticFuncf($86)));
  $18 = $87;
  break;
 }
 default: {
 }
 }
 $88 = $7;
 $89 = $10;
 $90 = (Math_fround(($89|0)));
 $91 = Math_fround($88 - $90);
 $19 = $91;
 $92 = $8;
 $93 = $11;
 $94 = (Math_fround(($93|0)));
 $95 = Math_fround($92 - $94);
 $20 = $95;
 $96 = $9;
 $97 = $12;
 $98 = (Math_fround(($97|0)));
 $99 = Math_fround($96 - $98);
 $21 = $99;
 $100 = $19;
 $101 = Math_fround($100 - Math_fround(1.0));
 $22 = $101;
 $102 = $20;
 $103 = Math_fround($102 - Math_fround(1.0));
 $23 = $103;
 $104 = $21;
 $105 = Math_fround($104 - Math_fround(1.0));
 $24 = $105;
 $106 = $6;
 $107 = $10;
 $108 = $11;
 $109 = $12;
 $110 = $19;
 $111 = $20;
 $112 = $21;
 $113 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$106,$107,$108,$109,$110,$111,$112)));
 $114 = $6;
 $115 = $13;
 $116 = $11;
 $117 = $12;
 $118 = $22;
 $119 = $20;
 $120 = $21;
 $121 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$114,$115,$116,$117,$118,$119,$120)));
 $122 = $16;
 $123 = (Math_fround(__ZL4Lerpfff($113,$121,$122)));
 $25 = $123;
 $124 = $6;
 $125 = $10;
 $126 = $14;
 $127 = $12;
 $128 = $19;
 $129 = $23;
 $130 = $21;
 $131 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$124,$125,$126,$127,$128,$129,$130)));
 $132 = $6;
 $133 = $13;
 $134 = $14;
 $135 = $12;
 $136 = $22;
 $137 = $23;
 $138 = $21;
 $139 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$132,$133,$134,$135,$136,$137,$138)));
 $140 = $16;
 $141 = (Math_fround(__ZL4Lerpfff($131,$139,$140)));
 $26 = $141;
 $142 = $6;
 $143 = $10;
 $144 = $11;
 $145 = $15;
 $146 = $19;
 $147 = $20;
 $148 = $24;
 $149 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$142,$143,$144,$145,$146,$147,$148)));
 $150 = $6;
 $151 = $13;
 $152 = $11;
 $153 = $15;
 $154 = $22;
 $155 = $20;
 $156 = $24;
 $157 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$150,$151,$152,$153,$154,$155,$156)));
 $158 = $16;
 $159 = (Math_fround(__ZL4Lerpfff($149,$157,$158)));
 $27 = $159;
 $160 = $6;
 $161 = $10;
 $162 = $14;
 $163 = $15;
 $164 = $19;
 $165 = $23;
 $166 = $24;
 $167 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$160,$161,$162,$163,$164,$165,$166)));
 $168 = $6;
 $169 = $13;
 $170 = $14;
 $171 = $15;
 $172 = $22;
 $173 = $23;
 $174 = $24;
 $175 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($31,$168,$169,$170,$171,$172,$173,$174)));
 $176 = $16;
 $177 = (Math_fround(__ZL4Lerpfff($167,$175,$176)));
 $28 = $177;
 $178 = $25;
 $179 = $26;
 $180 = $17;
 $181 = (Math_fround(__ZL4Lerpfff($178,$179,$180)));
 $29 = $181;
 $182 = $27;
 $183 = $28;
 $184 = $17;
 $185 = (Math_fround(__ZL4Lerpfff($182,$183,$184)));
 $30 = $185;
 $186 = $29;
 $187 = $30;
 $188 = $18;
 $189 = (Math_fround(__ZL4Lerpfff($186,$187,$188)));
 STACKTOP = sp;return (Math_fround($189));
}
function __ZNK9FastNoise22SinglePerlinFractalFBMEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = 0, $51 = Math_fround(0), $52 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($11,$12,$13,$14,$15)));
 $8 = $16;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $17 = $10;
  $18 = (($17) + 1)|0;
  $10 = $18;
  $19 = ((($11)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($11)) + 1044|0);
  $23 = loadf($22);
  $24 = $5;
  $25 = Math_fround($24 * $23);
  $5 = $25;
  $26 = ((($11)) + 1044|0);
  $27 = loadf($26);
  $28 = $6;
  $29 = Math_fround($28 * $27);
  $6 = $29;
  $30 = ((($11)) + 1044|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = ((($11)) + 1048|0);
  $35 = loadf($34);
  $36 = $9;
  $37 = Math_fround($36 * $35);
  $9 = $37;
  $38 = $10;
  $39 = (($11) + ($38)|0);
  $40 = load1($39);
  $41 = $5;
  $42 = $6;
  $43 = $7;
  $44 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($11,$40,$41,$42,$43)));
  $45 = $9;
  $46 = Math_fround($44 * $45);
  $47 = $8;
  $48 = Math_fround($47 + $46);
  $8 = $48;
 }
 $49 = $8;
 $50 = ((($11)) + 1056|0);
 $51 = loadf($50);
 $52 = Math_fround($49 * $51);
 STACKTOP = sp;return (Math_fround($52));
}
function __ZNK9FastNoise25SinglePerlinFractalBillowEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = 0, $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = Math_fround(0), $41 = 0, $42 = 0, $43 = 0, $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = 0, $57 = Math_fround(0), $58 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround($17 * Math_fround(2.0));
 $19 = Math_fround($18 - Math_fround(1.0));
 $8 = $19;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $20 = $10;
  $21 = (($20) + 1)|0;
  $10 = $21;
  $22 = ((($11)) + 1040|0);
  $23 = load4($22);
  $24 = ($21|0)<($23|0);
  if (!($24)) {
   break;
  }
  $25 = ((($11)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($11)) + 1044|0);
  $30 = loadf($29);
  $31 = $6;
  $32 = Math_fround($31 * $30);
  $6 = $32;
  $33 = ((($11)) + 1044|0);
  $34 = loadf($33);
  $35 = $7;
  $36 = Math_fround($35 * $34);
  $7 = $36;
  $37 = ((($11)) + 1048|0);
  $38 = loadf($37);
  $39 = $9;
  $40 = Math_fround($39 * $38);
  $9 = $40;
  $41 = $10;
  $42 = (($11) + ($41)|0);
  $43 = load1($42);
  $44 = $5;
  $45 = $6;
  $46 = $7;
  $47 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($11,$43,$44,$45,$46)));
  $48 = (Math_fround(__ZL7FastAbsf($47)));
  $49 = Math_fround($48 * Math_fround(2.0));
  $50 = Math_fround($49 - Math_fround(1.0));
  $51 = $9;
  $52 = Math_fround($50 * $51);
  $53 = $8;
  $54 = Math_fround($53 + $52);
  $8 = $54;
 }
 $55 = $8;
 $56 = ((($11)) + 1056|0);
 $57 = loadf($56);
 $58 = Math_fround($55 * $57);
 STACKTOP = sp;return (Math_fround($58));
}
function __ZNK9FastNoise29SinglePerlinFractalRigidMultiEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = 0, $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround(Math_fround(1.0) - $17);
 $8 = $18;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $19 = $10;
  $20 = (($19) + 1)|0;
  $10 = $20;
  $21 = ((($11)) + 1040|0);
  $22 = load4($21);
  $23 = ($20|0)<($22|0);
  if (!($23)) {
   break;
  }
  $24 = ((($11)) + 1044|0);
  $25 = loadf($24);
  $26 = $5;
  $27 = Math_fround($26 * $25);
  $5 = $27;
  $28 = ((($11)) + 1044|0);
  $29 = loadf($28);
  $30 = $6;
  $31 = Math_fround($30 * $29);
  $6 = $31;
  $32 = ((($11)) + 1044|0);
  $33 = loadf($32);
  $34 = $7;
  $35 = Math_fround($34 * $33);
  $7 = $35;
  $36 = ((($11)) + 1048|0);
  $37 = loadf($36);
  $38 = $9;
  $39 = Math_fround($38 * $37);
  $9 = $39;
  $40 = $10;
  $41 = (($11) + ($40)|0);
  $42 = load1($41);
  $43 = $5;
  $44 = $6;
  $45 = $7;
  $46 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($11,$42,$43,$44,$45)));
  $47 = (Math_fround(__ZL7FastAbsf($46)));
  $48 = Math_fround(Math_fround(1.0) - $47);
  $49 = $9;
  $50 = Math_fround($48 * $49);
  $51 = $8;
  $52 = Math_fround($51 - $50);
  $8 = $52;
 }
 $53 = $8;
 STACKTOP = sp;return (Math_fround($53));
}
function __ZNK9FastNoise13SingleSimplexEhfff($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $10 = Math_fround(0), $100 = 0, $101 = Math_fround(0), $102 = Math_fround(0), $103 = Math_fround(0), $104 = Math_fround(0), $105 = 0, $106 = Math_fround(0), $107 = Math_fround(0), $108 = Math_fround(0), $109 = Math_fround(0), $11 = 0, $110 = 0, $111 = Math_fround(0), $112 = Math_fround(0), $113 = Math_fround(0), $114 = Math_fround(0), $115 = 0, $116 = Math_fround(0), $117 = Math_fround(0);
 var $118 = Math_fround(0), $119 = Math_fround(0), $12 = 0, $120 = 0, $121 = Math_fround(0), $122 = Math_fround(0), $123 = Math_fround(0), $124 = Math_fround(0), $125 = 0, $126 = Math_fround(0), $127 = Math_fround(0), $128 = Math_fround(0), $129 = Math_fround(0), $13 = 0, $130 = Math_fround(0), $131 = Math_fround(0), $132 = Math_fround(0), $133 = Math_fround(0), $134 = Math_fround(0), $135 = Math_fround(0);
 var $136 = Math_fround(0), $137 = Math_fround(0), $138 = Math_fround(0), $139 = Math_fround(0), $14 = Math_fround(0), $140 = Math_fround(0), $141 = Math_fround(0), $142 = Math_fround(0), $143 = Math_fround(0), $144 = Math_fround(0), $145 = Math_fround(0), $146 = Math_fround(0), $147 = Math_fround(0), $148 = Math_fround(0), $149 = Math_fround(0), $15 = Math_fround(0), $150 = Math_fround(0), $151 = 0, $152 = Math_fround(0), $153 = Math_fround(0);
 var $154 = Math_fround(0), $155 = Math_fround(0), $156 = Math_fround(0), $157 = Math_fround(0), $158 = 0, $159 = 0, $16 = Math_fround(0), $160 = 0, $161 = 0, $162 = Math_fround(0), $163 = Math_fround(0), $164 = Math_fround(0), $165 = Math_fround(0), $166 = Math_fround(0), $167 = Math_fround(0), $168 = Math_fround(0), $169 = Math_fround(0), $17 = Math_fround(0), $170 = Math_fround(0), $171 = Math_fround(0);
 var $172 = Math_fround(0), $173 = Math_fround(0), $174 = Math_fround(0), $175 = Math_fround(0), $176 = Math_fround(0), $177 = Math_fround(0), $178 = Math_fround(0), $179 = Math_fround(0), $18 = Math_fround(0), $180 = 0, $181 = Math_fround(0), $182 = Math_fround(0), $183 = Math_fround(0), $184 = Math_fround(0), $185 = Math_fround(0), $186 = Math_fround(0), $187 = 0, $188 = 0, $189 = 0, $19 = Math_fround(0);
 var $190 = 0, $191 = 0, $192 = 0, $193 = 0, $194 = 0, $195 = 0, $196 = 0, $197 = Math_fround(0), $198 = Math_fround(0), $199 = Math_fround(0), $20 = 0, $200 = Math_fround(0), $201 = Math_fround(0), $202 = Math_fround(0), $203 = Math_fround(0), $204 = Math_fround(0), $205 = Math_fround(0), $206 = Math_fround(0), $207 = Math_fround(0), $208 = Math_fround(0);
 var $209 = Math_fround(0), $21 = 0, $210 = Math_fround(0), $211 = Math_fround(0), $212 = Math_fround(0), $213 = Math_fround(0), $214 = Math_fround(0), $215 = 0, $216 = Math_fround(0), $217 = Math_fround(0), $218 = Math_fround(0), $219 = Math_fround(0), $22 = 0, $220 = Math_fround(0), $221 = Math_fround(0), $222 = 0, $223 = 0, $224 = 0, $225 = 0, $226 = 0;
 var $227 = 0, $228 = 0, $229 = 0, $23 = 0, $230 = 0, $231 = 0, $232 = Math_fround(0), $233 = Math_fround(0), $234 = Math_fround(0), $235 = Math_fround(0), $236 = Math_fround(0), $237 = Math_fround(0), $238 = Math_fround(0), $239 = Math_fround(0), $24 = 0, $240 = Math_fround(0), $241 = Math_fround(0), $242 = Math_fround(0), $243 = Math_fround(0), $244 = Math_fround(0);
 var $245 = Math_fround(0), $246 = Math_fround(0), $247 = Math_fround(0), $248 = Math_fround(0), $249 = Math_fround(0), $25 = 0, $250 = 0, $251 = Math_fround(0), $252 = Math_fround(0), $253 = Math_fround(0), $254 = Math_fround(0), $255 = Math_fround(0), $256 = Math_fround(0), $257 = 0, $258 = 0, $259 = 0, $26 = Math_fround(0), $260 = 0, $261 = 0, $262 = 0;
 var $263 = 0, $264 = Math_fround(0), $265 = Math_fround(0), $266 = Math_fround(0), $267 = Math_fround(0), $268 = Math_fround(0), $269 = Math_fround(0), $27 = Math_fround(0), $270 = Math_fround(0), $271 = Math_fround(0), $272 = Math_fround(0), $273 = Math_fround(0), $274 = Math_fround(0), $275 = Math_fround(0), $276 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0), $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0);
 var $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = 0, $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0), $49 = 0, $5 = 0, $50 = Math_fround(0), $51 = Math_fround(0);
 var $52 = Math_fround(0), $53 = 0, $54 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = 0, $58 = 0, $59 = 0, $6 = 0, $60 = 0, $61 = 0, $62 = 0, $63 = Math_fround(0), $64 = Math_fround(0), $65 = 0, $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = 0, $7 = Math_fround(0);
 var $70 = Math_fround(0), $71 = Math_fround(0), $72 = Math_fround(0), $73 = 0, $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = Math_fround(0), $78 = Math_fround(0), $79 = Math_fround(0), $8 = Math_fround(0), $80 = Math_fround(0), $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = Math_fround(0), $85 = Math_fround(0), $86 = Math_fround(0), $87 = Math_fround(0), $88 = 0;
 var $89 = Math_fround(0), $9 = Math_fround(0), $90 = Math_fround(0), $91 = 0, $92 = Math_fround(0), $93 = Math_fround(0), $94 = 0, $95 = 0, $96 = Math_fround(0), $97 = Math_fround(0), $98 = 0, $99 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 144|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(144|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $39 = $5;
 $40 = $7;
 $41 = $8;
 $42 = Math_fround($40 + $41);
 $43 = $9;
 $44 = Math_fround($42 + $43);
 $45 = Math_fround($44 * Math_fround(0.333333343));
 $10 = $45;
 $46 = $7;
 $47 = $10;
 $48 = Math_fround($46 + $47);
 $49 = (__ZL9FastFloorf($48)|0);
 $11 = $49;
 $50 = $8;
 $51 = $10;
 $52 = Math_fround($50 + $51);
 $53 = (__ZL9FastFloorf($52)|0);
 $12 = $53;
 $54 = $9;
 $55 = $10;
 $56 = Math_fround($54 + $55);
 $57 = (__ZL9FastFloorf($56)|0);
 $13 = $57;
 $58 = $11;
 $59 = $12;
 $60 = (($58) + ($59))|0;
 $61 = $13;
 $62 = (($60) + ($61))|0;
 $63 = (Math_fround(($62|0)));
 $64 = Math_fround($63 * Math_fround(0.166666672));
 $10 = $64;
 $65 = $11;
 $66 = (Math_fround(($65|0)));
 $67 = $10;
 $68 = Math_fround($66 - $67);
 $14 = $68;
 $69 = $12;
 $70 = (Math_fround(($69|0)));
 $71 = $10;
 $72 = Math_fround($70 - $71);
 $15 = $72;
 $73 = $13;
 $74 = (Math_fround(($73|0)));
 $75 = $10;
 $76 = Math_fround($74 - $75);
 $16 = $76;
 $77 = $7;
 $78 = $14;
 $79 = Math_fround($77 - $78);
 $17 = $79;
 $80 = $8;
 $81 = $15;
 $82 = Math_fround($80 - $81);
 $18 = $82;
 $83 = $9;
 $84 = $16;
 $85 = Math_fround($83 - $84);
 $19 = $85;
 $86 = $17;
 $87 = $18;
 $88 = $86 >= $87;
 $89 = $18;
 $90 = $19;
 do {
  if ($88) {
   $91 = $89 >= $90;
   if ($91) {
    $20 = 1;
    $21 = 0;
    $22 = 0;
    $23 = 1;
    $24 = 1;
    $25 = 0;
    break;
   }
   $92 = $17;
   $93 = $19;
   $94 = $92 >= $93;
   if ($94) {
    $20 = 1;
    $21 = 0;
    $22 = 0;
    $23 = 1;
    $24 = 0;
    $25 = 1;
    break;
   } else {
    $20 = 0;
    $21 = 0;
    $22 = 1;
    $23 = 1;
    $24 = 0;
    $25 = 1;
    break;
   }
  } else {
   $95 = $89 < $90;
   if ($95) {
    $20 = 0;
    $21 = 0;
    $22 = 1;
    $23 = 0;
    $24 = 1;
    $25 = 1;
    break;
   }
   $96 = $17;
   $97 = $19;
   $98 = $96 < $97;
   $20 = 0;
   $21 = 1;
   $22 = 0;
   if ($98) {
    $23 = 0;
    $24 = 1;
    $25 = 1;
    break;
   } else {
    $23 = 1;
    $24 = 1;
    $25 = 0;
    break;
   }
  }
 } while(0);
 $99 = $17;
 $100 = $20;
 $101 = (Math_fround(($100|0)));
 $102 = Math_fround($99 - $101);
 $103 = Math_fround($102 + Math_fround(0.166666672));
 $26 = $103;
 $104 = $18;
 $105 = $21;
 $106 = (Math_fround(($105|0)));
 $107 = Math_fround($104 - $106);
 $108 = Math_fround($107 + Math_fround(0.166666672));
 $27 = $108;
 $109 = $19;
 $110 = $22;
 $111 = (Math_fround(($110|0)));
 $112 = Math_fround($109 - $111);
 $113 = Math_fround($112 + Math_fround(0.166666672));
 $28 = $113;
 $114 = $17;
 $115 = $23;
 $116 = (Math_fround(($115|0)));
 $117 = Math_fround($114 - $116);
 $118 = Math_fround($117 + Math_fround(0.333333343));
 $29 = $118;
 $119 = $18;
 $120 = $24;
 $121 = (Math_fround(($120|0)));
 $122 = Math_fround($119 - $121);
 $123 = Math_fround($122 + Math_fround(0.333333343));
 $30 = $123;
 $124 = $19;
 $125 = $25;
 $126 = (Math_fround(($125|0)));
 $127 = Math_fround($124 - $126);
 $128 = Math_fround($127 + Math_fround(0.333333343));
 $31 = $128;
 $129 = $17;
 $130 = Math_fround($129 - Math_fround(1.0));
 $131 = Math_fround($130 + Math_fround(0.5));
 $32 = $131;
 $132 = $18;
 $133 = Math_fround($132 - Math_fround(1.0));
 $134 = Math_fround($133 + Math_fround(0.5));
 $33 = $134;
 $135 = $19;
 $136 = Math_fround($135 - Math_fround(1.0));
 $137 = Math_fround($136 + Math_fround(0.5));
 $34 = $137;
 $138 = $17;
 $139 = $17;
 $140 = Math_fround($138 * $139);
 $141 = Math_fround(Math_fround(0.600000024) - $140);
 $142 = $18;
 $143 = $18;
 $144 = Math_fround($142 * $143);
 $145 = Math_fround($141 - $144);
 $146 = $19;
 $147 = $19;
 $148 = Math_fround($146 * $147);
 $149 = Math_fround($145 - $148);
 $10 = $149;
 $150 = $10;
 $151 = $150 < Math_fround(0.0);
 if ($151) {
  $35 = Math_fround(0.0);
 } else {
  $152 = $10;
  $153 = $10;
  $154 = Math_fround($153 * $152);
  $10 = $154;
  $155 = $10;
  $156 = $10;
  $157 = Math_fround($155 * $156);
  $158 = $6;
  $159 = $11;
  $160 = $12;
  $161 = $13;
  $162 = $17;
  $163 = $18;
  $164 = $19;
  $165 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($39,$158,$159,$160,$161,$162,$163,$164)));
  $166 = Math_fround($157 * $165);
  $35 = $166;
 }
 $167 = $26;
 $168 = $26;
 $169 = Math_fround($167 * $168);
 $170 = Math_fround(Math_fround(0.600000024) - $169);
 $171 = $27;
 $172 = $27;
 $173 = Math_fround($171 * $172);
 $174 = Math_fround($170 - $173);
 $175 = $28;
 $176 = $28;
 $177 = Math_fround($175 * $176);
 $178 = Math_fround($174 - $177);
 $10 = $178;
 $179 = $10;
 $180 = $179 < Math_fround(0.0);
 if ($180) {
  $36 = Math_fround(0.0);
 } else {
  $181 = $10;
  $182 = $10;
  $183 = Math_fround($182 * $181);
  $10 = $183;
  $184 = $10;
  $185 = $10;
  $186 = Math_fround($184 * $185);
  $187 = $6;
  $188 = $11;
  $189 = $20;
  $190 = (($188) + ($189))|0;
  $191 = $12;
  $192 = $21;
  $193 = (($191) + ($192))|0;
  $194 = $13;
  $195 = $22;
  $196 = (($194) + ($195))|0;
  $197 = $26;
  $198 = $27;
  $199 = $28;
  $200 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($39,$187,$190,$193,$196,$197,$198,$199)));
  $201 = Math_fround($186 * $200);
  $36 = $201;
 }
 $202 = $29;
 $203 = $29;
 $204 = Math_fround($202 * $203);
 $205 = Math_fround(Math_fround(0.600000024) - $204);
 $206 = $30;
 $207 = $30;
 $208 = Math_fround($206 * $207);
 $209 = Math_fround($205 - $208);
 $210 = $31;
 $211 = $31;
 $212 = Math_fround($210 * $211);
 $213 = Math_fround($209 - $212);
 $10 = $213;
 $214 = $10;
 $215 = $214 < Math_fround(0.0);
 if ($215) {
  $37 = Math_fround(0.0);
 } else {
  $216 = $10;
  $217 = $10;
  $218 = Math_fround($217 * $216);
  $10 = $218;
  $219 = $10;
  $220 = $10;
  $221 = Math_fround($219 * $220);
  $222 = $6;
  $223 = $11;
  $224 = $23;
  $225 = (($223) + ($224))|0;
  $226 = $12;
  $227 = $24;
  $228 = (($226) + ($227))|0;
  $229 = $13;
  $230 = $25;
  $231 = (($229) + ($230))|0;
  $232 = $29;
  $233 = $30;
  $234 = $31;
  $235 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($39,$222,$225,$228,$231,$232,$233,$234)));
  $236 = Math_fround($221 * $235);
  $37 = $236;
 }
 $237 = $32;
 $238 = $32;
 $239 = Math_fround($237 * $238);
 $240 = Math_fround(Math_fround(0.600000024) - $239);
 $241 = $33;
 $242 = $33;
 $243 = Math_fround($241 * $242);
 $244 = Math_fround($240 - $243);
 $245 = $34;
 $246 = $34;
 $247 = Math_fround($245 * $246);
 $248 = Math_fround($244 - $247);
 $10 = $248;
 $249 = $10;
 $250 = $249 < Math_fround(0.0);
 if ($250) {
  $38 = Math_fround(0.0);
  $269 = $35;
  $270 = $36;
  $271 = Math_fround($269 + $270);
  $272 = $37;
  $273 = Math_fround($271 + $272);
  $274 = $38;
  $275 = Math_fround($273 + $274);
  $276 = Math_fround(Math_fround(32.0) * $275);
  STACKTOP = sp;return (Math_fround($276));
 } else {
  $251 = $10;
  $252 = $10;
  $253 = Math_fround($252 * $251);
  $10 = $253;
  $254 = $10;
  $255 = $10;
  $256 = Math_fround($254 * $255);
  $257 = $6;
  $258 = $11;
  $259 = (($258) + 1)|0;
  $260 = $12;
  $261 = (($260) + 1)|0;
  $262 = $13;
  $263 = (($262) + 1)|0;
  $264 = $32;
  $265 = $33;
  $266 = $34;
  $267 = (Math_fround(__ZNK9FastNoise11GradCoord3DEhiiifff($39,$257,$259,$261,$263,$264,$265,$266)));
  $268 = Math_fround($256 * $267);
  $38 = $268;
  $269 = $35;
  $270 = $36;
  $271 = Math_fround($269 + $270);
  $272 = $37;
  $273 = Math_fround($271 + $272);
  $274 = $38;
  $275 = Math_fround($273 + $274);
  $276 = Math_fround(Math_fround(32.0) * $275);
  STACKTOP = sp;return (Math_fround($276));
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise23SingleSimplexFractalFBMEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = 0, $51 = Math_fround(0), $52 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($11,$12,$13,$14,$15)));
 $8 = $16;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $17 = $10;
  $18 = (($17) + 1)|0;
  $10 = $18;
  $19 = ((($11)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($11)) + 1044|0);
  $23 = loadf($22);
  $24 = $5;
  $25 = Math_fround($24 * $23);
  $5 = $25;
  $26 = ((($11)) + 1044|0);
  $27 = loadf($26);
  $28 = $6;
  $29 = Math_fround($28 * $27);
  $6 = $29;
  $30 = ((($11)) + 1044|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = ((($11)) + 1048|0);
  $35 = loadf($34);
  $36 = $9;
  $37 = Math_fround($36 * $35);
  $9 = $37;
  $38 = $10;
  $39 = (($11) + ($38)|0);
  $40 = load1($39);
  $41 = $5;
  $42 = $6;
  $43 = $7;
  $44 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($11,$40,$41,$42,$43)));
  $45 = $9;
  $46 = Math_fround($44 * $45);
  $47 = $8;
  $48 = Math_fround($47 + $46);
  $8 = $48;
 }
 $49 = $8;
 $50 = ((($11)) + 1056|0);
 $51 = loadf($50);
 $52 = Math_fround($49 * $51);
 STACKTOP = sp;return (Math_fround($52));
}
function __ZNK9FastNoise26SingleSimplexFractalBillowEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = 0, $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = Math_fround(0), $41 = 0, $42 = 0, $43 = 0, $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = 0, $57 = Math_fround(0), $58 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround($17 * Math_fround(2.0));
 $19 = Math_fround($18 - Math_fround(1.0));
 $8 = $19;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $20 = $10;
  $21 = (($20) + 1)|0;
  $10 = $21;
  $22 = ((($11)) + 1040|0);
  $23 = load4($22);
  $24 = ($21|0)<($23|0);
  if (!($24)) {
   break;
  }
  $25 = ((($11)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($11)) + 1044|0);
  $30 = loadf($29);
  $31 = $6;
  $32 = Math_fround($31 * $30);
  $6 = $32;
  $33 = ((($11)) + 1044|0);
  $34 = loadf($33);
  $35 = $7;
  $36 = Math_fround($35 * $34);
  $7 = $36;
  $37 = ((($11)) + 1048|0);
  $38 = loadf($37);
  $39 = $9;
  $40 = Math_fround($39 * $38);
  $9 = $40;
  $41 = $10;
  $42 = (($11) + ($41)|0);
  $43 = load1($42);
  $44 = $5;
  $45 = $6;
  $46 = $7;
  $47 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($11,$43,$44,$45,$46)));
  $48 = (Math_fround(__ZL7FastAbsf($47)));
  $49 = Math_fround($48 * Math_fround(2.0));
  $50 = Math_fround($49 - Math_fround(1.0));
  $51 = $9;
  $52 = Math_fround($50 * $51);
  $53 = $8;
  $54 = Math_fround($53 + $52);
  $8 = $54;
 }
 $55 = $8;
 $56 = ((($11)) + 1056|0);
 $57 = loadf($56);
 $58 = Math_fround($55 * $57);
 STACKTOP = sp;return (Math_fround($58));
}
function __ZNK9FastNoise30SingleSimplexFractalRigidMultiEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = 0, $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround(Math_fround(1.0) - $17);
 $8 = $18;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $19 = $10;
  $20 = (($19) + 1)|0;
  $10 = $20;
  $21 = ((($11)) + 1040|0);
  $22 = load4($21);
  $23 = ($20|0)<($22|0);
  if (!($23)) {
   break;
  }
  $24 = ((($11)) + 1044|0);
  $25 = loadf($24);
  $26 = $5;
  $27 = Math_fround($26 * $25);
  $5 = $27;
  $28 = ((($11)) + 1044|0);
  $29 = loadf($28);
  $30 = $6;
  $31 = Math_fround($30 * $29);
  $6 = $31;
  $32 = ((($11)) + 1044|0);
  $33 = loadf($32);
  $34 = $7;
  $35 = Math_fround($34 * $33);
  $7 = $35;
  $36 = ((($11)) + 1048|0);
  $37 = loadf($36);
  $38 = $9;
  $39 = Math_fround($38 * $37);
  $9 = $39;
  $40 = $10;
  $41 = (($11) + ($40)|0);
  $42 = load1($41);
  $43 = $5;
  $44 = $6;
  $45 = $7;
  $46 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($11,$42,$43,$44,$45)));
  $47 = (Math_fround(__ZL7FastAbsf($46)));
  $48 = Math_fround(Math_fround(1.0) - $47);
  $49 = $9;
  $50 = Math_fround($48 * $49);
  $51 = $8;
  $52 = Math_fround($51 - $50);
  $8 = $52;
 }
 $53 = $8;
 STACKTOP = sp;return (Math_fround($53));
}
function __ZNK9FastNoise14SingleCellularEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $100 = 0, $101 = 0, $102 = 0, $103 = Math_fround(0), $104 = 0, $105 = Math_fround(0), $106 = Math_fround(0), $107 = Math_fround(0), $108 = Math_fround(0), $109 = Math_fround(0), $11 = 0, $110 = Math_fround(0), $111 = Math_fround(0), $112 = Math_fround(0), $113 = Math_fround(0), $114 = Math_fround(0), $115 = Math_fround(0), $116 = Math_fround(0), $117 = Math_fround(0);
 var $118 = Math_fround(0), $119 = Math_fround(0), $12 = Math_fround(0), $120 = Math_fround(0), $121 = 0, $122 = Math_fround(0), $123 = 0, $124 = 0, $125 = 0, $126 = 0, $127 = 0, $128 = 0, $129 = 0, $13 = 0, $130 = 0, $131 = 0, $132 = 0, $133 = 0, $134 = 0, $135 = 0;
 var $136 = 0, $137 = 0, $138 = 0, $139 = 0, $14 = 0, $140 = 0, $141 = 0, $142 = 0, $143 = 0, $144 = 0, $145 = 0, $146 = 0, $147 = 0, $148 = 0, $149 = 0, $15 = 0, $150 = 0, $151 = 0, $152 = 0, $153 = 0;
 var $154 = 0, $155 = Math_fround(0), $156 = Math_fround(0), $157 = Math_fround(0), $158 = 0, $159 = 0, $16 = 0, $160 = 0, $161 = Math_fround(0), $162 = 0, $163 = Math_fround(0), $164 = Math_fround(0), $165 = Math_fround(0), $166 = 0, $167 = Math_fround(0), $168 = Math_fround(0), $169 = Math_fround(0), $17 = 0, $170 = 0, $171 = 0;
 var $172 = 0, $173 = Math_fround(0), $174 = 0, $175 = Math_fround(0), $176 = Math_fround(0), $177 = Math_fround(0), $178 = 0, $179 = Math_fround(0), $18 = 0, $180 = Math_fround(0), $181 = Math_fround(0), $182 = 0, $183 = 0, $184 = 0, $185 = Math_fround(0), $186 = 0, $187 = Math_fround(0), $188 = Math_fround(0), $189 = Math_fround(0), $19 = 0;
 var $190 = Math_fround(0), $191 = Math_fround(0), $192 = Math_fround(0), $193 = Math_fround(0), $194 = Math_fround(0), $195 = Math_fround(0), $196 = Math_fround(0), $197 = Math_fround(0), $198 = Math_fround(0), $199 = Math_fround(0), $20 = Math_fround(0), $200 = 0, $201 = Math_fround(0), $202 = 0, $203 = 0, $204 = 0, $205 = 0, $206 = 0, $207 = 0, $208 = 0;
 var $209 = 0, $21 = Math_fround(0), $210 = 0, $211 = 0, $212 = 0, $213 = 0, $214 = 0, $215 = 0, $216 = 0, $217 = 0, $218 = 0, $219 = 0, $22 = Math_fround(0), $220 = 0, $221 = 0, $222 = 0, $223 = 0, $224 = 0, $225 = 0, $226 = 0;
 var $227 = 0, $228 = 0, $229 = 0, $23 = Math_fround(0), $230 = 0, $231 = 0, $232 = 0, $233 = 0, $234 = Math_fround(0), $235 = Math_fround(0), $236 = Math_fround(0), $237 = 0, $238 = 0, $239 = 0, $24 = 0, $240 = Math_fround(0), $241 = 0, $242 = Math_fround(0), $243 = Math_fround(0), $244 = Math_fround(0);
 var $245 = 0, $246 = Math_fround(0), $247 = Math_fround(0), $248 = Math_fround(0), $249 = 0, $25 = 0, $250 = 0, $251 = 0, $252 = Math_fround(0), $253 = 0, $254 = Math_fround(0), $255 = Math_fround(0), $256 = Math_fround(0), $257 = 0, $258 = Math_fround(0), $259 = Math_fround(0), $26 = 0, $260 = Math_fround(0), $261 = 0, $262 = 0;
 var $263 = 0, $264 = Math_fround(0), $265 = 0, $266 = Math_fround(0), $267 = Math_fround(0), $268 = Math_fround(0), $269 = Math_fround(0), $27 = 0, $270 = Math_fround(0), $271 = Math_fround(0), $272 = Math_fround(0), $273 = Math_fround(0), $274 = Math_fround(0), $275 = Math_fround(0), $276 = Math_fround(0), $277 = Math_fround(0), $278 = Math_fround(0), $279 = Math_fround(0), $28 = Math_fround(0), $280 = Math_fround(0);
 var $281 = Math_fround(0), $282 = Math_fround(0), $283 = Math_fround(0), $284 = Math_fround(0), $285 = Math_fround(0), $286 = Math_fround(0), $287 = Math_fround(0), $288 = Math_fround(0), $289 = Math_fround(0), $29 = Math_fround(0), $290 = Math_fround(0), $291 = 0, $292 = Math_fround(0), $293 = 0, $294 = 0, $295 = 0, $296 = 0, $297 = 0, $298 = 0, $299 = 0;
 var $30 = Math_fround(0), $300 = 0, $301 = 0, $302 = 0, $303 = 0, $304 = 0, $305 = 0, $306 = 0, $307 = 0, $308 = 0, $309 = Math_fround(0), $31 = Math_fround(0), $310 = 0, $311 = 0, $312 = 0, $313 = 0, $314 = 0, $315 = 0, $316 = 0, $317 = 0;
 var $318 = 0, $319 = 0, $32 = 0, $320 = Math_fround(0), $321 = 0, $322 = 0, $323 = 0, $324 = Math_fround(0), $325 = 0, $326 = Math_fround(0), $327 = Math_fround(0), $328 = Math_fround(0), $329 = 0, $33 = 0, $330 = Math_fround(0), $331 = 0, $332 = 0, $333 = 0, $334 = Math_fround(0), $335 = 0;
 var $336 = Math_fround(0), $337 = Math_fround(0), $338 = Math_fround(0), $339 = 0, $34 = 0, $340 = Math_fround(0), $341 = 0, $342 = 0, $343 = 0, $344 = Math_fround(0), $345 = 0, $346 = Math_fround(0), $347 = Math_fround(0), $348 = Math_fround(0), $349 = Math_fround(0), $35 = 0, $350 = Math_fround(0), $351 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0);
 var $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = 0, $41 = 0, $42 = Math_fround(0), $43 = 0, $44 = Math_fround(0), $45 = 0, $46 = Math_fround(0), $47 = 0, $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $54 = 0, $55 = 0;
 var $56 = 0, $57 = 0, $58 = 0, $59 = 0, $6 = Math_fround(0), $60 = 0, $61 = 0, $62 = 0, $63 = 0, $64 = 0, $65 = 0, $66 = 0, $67 = 0, $68 = 0, $69 = 0, $7 = Math_fround(0), $70 = 0, $71 = 0, $72 = 0, $73 = Math_fround(0);
 var $74 = Math_fround(0), $75 = Math_fround(0), $76 = 0, $77 = 0, $78 = 0, $79 = Math_fround(0), $8 = Math_fround(0), $80 = 0, $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = 0, $85 = Math_fround(0), $86 = Math_fround(0), $87 = Math_fround(0), $88 = 0, $89 = 0, $9 = 0, $90 = 0, $91 = Math_fround(0);
 var $92 = 0, $93 = Math_fround(0), $94 = Math_fround(0), $95 = Math_fround(0), $96 = 0, $97 = Math_fround(0), $98 = Math_fround(0), $99 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 144|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(144|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $41 = $5;
 $42 = $6;
 $43 = (__ZL9FastRoundf($42)|0);
 $9 = $43;
 $44 = $7;
 $45 = (__ZL9FastRoundf($44)|0);
 $10 = $45;
 $46 = $8;
 $47 = (__ZL9FastRoundf($46)|0);
 $11 = $47;
 $12 = Math_fround(999999.0);
 $48 = ((($41)) + 1060|0);
 $49 = load4($48);
 L1: do {
  switch ($49|0) {
  case 0:  {
   $50 = $9;
   $51 = (($50) - 1)|0;
   $16 = $51;
   while(1) {
    $52 = $16;
    $53 = $9;
    $54 = (($53) + 1)|0;
    $55 = ($52|0)<=($54|0);
    if (!($55)) {
     break L1;
    }
    $56 = $10;
    $57 = (($56) - 1)|0;
    $17 = $57;
    while(1) {
     $58 = $17;
     $59 = $10;
     $60 = (($59) + 1)|0;
     $61 = ($58|0)<=($60|0);
     if (!($61)) {
      break;
     }
     $62 = $11;
     $63 = (($62) - 1)|0;
     $18 = $63;
     while(1) {
      $64 = $18;
      $65 = $11;
      $66 = (($65) + 1)|0;
      $67 = ($64|0)<=($66|0);
      if (!($67)) {
       break;
      }
      $68 = $16;
      $69 = $17;
      $70 = $18;
      $71 = (__ZNK9FastNoise11Index3D_256Ehiii($41,0,$68,$69,$70)|0);
      $19 = $71;
      $72 = $16;
      $73 = (Math_fround(($72|0)));
      $74 = $6;
      $75 = Math_fround($73 - $74);
      $76 = $19;
      $77 = $76&255;
      $78 = (2712 + ($77<<2)|0);
      $79 = loadf($78);
      $80 = ((($41)) + 1080|0);
      $81 = loadf($80);
      $82 = Math_fround($79 * $81);
      $83 = Math_fround($75 + $82);
      $20 = $83;
      $84 = $17;
      $85 = (Math_fround(($84|0)));
      $86 = $7;
      $87 = Math_fround($85 - $86);
      $88 = $19;
      $89 = $88&255;
      $90 = (3736 + ($89<<2)|0);
      $91 = loadf($90);
      $92 = ((($41)) + 1080|0);
      $93 = loadf($92);
      $94 = Math_fround($91 * $93);
      $95 = Math_fround($87 + $94);
      $21 = $95;
      $96 = $18;
      $97 = (Math_fround(($96|0)));
      $98 = $8;
      $99 = Math_fround($97 - $98);
      $100 = $19;
      $101 = $100&255;
      $102 = (4760 + ($101<<2)|0);
      $103 = loadf($102);
      $104 = ((($41)) + 1080|0);
      $105 = loadf($104);
      $106 = Math_fround($103 * $105);
      $107 = Math_fround($99 + $106);
      $22 = $107;
      $108 = $20;
      $109 = $20;
      $110 = Math_fround($108 * $109);
      $111 = $21;
      $112 = $21;
      $113 = Math_fround($111 * $112);
      $114 = Math_fround($110 + $113);
      $115 = $22;
      $116 = $22;
      $117 = Math_fround($115 * $116);
      $118 = Math_fround($114 + $117);
      $23 = $118;
      $119 = $23;
      $120 = $12;
      $121 = $119 < $120;
      if ($121) {
       $122 = $23;
       $12 = $122;
       $123 = $16;
       $13 = $123;
       $124 = $17;
       $14 = $124;
       $125 = $18;
       $15 = $125;
      }
      $126 = $18;
      $127 = (($126) + 1)|0;
      $18 = $127;
     }
     $128 = $17;
     $129 = (($128) + 1)|0;
     $17 = $129;
    }
    $130 = $16;
    $131 = (($130) + 1)|0;
    $16 = $131;
   }
   break;
  }
  case 1:  {
   $132 = $9;
   $133 = (($132) - 1)|0;
   $24 = $133;
   while(1) {
    $134 = $24;
    $135 = $9;
    $136 = (($135) + 1)|0;
    $137 = ($134|0)<=($136|0);
    if (!($137)) {
     break L1;
    }
    $138 = $10;
    $139 = (($138) - 1)|0;
    $25 = $139;
    while(1) {
     $140 = $25;
     $141 = $10;
     $142 = (($141) + 1)|0;
     $143 = ($140|0)<=($142|0);
     if (!($143)) {
      break;
     }
     $144 = $11;
     $145 = (($144) - 1)|0;
     $26 = $145;
     while(1) {
      $146 = $26;
      $147 = $11;
      $148 = (($147) + 1)|0;
      $149 = ($146|0)<=($148|0);
      if (!($149)) {
       break;
      }
      $150 = $24;
      $151 = $25;
      $152 = $26;
      $153 = (__ZNK9FastNoise11Index3D_256Ehiii($41,0,$150,$151,$152)|0);
      $27 = $153;
      $154 = $24;
      $155 = (Math_fround(($154|0)));
      $156 = $6;
      $157 = Math_fround($155 - $156);
      $158 = $27;
      $159 = $158&255;
      $160 = (2712 + ($159<<2)|0);
      $161 = loadf($160);
      $162 = ((($41)) + 1080|0);
      $163 = loadf($162);
      $164 = Math_fround($161 * $163);
      $165 = Math_fround($157 + $164);
      $28 = $165;
      $166 = $25;
      $167 = (Math_fround(($166|0)));
      $168 = $7;
      $169 = Math_fround($167 - $168);
      $170 = $27;
      $171 = $170&255;
      $172 = (3736 + ($171<<2)|0);
      $173 = loadf($172);
      $174 = ((($41)) + 1080|0);
      $175 = loadf($174);
      $176 = Math_fround($173 * $175);
      $177 = Math_fround($169 + $176);
      $29 = $177;
      $178 = $26;
      $179 = (Math_fround(($178|0)));
      $180 = $8;
      $181 = Math_fround($179 - $180);
      $182 = $27;
      $183 = $182&255;
      $184 = (4760 + ($183<<2)|0);
      $185 = loadf($184);
      $186 = ((($41)) + 1080|0);
      $187 = loadf($186);
      $188 = Math_fround($185 * $187);
      $189 = Math_fround($181 + $188);
      $30 = $189;
      $190 = $28;
      $191 = (Math_fround(__ZL7FastAbsf($190)));
      $192 = $29;
      $193 = (Math_fround(__ZL7FastAbsf($192)));
      $194 = Math_fround($191 + $193);
      $195 = $30;
      $196 = (Math_fround(__ZL7FastAbsf($195)));
      $197 = Math_fround($194 + $196);
      $31 = $197;
      $198 = $31;
      $199 = $12;
      $200 = $198 < $199;
      if ($200) {
       $201 = $31;
       $12 = $201;
       $202 = $24;
       $13 = $202;
       $203 = $25;
       $14 = $203;
       $204 = $26;
       $15 = $204;
      }
      $205 = $26;
      $206 = (($205) + 1)|0;
      $26 = $206;
     }
     $207 = $25;
     $208 = (($207) + 1)|0;
     $25 = $208;
    }
    $209 = $24;
    $210 = (($209) + 1)|0;
    $24 = $210;
   }
   break;
  }
  case 2:  {
   $211 = $9;
   $212 = (($211) - 1)|0;
   $32 = $212;
   while(1) {
    $213 = $32;
    $214 = $9;
    $215 = (($214) + 1)|0;
    $216 = ($213|0)<=($215|0);
    if (!($216)) {
     break L1;
    }
    $217 = $10;
    $218 = (($217) - 1)|0;
    $33 = $218;
    while(1) {
     $219 = $33;
     $220 = $10;
     $221 = (($220) + 1)|0;
     $222 = ($219|0)<=($221|0);
     if (!($222)) {
      break;
     }
     $223 = $11;
     $224 = (($223) - 1)|0;
     $34 = $224;
     while(1) {
      $225 = $34;
      $226 = $11;
      $227 = (($226) + 1)|0;
      $228 = ($225|0)<=($227|0);
      if (!($228)) {
       break;
      }
      $229 = $32;
      $230 = $33;
      $231 = $34;
      $232 = (__ZNK9FastNoise11Index3D_256Ehiii($41,0,$229,$230,$231)|0);
      $35 = $232;
      $233 = $32;
      $234 = (Math_fround(($233|0)));
      $235 = $6;
      $236 = Math_fround($234 - $235);
      $237 = $35;
      $238 = $237&255;
      $239 = (2712 + ($238<<2)|0);
      $240 = loadf($239);
      $241 = ((($41)) + 1080|0);
      $242 = loadf($241);
      $243 = Math_fround($240 * $242);
      $244 = Math_fround($236 + $243);
      $36 = $244;
      $245 = $33;
      $246 = (Math_fround(($245|0)));
      $247 = $7;
      $248 = Math_fround($246 - $247);
      $249 = $35;
      $250 = $249&255;
      $251 = (3736 + ($250<<2)|0);
      $252 = loadf($251);
      $253 = ((($41)) + 1080|0);
      $254 = loadf($253);
      $255 = Math_fround($252 * $254);
      $256 = Math_fround($248 + $255);
      $37 = $256;
      $257 = $34;
      $258 = (Math_fround(($257|0)));
      $259 = $8;
      $260 = Math_fround($258 - $259);
      $261 = $35;
      $262 = $261&255;
      $263 = (4760 + ($262<<2)|0);
      $264 = loadf($263);
      $265 = ((($41)) + 1080|0);
      $266 = loadf($265);
      $267 = Math_fround($264 * $266);
      $268 = Math_fround($260 + $267);
      $38 = $268;
      $269 = $36;
      $270 = (Math_fround(__ZL7FastAbsf($269)));
      $271 = $37;
      $272 = (Math_fround(__ZL7FastAbsf($271)));
      $273 = Math_fround($270 + $272);
      $274 = $38;
      $275 = (Math_fround(__ZL7FastAbsf($274)));
      $276 = Math_fround($273 + $275);
      $277 = $36;
      $278 = $36;
      $279 = Math_fround($277 * $278);
      $280 = $37;
      $281 = $37;
      $282 = Math_fround($280 * $281);
      $283 = Math_fround($279 + $282);
      $284 = $38;
      $285 = $38;
      $286 = Math_fround($284 * $285);
      $287 = Math_fround($283 + $286);
      $288 = Math_fround($276 + $287);
      $39 = $288;
      $289 = $39;
      $290 = $12;
      $291 = $289 < $290;
      if ($291) {
       $292 = $39;
       $12 = $292;
       $293 = $32;
       $13 = $293;
       $294 = $33;
       $14 = $294;
       $295 = $34;
       $15 = $295;
      }
      $296 = $34;
      $297 = (($296) + 1)|0;
      $34 = $297;
     }
     $298 = $33;
     $299 = (($298) + 1)|0;
     $33 = $299;
    }
    $300 = $32;
    $301 = (($300) + 1)|0;
    $32 = $301;
   }
   break;
  }
  default: {
  }
  }
 } while(0);
 $302 = ((($41)) + 1064|0);
 $303 = load4($302);
 switch ($303|0) {
 case 0:  {
  $304 = ((($41)) + 1024|0);
  $305 = load4($304);
  $306 = $13;
  $307 = $14;
  $308 = $15;
  $309 = (Math_fround(__ZL10ValCoord3Diiii($305,$306,$307,$308)));
  $4 = $309;
  $351 = $4;
  STACKTOP = sp;return (Math_fround($351));
  break;
 }
 case 1:  {
  $310 = ((($41)) + 1068|0);
  $311 = load4($310);
  $312 = ($311|0)!=(0|0);
  if (!($312)) {
   ___assert_fail((9925|0),(9947|0),1798,(9971|0));
   // unreachable;
  }
  $313 = $13;
  $314 = $14;
  $315 = $15;
  $316 = (__ZNK9FastNoise11Index3D_256Ehiii($41,0,$313,$314,$315)|0);
  $40 = $316;
  $317 = ((($41)) + 1068|0);
  $318 = load4($317);
  $319 = $13;
  $320 = (Math_fround(($319|0)));
  $321 = $40;
  $322 = $321&255;
  $323 = (2712 + ($322<<2)|0);
  $324 = loadf($323);
  $325 = ((($41)) + 1080|0);
  $326 = loadf($325);
  $327 = Math_fround($324 * $326);
  $328 = Math_fround($320 + $327);
  $329 = $14;
  $330 = (Math_fround(($329|0)));
  $331 = $40;
  $332 = $331&255;
  $333 = (3736 + ($332<<2)|0);
  $334 = loadf($333);
  $335 = ((($41)) + 1080|0);
  $336 = loadf($335);
  $337 = Math_fround($334 * $336);
  $338 = Math_fround($330 + $337);
  $339 = $15;
  $340 = (Math_fround(($339|0)));
  $341 = $40;
  $342 = $341&255;
  $343 = (4760 + ($342<<2)|0);
  $344 = loadf($343);
  $345 = ((($41)) + 1080|0);
  $346 = loadf($345);
  $347 = Math_fround($344 * $346);
  $348 = Math_fround($340 + $347);
  $349 = (Math_fround(__ZNK9FastNoise8GetNoiseEfff($318,$328,$338,$348)));
  $4 = $349;
  $351 = $4;
  STACKTOP = sp;return (Math_fround($351));
  break;
 }
 case 2:  {
  $350 = $12;
  $4 = $350;
  $351 = $4;
  STACKTOP = sp;return (Math_fround($351));
  break;
 }
 default: {
  $4 = Math_fround(0.0);
  $351 = $4;
  STACKTOP = sp;return (Math_fround($351));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise19SingleCellular2EdgeEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = Math_fround(0), $100 = Math_fround(0), $101 = 0, $102 = Math_fround(0), $103 = Math_fround(0), $104 = Math_fround(0), $105 = 0, $106 = 0, $107 = 0, $108 = Math_fround(0), $109 = 0, $11 = Math_fround(0), $110 = Math_fround(0), $111 = Math_fround(0), $112 = Math_fround(0), $113 = 0, $114 = Math_fround(0), $115 = Math_fround(0), $116 = Math_fround(0), $117 = 0;
 var $118 = 0, $119 = 0, $12 = Math_fround(0), $120 = Math_fround(0), $121 = 0, $122 = Math_fround(0), $123 = Math_fround(0), $124 = Math_fround(0), $125 = Math_fround(0), $126 = Math_fround(0), $127 = Math_fround(0), $128 = Math_fround(0), $129 = Math_fround(0), $13 = Math_fround(0), $130 = Math_fround(0), $131 = Math_fround(0), $132 = Math_fround(0), $133 = Math_fround(0), $134 = Math_fround(0), $135 = Math_fround(0);
 var $136 = 0, $137 = 0, $138 = 0, $139 = 0, $14 = Math_fround(0), $140 = 0, $141 = 0, $142 = Math_fround(0), $143 = Math_fround(0), $144 = Math_fround(0), $145 = Math_fround(0), $146 = Math_fround(0), $147 = 0, $148 = 0, $149 = 0, $15 = Math_fround(0), $150 = Math_fround(0), $151 = Math_fround(0), $152 = Math_fround(0), $153 = Math_fround(0);
 var $154 = 0, $155 = 0, $156 = 0, $157 = 0, $158 = Math_fround(0), $159 = Math_fround(0), $16 = Math_fround(0), $160 = Math_fround(0), $161 = Math_fround(0), $162 = Math_fround(0), $163 = 0, $164 = 0, $165 = 0, $166 = 0, $167 = 0, $168 = 0, $169 = 0, $17 = Math_fround(0), $170 = 0, $171 = 0;
 var $172 = 0, $173 = 0, $174 = 0, $175 = 0, $176 = 0, $177 = 0, $178 = 0, $179 = 0, $18 = Math_fround(0), $180 = 0, $181 = 0, $182 = 0, $183 = 0, $184 = 0, $185 = 0, $186 = 0, $187 = 0, $188 = 0, $189 = 0, $19 = Math_fround(0);
 var $190 = 0, $191 = 0, $192 = Math_fround(0), $193 = Math_fround(0), $194 = Math_fround(0), $195 = 0, $196 = 0, $197 = 0, $198 = Math_fround(0), $199 = 0, $20 = Math_fround(0), $200 = Math_fround(0), $201 = Math_fround(0), $202 = Math_fround(0), $203 = 0, $204 = Math_fround(0), $205 = Math_fround(0), $206 = Math_fround(0), $207 = 0, $208 = 0;
 var $209 = 0, $21 = Math_fround(0), $210 = Math_fround(0), $211 = 0, $212 = Math_fround(0), $213 = Math_fround(0), $214 = Math_fround(0), $215 = 0, $216 = Math_fround(0), $217 = Math_fround(0), $218 = Math_fround(0), $219 = 0, $22 = Math_fround(0), $220 = 0, $221 = 0, $222 = Math_fround(0), $223 = 0, $224 = Math_fround(0), $225 = Math_fround(0), $226 = Math_fround(0);
 var $227 = Math_fround(0), $228 = Math_fround(0), $229 = Math_fround(0), $23 = 0, $230 = Math_fround(0), $231 = Math_fround(0), $232 = Math_fround(0), $233 = Math_fround(0), $234 = Math_fround(0), $235 = 0, $236 = 0, $237 = 0, $238 = 0, $239 = 0, $24 = Math_fround(0), $240 = 0, $241 = Math_fround(0), $242 = Math_fround(0), $243 = Math_fround(0), $244 = Math_fround(0);
 var $245 = Math_fround(0), $246 = 0, $247 = 0, $248 = 0, $249 = Math_fround(0), $25 = Math_fround(0), $250 = Math_fround(0), $251 = Math_fround(0), $252 = Math_fround(0), $253 = 0, $254 = 0, $255 = 0, $256 = 0, $257 = Math_fround(0), $258 = Math_fround(0), $259 = Math_fround(0), $26 = Math_fround(0), $260 = Math_fround(0), $261 = Math_fround(0), $262 = 0;
 var $263 = 0, $264 = 0, $265 = 0, $266 = 0, $267 = 0, $268 = 0, $269 = 0, $27 = 0, $270 = 0, $271 = 0, $272 = 0, $273 = 0, $274 = 0, $275 = 0, $276 = 0, $277 = 0, $278 = 0, $279 = 0, $28 = 0, $280 = 0;
 var $281 = 0, $282 = 0, $283 = 0, $284 = 0, $285 = 0, $286 = 0, $287 = 0, $288 = 0, $289 = 0, $29 = 0, $290 = 0, $291 = Math_fround(0), $292 = Math_fround(0), $293 = Math_fround(0), $294 = 0, $295 = 0, $296 = 0, $297 = Math_fround(0), $298 = 0, $299 = Math_fround(0);
 var $30 = 0, $300 = Math_fround(0), $301 = Math_fround(0), $302 = 0, $303 = Math_fround(0), $304 = Math_fround(0), $305 = Math_fround(0), $306 = 0, $307 = 0, $308 = 0, $309 = Math_fround(0), $31 = 0, $310 = 0, $311 = Math_fround(0), $312 = Math_fround(0), $313 = Math_fround(0), $314 = 0, $315 = Math_fround(0), $316 = Math_fround(0), $317 = Math_fround(0);
 var $318 = 0, $319 = 0, $32 = 0, $320 = 0, $321 = Math_fround(0), $322 = 0, $323 = Math_fround(0), $324 = Math_fround(0), $325 = Math_fround(0), $326 = Math_fround(0), $327 = Math_fround(0), $328 = Math_fround(0), $329 = Math_fround(0), $33 = 0, $330 = Math_fround(0), $331 = Math_fround(0), $332 = Math_fround(0), $333 = Math_fround(0), $334 = Math_fround(0), $335 = Math_fround(0);
 var $336 = Math_fround(0), $337 = Math_fround(0), $338 = Math_fround(0), $339 = Math_fround(0), $34 = 0, $340 = Math_fround(0), $341 = Math_fround(0), $342 = Math_fround(0), $343 = Math_fround(0), $344 = Math_fround(0), $345 = Math_fround(0), $346 = 0, $347 = 0, $348 = 0, $349 = 0, $35 = Math_fround(0), $350 = 0, $351 = 0, $352 = Math_fround(0), $353 = Math_fround(0);
 var $354 = Math_fround(0), $355 = Math_fround(0), $356 = Math_fround(0), $357 = 0, $358 = 0, $359 = 0, $36 = Math_fround(0), $360 = Math_fround(0), $361 = Math_fround(0), $362 = Math_fround(0), $363 = Math_fround(0), $364 = 0, $365 = 0, $366 = 0, $367 = 0, $368 = Math_fround(0), $369 = Math_fround(0), $37 = Math_fround(0), $370 = Math_fround(0), $371 = Math_fround(0);
 var $372 = Math_fround(0), $373 = 0, $374 = 0, $375 = 0, $376 = 0, $377 = 0, $378 = 0, $379 = 0, $38 = Math_fround(0), $380 = 0, $381 = 0, $382 = 0, $383 = 0, $384 = Math_fround(0), $385 = 0, $386 = 0, $387 = 0, $388 = Math_fround(0), $389 = 0, $39 = 0;
 var $390 = 0, $391 = 0, $392 = Math_fround(0), $393 = Math_fround(0), $394 = 0, $395 = 0, $396 = 0, $397 = Math_fround(0), $398 = 0, $399 = 0, $4 = Math_fround(0), $40 = 0, $400 = 0, $401 = Math_fround(0), $402 = Math_fround(0), $403 = 0, $404 = 0, $405 = 0, $406 = Math_fround(0), $407 = 0;
 var $408 = 0, $409 = 0, $41 = 0, $410 = Math_fround(0), $411 = Math_fround(0), $412 = 0, $413 = 0, $414 = 0, $415 = Math_fround(0), $416 = 0, $417 = 0, $418 = 0, $419 = Math_fround(0), $42 = 0, $420 = Math_fround(0), $421 = Math_fround(0), $43 = 0, $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0);
 var $47 = Math_fround(0), $48 = 0, $49 = 0, $5 = Math_fround(0), $50 = 0, $51 = 0, $52 = 0, $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = 0, $58 = 0, $59 = Math_fround(0), $6 = Math_fround(0), $60 = 0, $61 = Math_fround(0), $62 = 0, $63 = Math_fround(0), $64 = 0;
 var $65 = 0, $66 = 0, $67 = 0, $68 = 0, $69 = 0, $7 = Math_fround(0), $70 = 0, $71 = 0, $72 = 0, $73 = 0, $74 = 0, $75 = 0, $76 = 0, $77 = 0, $78 = 0, $79 = 0, $8 = Math_fround(0), $80 = 0, $81 = 0, $82 = 0;
 var $83 = 0, $84 = 0, $85 = 0, $86 = 0, $87 = 0, $88 = 0, $89 = 0, $9 = Math_fround(0), $90 = Math_fround(0), $91 = Math_fround(0), $92 = Math_fround(0), $93 = 0, $94 = 0, $95 = 0, $96 = Math_fround(0), $97 = 0, $98 = Math_fround(0), $99 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 224|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(224|0);
 $30 = sp + 96|0;
 $23 = $0;
 $24 = $1;
 $25 = $2;
 $26 = $3;
 $58 = $23;
 $59 = $24;
 $60 = (__ZL9FastRoundf($59)|0);
 $27 = $60;
 $61 = $25;
 $62 = (__ZL9FastRoundf($61)|0);
 $28 = $62;
 $63 = $26;
 $64 = (__ZL9FastRoundf($63)|0);
 $29 = $64;
 ; store8($30,load8(5928,4),4); store8($30+8 | 0,load8(5928+8 | 0,4),4);
 $65 = ((($58)) + 1060|0);
 $66 = load4($65);
 L1: do {
  switch ($66|0) {
  case 0:  {
   $67 = $27;
   $68 = (($67) - 1)|0;
   $31 = $68;
   while(1) {
    $69 = $31;
    $70 = $27;
    $71 = (($70) + 1)|0;
    $72 = ($69|0)<=($71|0);
    if (!($72)) {
     break L1;
    }
    $73 = $28;
    $74 = (($73) - 1)|0;
    $32 = $74;
    while(1) {
     $75 = $32;
     $76 = $28;
     $77 = (($76) + 1)|0;
     $78 = ($75|0)<=($77|0);
     if (!($78)) {
      break;
     }
     $79 = $29;
     $80 = (($79) - 1)|0;
     $33 = $80;
     while(1) {
      $81 = $33;
      $82 = $29;
      $83 = (($82) + 1)|0;
      $84 = ($81|0)<=($83|0);
      if (!($84)) {
       break;
      }
      $85 = $31;
      $86 = $32;
      $87 = $33;
      $88 = (__ZNK9FastNoise11Index3D_256Ehiii($58,0,$85,$86,$87)|0);
      $34 = $88;
      $89 = $31;
      $90 = (Math_fround(($89|0)));
      $91 = $24;
      $92 = Math_fround($90 - $91);
      $93 = $34;
      $94 = $93&255;
      $95 = (2712 + ($94<<2)|0);
      $96 = loadf($95);
      $97 = ((($58)) + 1080|0);
      $98 = loadf($97);
      $99 = Math_fround($96 * $98);
      $100 = Math_fround($92 + $99);
      $35 = $100;
      $101 = $32;
      $102 = (Math_fround(($101|0)));
      $103 = $25;
      $104 = Math_fround($102 - $103);
      $105 = $34;
      $106 = $105&255;
      $107 = (3736 + ($106<<2)|0);
      $108 = loadf($107);
      $109 = ((($58)) + 1080|0);
      $110 = loadf($109);
      $111 = Math_fround($108 * $110);
      $112 = Math_fround($104 + $111);
      $36 = $112;
      $113 = $33;
      $114 = (Math_fround(($113|0)));
      $115 = $26;
      $116 = Math_fround($114 - $115);
      $117 = $34;
      $118 = $117&255;
      $119 = (4760 + ($118<<2)|0);
      $120 = loadf($119);
      $121 = ((($58)) + 1080|0);
      $122 = loadf($121);
      $123 = Math_fround($120 * $122);
      $124 = Math_fround($116 + $123);
      $37 = $124;
      $125 = $35;
      $126 = $35;
      $127 = Math_fround($125 * $126);
      $128 = $36;
      $129 = $36;
      $130 = Math_fround($128 * $129);
      $131 = Math_fround($127 + $130);
      $132 = $37;
      $133 = $37;
      $134 = Math_fround($132 * $133);
      $135 = Math_fround($131 + $134);
      $38 = $135;
      $136 = ((($58)) + 1076|0);
      $137 = load4($136);
      $39 = $137;
      while(1) {
       $138 = $39;
       $139 = ($138|0)>(0);
       if (!($139)) {
        break;
       }
       $140 = $39;
       $141 = (($30) + ($140<<2)|0);
       $142 = loadf($141);
       $143 = $38;
       $20 = $142;
       $21 = $143;
       $144 = $20;
       $145 = $21;
       $146 = (Math_fround(_fminf($144,$145)));
       $147 = $39;
       $148 = (($147) - 1)|0;
       $149 = (($30) + ($148<<2)|0);
       $150 = loadf($149);
       $18 = $146;
       $19 = $150;
       $151 = $18;
       $152 = $19;
       $153 = (Math_fround(_fmaxf($151,$152)));
       $154 = $39;
       $155 = (($30) + ($154<<2)|0);
       storef($155,$153);
       $156 = $39;
       $157 = (($156) + -1)|0;
       $39 = $157;
      }
      $158 = loadf($30);
      $159 = $38;
      $16 = $158;
      $17 = $159;
      $160 = $16;
      $161 = $17;
      $162 = (Math_fround(_fminf($160,$161)));
      storef($30,$162);
      $163 = $33;
      $164 = (($163) + 1)|0;
      $33 = $164;
     }
     $165 = $32;
     $166 = (($165) + 1)|0;
     $32 = $166;
    }
    $167 = $31;
    $168 = (($167) + 1)|0;
    $31 = $168;
   }
   break;
  }
  case 1:  {
   $169 = $27;
   $170 = (($169) - 1)|0;
   $40 = $170;
   while(1) {
    $171 = $40;
    $172 = $27;
    $173 = (($172) + 1)|0;
    $174 = ($171|0)<=($173|0);
    if (!($174)) {
     break L1;
    }
    $175 = $28;
    $176 = (($175) - 1)|0;
    $41 = $176;
    while(1) {
     $177 = $41;
     $178 = $28;
     $179 = (($178) + 1)|0;
     $180 = ($177|0)<=($179|0);
     if (!($180)) {
      break;
     }
     $181 = $29;
     $182 = (($181) - 1)|0;
     $42 = $182;
     while(1) {
      $183 = $42;
      $184 = $29;
      $185 = (($184) + 1)|0;
      $186 = ($183|0)<=($185|0);
      if (!($186)) {
       break;
      }
      $187 = $40;
      $188 = $41;
      $189 = $42;
      $190 = (__ZNK9FastNoise11Index3D_256Ehiii($58,0,$187,$188,$189)|0);
      $43 = $190;
      $191 = $40;
      $192 = (Math_fround(($191|0)));
      $193 = $24;
      $194 = Math_fround($192 - $193);
      $195 = $43;
      $196 = $195&255;
      $197 = (2712 + ($196<<2)|0);
      $198 = loadf($197);
      $199 = ((($58)) + 1080|0);
      $200 = loadf($199);
      $201 = Math_fround($198 * $200);
      $202 = Math_fround($194 + $201);
      $44 = $202;
      $203 = $41;
      $204 = (Math_fround(($203|0)));
      $205 = $25;
      $206 = Math_fround($204 - $205);
      $207 = $43;
      $208 = $207&255;
      $209 = (3736 + ($208<<2)|0);
      $210 = loadf($209);
      $211 = ((($58)) + 1080|0);
      $212 = loadf($211);
      $213 = Math_fround($210 * $212);
      $214 = Math_fround($206 + $213);
      $45 = $214;
      $215 = $42;
      $216 = (Math_fround(($215|0)));
      $217 = $26;
      $218 = Math_fround($216 - $217);
      $219 = $43;
      $220 = $219&255;
      $221 = (4760 + ($220<<2)|0);
      $222 = loadf($221);
      $223 = ((($58)) + 1080|0);
      $224 = loadf($223);
      $225 = Math_fround($222 * $224);
      $226 = Math_fround($218 + $225);
      $46 = $226;
      $227 = $44;
      $228 = (Math_fround(__ZL7FastAbsf($227)));
      $229 = $45;
      $230 = (Math_fround(__ZL7FastAbsf($229)));
      $231 = Math_fround($228 + $230);
      $232 = $46;
      $233 = (Math_fround(__ZL7FastAbsf($232)));
      $234 = Math_fround($231 + $233);
      $47 = $234;
      $235 = ((($58)) + 1076|0);
      $236 = load4($235);
      $48 = $236;
      while(1) {
       $237 = $48;
       $238 = ($237|0)>(0);
       if (!($238)) {
        break;
       }
       $239 = $48;
       $240 = (($30) + ($239<<2)|0);
       $241 = loadf($240);
       $242 = $47;
       $14 = $241;
       $15 = $242;
       $243 = $14;
       $244 = $15;
       $245 = (Math_fround(_fminf($243,$244)));
       $246 = $48;
       $247 = (($246) - 1)|0;
       $248 = (($30) + ($247<<2)|0);
       $249 = loadf($248);
       $12 = $245;
       $13 = $249;
       $250 = $12;
       $251 = $13;
       $252 = (Math_fround(_fmaxf($250,$251)));
       $253 = $48;
       $254 = (($30) + ($253<<2)|0);
       storef($254,$252);
       $255 = $48;
       $256 = (($255) + -1)|0;
       $48 = $256;
      }
      $257 = loadf($30);
      $258 = $47;
      $10 = $257;
      $11 = $258;
      $259 = $10;
      $260 = $11;
      $261 = (Math_fround(_fminf($259,$260)));
      storef($30,$261);
      $262 = $42;
      $263 = (($262) + 1)|0;
      $42 = $263;
     }
     $264 = $41;
     $265 = (($264) + 1)|0;
     $41 = $265;
    }
    $266 = $40;
    $267 = (($266) + 1)|0;
    $40 = $267;
   }
   break;
  }
  case 2:  {
   $268 = $27;
   $269 = (($268) - 1)|0;
   $49 = $269;
   while(1) {
    $270 = $49;
    $271 = $27;
    $272 = (($271) + 1)|0;
    $273 = ($270|0)<=($272|0);
    if (!($273)) {
     break L1;
    }
    $274 = $28;
    $275 = (($274) - 1)|0;
    $50 = $275;
    while(1) {
     $276 = $50;
     $277 = $28;
     $278 = (($277) + 1)|0;
     $279 = ($276|0)<=($278|0);
     if (!($279)) {
      break;
     }
     $280 = $29;
     $281 = (($280) - 1)|0;
     $51 = $281;
     while(1) {
      $282 = $51;
      $283 = $29;
      $284 = (($283) + 1)|0;
      $285 = ($282|0)<=($284|0);
      if (!($285)) {
       break;
      }
      $286 = $49;
      $287 = $50;
      $288 = $51;
      $289 = (__ZNK9FastNoise11Index3D_256Ehiii($58,0,$286,$287,$288)|0);
      $52 = $289;
      $290 = $49;
      $291 = (Math_fround(($290|0)));
      $292 = $24;
      $293 = Math_fround($291 - $292);
      $294 = $52;
      $295 = $294&255;
      $296 = (2712 + ($295<<2)|0);
      $297 = loadf($296);
      $298 = ((($58)) + 1080|0);
      $299 = loadf($298);
      $300 = Math_fround($297 * $299);
      $301 = Math_fround($293 + $300);
      $53 = $301;
      $302 = $50;
      $303 = (Math_fround(($302|0)));
      $304 = $25;
      $305 = Math_fround($303 - $304);
      $306 = $52;
      $307 = $306&255;
      $308 = (3736 + ($307<<2)|0);
      $309 = loadf($308);
      $310 = ((($58)) + 1080|0);
      $311 = loadf($310);
      $312 = Math_fround($309 * $311);
      $313 = Math_fround($305 + $312);
      $54 = $313;
      $314 = $51;
      $315 = (Math_fround(($314|0)));
      $316 = $26;
      $317 = Math_fround($315 - $316);
      $318 = $52;
      $319 = $318&255;
      $320 = (4760 + ($319<<2)|0);
      $321 = loadf($320);
      $322 = ((($58)) + 1080|0);
      $323 = loadf($322);
      $324 = Math_fround($321 * $323);
      $325 = Math_fround($317 + $324);
      $55 = $325;
      $326 = $53;
      $327 = (Math_fround(__ZL7FastAbsf($326)));
      $328 = $54;
      $329 = (Math_fround(__ZL7FastAbsf($328)));
      $330 = Math_fround($327 + $329);
      $331 = $55;
      $332 = (Math_fround(__ZL7FastAbsf($331)));
      $333 = Math_fround($330 + $332);
      $334 = $53;
      $335 = $53;
      $336 = Math_fround($334 * $335);
      $337 = $54;
      $338 = $54;
      $339 = Math_fround($337 * $338);
      $340 = Math_fround($336 + $339);
      $341 = $55;
      $342 = $55;
      $343 = Math_fround($341 * $342);
      $344 = Math_fround($340 + $343);
      $345 = Math_fround($333 + $344);
      $56 = $345;
      $346 = ((($58)) + 1076|0);
      $347 = load4($346);
      $57 = $347;
      while(1) {
       $348 = $57;
       $349 = ($348|0)>(0);
       if (!($349)) {
        break;
       }
       $350 = $57;
       $351 = (($30) + ($350<<2)|0);
       $352 = loadf($351);
       $353 = $56;
       $8 = $352;
       $9 = $353;
       $354 = $8;
       $355 = $9;
       $356 = (Math_fround(_fminf($354,$355)));
       $357 = $57;
       $358 = (($357) - 1)|0;
       $359 = (($30) + ($358<<2)|0);
       $360 = loadf($359);
       $6 = $356;
       $7 = $360;
       $361 = $6;
       $362 = $7;
       $363 = (Math_fround(_fmaxf($361,$362)));
       $364 = $57;
       $365 = (($30) + ($364<<2)|0);
       storef($365,$363);
       $366 = $57;
       $367 = (($366) + -1)|0;
       $57 = $367;
      }
      $368 = loadf($30);
      $369 = $56;
      $4 = $368;
      $5 = $369;
      $370 = $4;
      $371 = $5;
      $372 = (Math_fround(_fminf($370,$371)));
      storef($30,$372);
      $373 = $51;
      $374 = (($373) + 1)|0;
      $51 = $374;
     }
     $375 = $50;
     $376 = (($375) + 1)|0;
     $50 = $376;
    }
    $377 = $49;
    $378 = (($377) + 1)|0;
    $49 = $378;
   }
   break;
  }
  default: {
  }
  }
 } while(0);
 $379 = ((($58)) + 1064|0);
 $380 = load4($379);
 switch ($380|0) {
 case 3:  {
  $381 = ((($58)) + 1076|0);
  $382 = load4($381);
  $383 = (($30) + ($382<<2)|0);
  $384 = loadf($383);
  $22 = $384;
  $421 = $22;
  STACKTOP = sp;return (Math_fround($421));
  break;
 }
 case 4:  {
  $385 = ((($58)) + 1076|0);
  $386 = load4($385);
  $387 = (($30) + ($386<<2)|0);
  $388 = loadf($387);
  $389 = ((($58)) + 1072|0);
  $390 = load4($389);
  $391 = (($30) + ($390<<2)|0);
  $392 = loadf($391);
  $393 = Math_fround($388 + $392);
  $22 = $393;
  $421 = $22;
  STACKTOP = sp;return (Math_fround($421));
  break;
 }
 case 5:  {
  $394 = ((($58)) + 1076|0);
  $395 = load4($394);
  $396 = (($30) + ($395<<2)|0);
  $397 = loadf($396);
  $398 = ((($58)) + 1072|0);
  $399 = load4($398);
  $400 = (($30) + ($399<<2)|0);
  $401 = loadf($400);
  $402 = Math_fround($397 - $401);
  $22 = $402;
  $421 = $22;
  STACKTOP = sp;return (Math_fround($421));
  break;
 }
 case 6:  {
  $403 = ((($58)) + 1076|0);
  $404 = load4($403);
  $405 = (($30) + ($404<<2)|0);
  $406 = loadf($405);
  $407 = ((($58)) + 1072|0);
  $408 = load4($407);
  $409 = (($30) + ($408<<2)|0);
  $410 = loadf($409);
  $411 = Math_fround($406 * $410);
  $22 = $411;
  $421 = $22;
  STACKTOP = sp;return (Math_fround($421));
  break;
 }
 case 7:  {
  $412 = ((($58)) + 1072|0);
  $413 = load4($412);
  $414 = (($30) + ($413<<2)|0);
  $415 = loadf($414);
  $416 = ((($58)) + 1076|0);
  $417 = load4($416);
  $418 = (($30) + ($417<<2)|0);
  $419 = loadf($418);
  $420 = Math_fround($415 / $419);
  $22 = $420;
  $421 = $22;
  STACKTOP = sp;return (Math_fround($421));
  break;
 }
 default: {
  $22 = Math_fround(0.0);
  $421 = $22;
  STACKTOP = sp;return (Math_fround($421));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise13GetWhiteNoiseEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $5 = sp + 8|0;
 $6 = sp + 4|0;
 $7 = sp;
 $4 = $0;
 storef($5,$1);
 storef($6,$2);
 storef($7,$3);
 $8 = $4;
 $9 = ((($8)) + 1024|0);
 $10 = load4($9);
 $11 = load4($5);
 $12 = load4($5);
 $13 = $12 >> 16;
 $14 = $11 ^ $13;
 $15 = load4($6);
 $16 = load4($6);
 $17 = $16 >> 16;
 $18 = $15 ^ $17;
 $19 = load4($7);
 $20 = load4($7);
 $21 = $20 >> 16;
 $22 = $19 ^ $21;
 $23 = (Math_fround(__ZL10ValCoord3Diiii($10,$14,$18,$22)));
 STACKTOP = sp;return (Math_fround($23));
}
function __ZNK9FastNoise11SingleCubicEhfff($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $10 = 0, $100 = 0, $101 = 0, $102 = 0, $103 = Math_fround(0), $104 = Math_fround(0), $105 = Math_fround(0), $106 = 0, $107 = 0, $108 = 0, $109 = 0, $11 = 0, $110 = Math_fround(0), $111 = 0, $112 = 0, $113 = 0, $114 = 0, $115 = Math_fround(0), $116 = 0, $117 = 0;
 var $118 = 0, $119 = 0, $12 = 0, $120 = Math_fround(0), $121 = 0, $122 = 0, $123 = 0, $124 = 0, $125 = Math_fround(0), $126 = Math_fround(0), $127 = Math_fround(0), $128 = 0, $129 = 0, $13 = 0, $130 = 0, $131 = 0, $132 = Math_fround(0), $133 = 0, $134 = 0, $135 = 0;
 var $136 = 0, $137 = Math_fround(0), $138 = 0, $139 = 0, $14 = 0, $140 = 0, $141 = 0, $142 = Math_fround(0), $143 = 0, $144 = 0, $145 = 0, $146 = 0, $147 = Math_fround(0), $148 = Math_fround(0), $149 = Math_fround(0), $15 = 0, $150 = Math_fround(0), $151 = Math_fround(0), $152 = 0, $153 = 0;
 var $154 = 0, $155 = 0, $156 = Math_fround(0), $157 = 0, $158 = 0, $159 = 0, $16 = 0, $160 = 0, $161 = Math_fround(0), $162 = 0, $163 = 0, $164 = 0, $165 = 0, $166 = Math_fround(0), $167 = 0, $168 = 0, $169 = 0, $17 = 0, $170 = 0, $171 = Math_fround(0);
 var $172 = Math_fround(0), $173 = Math_fround(0), $174 = 0, $175 = 0, $176 = 0, $177 = 0, $178 = Math_fround(0), $179 = 0, $18 = 0, $180 = 0, $181 = 0, $182 = 0, $183 = Math_fround(0), $184 = 0, $185 = 0, $186 = 0, $187 = 0, $188 = Math_fround(0), $189 = 0, $19 = 0;
 var $190 = 0, $191 = 0, $192 = 0, $193 = Math_fround(0), $194 = Math_fround(0), $195 = Math_fround(0), $196 = 0, $197 = 0, $198 = 0, $199 = 0, $20 = 0, $200 = Math_fround(0), $201 = 0, $202 = 0, $203 = 0, $204 = 0, $205 = Math_fround(0), $206 = 0, $207 = 0, $208 = 0;
 var $209 = 0, $21 = 0, $210 = Math_fround(0), $211 = 0, $212 = 0, $213 = 0, $214 = 0, $215 = Math_fround(0), $216 = Math_fround(0), $217 = Math_fround(0), $218 = 0, $219 = 0, $22 = Math_fround(0), $220 = 0, $221 = 0, $222 = Math_fround(0), $223 = 0, $224 = 0, $225 = 0, $226 = 0;
 var $227 = Math_fround(0), $228 = 0, $229 = 0, $23 = Math_fround(0), $230 = 0, $231 = 0, $232 = Math_fround(0), $233 = 0, $234 = 0, $235 = 0, $236 = 0, $237 = Math_fround(0), $238 = Math_fround(0), $239 = Math_fround(0), $24 = Math_fround(0), $240 = Math_fround(0), $241 = Math_fround(0), $242 = 0, $243 = 0, $244 = 0;
 var $245 = 0, $246 = Math_fround(0), $247 = 0, $248 = 0, $249 = 0, $25 = 0, $250 = 0, $251 = Math_fround(0), $252 = 0, $253 = 0, $254 = 0, $255 = 0, $256 = Math_fround(0), $257 = 0, $258 = 0, $259 = 0, $26 = Math_fround(0), $260 = 0, $261 = Math_fround(0), $262 = Math_fround(0);
 var $263 = Math_fround(0), $264 = 0, $265 = 0, $266 = 0, $267 = 0, $268 = Math_fround(0), $269 = 0, $27 = 0, $270 = 0, $271 = 0, $272 = 0, $273 = Math_fround(0), $274 = 0, $275 = 0, $276 = 0, $277 = 0, $278 = Math_fround(0), $279 = 0, $28 = Math_fround(0), $280 = 0;
 var $281 = 0, $282 = 0, $283 = Math_fround(0), $284 = Math_fround(0), $285 = Math_fround(0), $286 = 0, $287 = 0, $288 = 0, $289 = 0, $29 = 0, $290 = Math_fround(0), $291 = 0, $292 = 0, $293 = 0, $294 = 0, $295 = Math_fround(0), $296 = 0, $297 = 0, $298 = 0, $299 = 0;
 var $30 = Math_fround(0), $300 = Math_fround(0), $301 = 0, $302 = 0, $303 = 0, $304 = 0, $305 = Math_fround(0), $306 = Math_fround(0), $307 = Math_fround(0), $308 = 0, $309 = 0, $31 = 0, $310 = 0, $311 = 0, $312 = Math_fround(0), $313 = 0, $314 = 0, $315 = 0, $316 = 0, $317 = Math_fround(0);
 var $318 = 0, $319 = 0, $32 = 0, $320 = 0, $321 = 0, $322 = Math_fround(0), $323 = 0, $324 = 0, $325 = 0, $326 = 0, $327 = Math_fround(0), $328 = Math_fround(0), $329 = Math_fround(0), $33 = 0, $330 = Math_fround(0), $331 = Math_fround(0), $332 = 0, $333 = 0, $334 = 0, $335 = 0;
 var $336 = Math_fround(0), $337 = 0, $338 = 0, $339 = 0, $34 = 0, $340 = 0, $341 = Math_fround(0), $342 = 0, $343 = 0, $344 = 0, $345 = 0, $346 = Math_fround(0), $347 = 0, $348 = 0, $349 = 0, $35 = 0, $350 = 0, $351 = Math_fround(0), $352 = Math_fround(0), $353 = Math_fround(0);
 var $354 = 0, $355 = 0, $356 = 0, $357 = 0, $358 = Math_fround(0), $359 = 0, $36 = 0, $360 = 0, $361 = 0, $362 = 0, $363 = Math_fround(0), $364 = 0, $365 = 0, $366 = 0, $367 = 0, $368 = Math_fround(0), $369 = 0, $37 = 0, $370 = 0, $371 = 0;
 var $372 = 0, $373 = Math_fround(0), $374 = Math_fround(0), $375 = Math_fround(0), $376 = 0, $377 = 0, $378 = 0, $379 = 0, $38 = 0, $380 = Math_fround(0), $381 = 0, $382 = 0, $383 = 0, $384 = 0, $385 = Math_fround(0), $386 = 0, $387 = 0, $388 = 0, $389 = 0, $39 = 0;
 var $390 = Math_fround(0), $391 = 0, $392 = 0, $393 = 0, $394 = 0, $395 = Math_fround(0), $396 = Math_fround(0), $397 = Math_fround(0), $398 = 0, $399 = 0, $40 = 0, $400 = 0, $401 = 0, $402 = Math_fround(0), $403 = 0, $404 = 0, $405 = 0, $406 = 0, $407 = Math_fround(0), $408 = 0;
 var $409 = 0, $41 = 0, $410 = 0, $411 = 0, $412 = Math_fround(0), $413 = 0, $414 = 0, $415 = 0, $416 = 0, $417 = Math_fround(0), $418 = Math_fround(0), $419 = Math_fround(0), $42 = 0, $420 = Math_fround(0), $421 = Math_fround(0), $422 = Math_fround(0), $423 = Math_fround(0), $424 = Math_fround(0), $43 = 0, $44 = 0;
 var $45 = 0, $46 = 0, $47 = 0, $48 = 0, $49 = 0, $5 = 0, $50 = Math_fround(0), $51 = 0, $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = 0, $56 = Math_fround(0), $57 = Math_fround(0), $58 = Math_fround(0), $59 = 0, $6 = 0, $60 = Math_fround(0), $61 = Math_fround(0), $62 = 0;
 var $63 = 0, $64 = 0, $65 = 0, $66 = Math_fround(0), $67 = 0, $68 = 0, $69 = 0, $7 = Math_fround(0), $70 = 0, $71 = Math_fround(0), $72 = 0, $73 = 0, $74 = 0, $75 = 0, $76 = Math_fround(0), $77 = 0, $78 = 0, $79 = 0, $8 = Math_fround(0), $80 = 0;
 var $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = 0, $85 = 0, $86 = 0, $87 = 0, $88 = Math_fround(0), $89 = 0, $9 = Math_fround(0), $90 = 0, $91 = 0, $92 = 0, $93 = Math_fround(0), $94 = 0, $95 = 0, $96 = 0, $97 = 0, $98 = Math_fround(0), $99 = 0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 80|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(80|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $25 = $5;
 $26 = $7;
 $27 = (__ZL9FastFloorf($26)|0);
 $10 = $27;
 $28 = $8;
 $29 = (__ZL9FastFloorf($28)|0);
 $11 = $29;
 $30 = $9;
 $31 = (__ZL9FastFloorf($30)|0);
 $12 = $31;
 $32 = $10;
 $33 = (($32) - 1)|0;
 $13 = $33;
 $34 = $11;
 $35 = (($34) - 1)|0;
 $14 = $35;
 $36 = $12;
 $37 = (($36) - 1)|0;
 $15 = $37;
 $38 = $10;
 $39 = (($38) + 1)|0;
 $16 = $39;
 $40 = $11;
 $41 = (($40) + 1)|0;
 $17 = $41;
 $42 = $12;
 $43 = (($42) + 1)|0;
 $18 = $43;
 $44 = $10;
 $45 = (($44) + 2)|0;
 $19 = $45;
 $46 = $11;
 $47 = (($46) + 2)|0;
 $20 = $47;
 $48 = $12;
 $49 = (($48) + 2)|0;
 $21 = $49;
 $50 = $7;
 $51 = $10;
 $52 = (Math_fround(($51|0)));
 $53 = Math_fround($50 - $52);
 $22 = $53;
 $54 = $8;
 $55 = $11;
 $56 = (Math_fround(($55|0)));
 $57 = Math_fround($54 - $56);
 $23 = $57;
 $58 = $9;
 $59 = $12;
 $60 = (Math_fround(($59|0)));
 $61 = Math_fround($58 - $60);
 $24 = $61;
 $62 = $6;
 $63 = $13;
 $64 = $14;
 $65 = $15;
 $66 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$62,$63,$64,$65)));
 $67 = $6;
 $68 = $10;
 $69 = $14;
 $70 = $15;
 $71 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$67,$68,$69,$70)));
 $72 = $6;
 $73 = $16;
 $74 = $14;
 $75 = $15;
 $76 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$72,$73,$74,$75)));
 $77 = $6;
 $78 = $19;
 $79 = $14;
 $80 = $15;
 $81 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$77,$78,$79,$80)));
 $82 = $22;
 $83 = (Math_fround(__ZL9CubicLerpfffff($66,$71,$76,$81,$82)));
 $84 = $6;
 $85 = $13;
 $86 = $11;
 $87 = $15;
 $88 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$84,$85,$86,$87)));
 $89 = $6;
 $90 = $10;
 $91 = $11;
 $92 = $15;
 $93 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$89,$90,$91,$92)));
 $94 = $6;
 $95 = $16;
 $96 = $11;
 $97 = $15;
 $98 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$94,$95,$96,$97)));
 $99 = $6;
 $100 = $19;
 $101 = $11;
 $102 = $15;
 $103 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$99,$100,$101,$102)));
 $104 = $22;
 $105 = (Math_fround(__ZL9CubicLerpfffff($88,$93,$98,$103,$104)));
 $106 = $6;
 $107 = $13;
 $108 = $17;
 $109 = $15;
 $110 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$106,$107,$108,$109)));
 $111 = $6;
 $112 = $10;
 $113 = $17;
 $114 = $15;
 $115 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$111,$112,$113,$114)));
 $116 = $6;
 $117 = $16;
 $118 = $17;
 $119 = $15;
 $120 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$116,$117,$118,$119)));
 $121 = $6;
 $122 = $19;
 $123 = $17;
 $124 = $15;
 $125 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$121,$122,$123,$124)));
 $126 = $22;
 $127 = (Math_fround(__ZL9CubicLerpfffff($110,$115,$120,$125,$126)));
 $128 = $6;
 $129 = $13;
 $130 = $20;
 $131 = $15;
 $132 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$128,$129,$130,$131)));
 $133 = $6;
 $134 = $10;
 $135 = $20;
 $136 = $15;
 $137 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$133,$134,$135,$136)));
 $138 = $6;
 $139 = $16;
 $140 = $20;
 $141 = $15;
 $142 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$138,$139,$140,$141)));
 $143 = $6;
 $144 = $19;
 $145 = $20;
 $146 = $15;
 $147 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$143,$144,$145,$146)));
 $148 = $22;
 $149 = (Math_fround(__ZL9CubicLerpfffff($132,$137,$142,$147,$148)));
 $150 = $23;
 $151 = (Math_fround(__ZL9CubicLerpfffff($83,$105,$127,$149,$150)));
 $152 = $6;
 $153 = $13;
 $154 = $14;
 $155 = $12;
 $156 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$152,$153,$154,$155)));
 $157 = $6;
 $158 = $10;
 $159 = $14;
 $160 = $12;
 $161 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$157,$158,$159,$160)));
 $162 = $6;
 $163 = $16;
 $164 = $14;
 $165 = $12;
 $166 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$162,$163,$164,$165)));
 $167 = $6;
 $168 = $19;
 $169 = $14;
 $170 = $12;
 $171 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$167,$168,$169,$170)));
 $172 = $22;
 $173 = (Math_fround(__ZL9CubicLerpfffff($156,$161,$166,$171,$172)));
 $174 = $6;
 $175 = $13;
 $176 = $11;
 $177 = $12;
 $178 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$174,$175,$176,$177)));
 $179 = $6;
 $180 = $10;
 $181 = $11;
 $182 = $12;
 $183 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$179,$180,$181,$182)));
 $184 = $6;
 $185 = $16;
 $186 = $11;
 $187 = $12;
 $188 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$184,$185,$186,$187)));
 $189 = $6;
 $190 = $19;
 $191 = $11;
 $192 = $12;
 $193 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$189,$190,$191,$192)));
 $194 = $22;
 $195 = (Math_fround(__ZL9CubicLerpfffff($178,$183,$188,$193,$194)));
 $196 = $6;
 $197 = $13;
 $198 = $17;
 $199 = $12;
 $200 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$196,$197,$198,$199)));
 $201 = $6;
 $202 = $10;
 $203 = $17;
 $204 = $12;
 $205 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$201,$202,$203,$204)));
 $206 = $6;
 $207 = $16;
 $208 = $17;
 $209 = $12;
 $210 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$206,$207,$208,$209)));
 $211 = $6;
 $212 = $19;
 $213 = $17;
 $214 = $12;
 $215 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$211,$212,$213,$214)));
 $216 = $22;
 $217 = (Math_fround(__ZL9CubicLerpfffff($200,$205,$210,$215,$216)));
 $218 = $6;
 $219 = $13;
 $220 = $20;
 $221 = $12;
 $222 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$218,$219,$220,$221)));
 $223 = $6;
 $224 = $10;
 $225 = $20;
 $226 = $12;
 $227 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$223,$224,$225,$226)));
 $228 = $6;
 $229 = $16;
 $230 = $20;
 $231 = $12;
 $232 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$228,$229,$230,$231)));
 $233 = $6;
 $234 = $19;
 $235 = $20;
 $236 = $12;
 $237 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$233,$234,$235,$236)));
 $238 = $22;
 $239 = (Math_fround(__ZL9CubicLerpfffff($222,$227,$232,$237,$238)));
 $240 = $23;
 $241 = (Math_fround(__ZL9CubicLerpfffff($173,$195,$217,$239,$240)));
 $242 = $6;
 $243 = $13;
 $244 = $14;
 $245 = $18;
 $246 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$242,$243,$244,$245)));
 $247 = $6;
 $248 = $10;
 $249 = $14;
 $250 = $18;
 $251 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$247,$248,$249,$250)));
 $252 = $6;
 $253 = $16;
 $254 = $14;
 $255 = $18;
 $256 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$252,$253,$254,$255)));
 $257 = $6;
 $258 = $19;
 $259 = $14;
 $260 = $18;
 $261 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$257,$258,$259,$260)));
 $262 = $22;
 $263 = (Math_fround(__ZL9CubicLerpfffff($246,$251,$256,$261,$262)));
 $264 = $6;
 $265 = $13;
 $266 = $11;
 $267 = $18;
 $268 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$264,$265,$266,$267)));
 $269 = $6;
 $270 = $10;
 $271 = $11;
 $272 = $18;
 $273 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$269,$270,$271,$272)));
 $274 = $6;
 $275 = $16;
 $276 = $11;
 $277 = $18;
 $278 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$274,$275,$276,$277)));
 $279 = $6;
 $280 = $19;
 $281 = $11;
 $282 = $18;
 $283 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$279,$280,$281,$282)));
 $284 = $22;
 $285 = (Math_fround(__ZL9CubicLerpfffff($268,$273,$278,$283,$284)));
 $286 = $6;
 $287 = $13;
 $288 = $17;
 $289 = $18;
 $290 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$286,$287,$288,$289)));
 $291 = $6;
 $292 = $10;
 $293 = $17;
 $294 = $18;
 $295 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$291,$292,$293,$294)));
 $296 = $6;
 $297 = $16;
 $298 = $17;
 $299 = $18;
 $300 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$296,$297,$298,$299)));
 $301 = $6;
 $302 = $19;
 $303 = $17;
 $304 = $18;
 $305 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$301,$302,$303,$304)));
 $306 = $22;
 $307 = (Math_fround(__ZL9CubicLerpfffff($290,$295,$300,$305,$306)));
 $308 = $6;
 $309 = $13;
 $310 = $20;
 $311 = $18;
 $312 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$308,$309,$310,$311)));
 $313 = $6;
 $314 = $10;
 $315 = $20;
 $316 = $18;
 $317 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$313,$314,$315,$316)));
 $318 = $6;
 $319 = $16;
 $320 = $20;
 $321 = $18;
 $322 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$318,$319,$320,$321)));
 $323 = $6;
 $324 = $19;
 $325 = $20;
 $326 = $18;
 $327 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$323,$324,$325,$326)));
 $328 = $22;
 $329 = (Math_fround(__ZL9CubicLerpfffff($312,$317,$322,$327,$328)));
 $330 = $23;
 $331 = (Math_fround(__ZL9CubicLerpfffff($263,$285,$307,$329,$330)));
 $332 = $6;
 $333 = $13;
 $334 = $14;
 $335 = $21;
 $336 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$332,$333,$334,$335)));
 $337 = $6;
 $338 = $10;
 $339 = $14;
 $340 = $21;
 $341 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$337,$338,$339,$340)));
 $342 = $6;
 $343 = $16;
 $344 = $14;
 $345 = $21;
 $346 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$342,$343,$344,$345)));
 $347 = $6;
 $348 = $19;
 $349 = $14;
 $350 = $21;
 $351 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$347,$348,$349,$350)));
 $352 = $22;
 $353 = (Math_fround(__ZL9CubicLerpfffff($336,$341,$346,$351,$352)));
 $354 = $6;
 $355 = $13;
 $356 = $11;
 $357 = $21;
 $358 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$354,$355,$356,$357)));
 $359 = $6;
 $360 = $10;
 $361 = $11;
 $362 = $21;
 $363 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$359,$360,$361,$362)));
 $364 = $6;
 $365 = $16;
 $366 = $11;
 $367 = $21;
 $368 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$364,$365,$366,$367)));
 $369 = $6;
 $370 = $19;
 $371 = $11;
 $372 = $21;
 $373 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$369,$370,$371,$372)));
 $374 = $22;
 $375 = (Math_fround(__ZL9CubicLerpfffff($358,$363,$368,$373,$374)));
 $376 = $6;
 $377 = $13;
 $378 = $17;
 $379 = $21;
 $380 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$376,$377,$378,$379)));
 $381 = $6;
 $382 = $10;
 $383 = $17;
 $384 = $21;
 $385 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$381,$382,$383,$384)));
 $386 = $6;
 $387 = $16;
 $388 = $17;
 $389 = $21;
 $390 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$386,$387,$388,$389)));
 $391 = $6;
 $392 = $19;
 $393 = $17;
 $394 = $21;
 $395 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$391,$392,$393,$394)));
 $396 = $22;
 $397 = (Math_fround(__ZL9CubicLerpfffff($380,$385,$390,$395,$396)));
 $398 = $6;
 $399 = $13;
 $400 = $20;
 $401 = $21;
 $402 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$398,$399,$400,$401)));
 $403 = $6;
 $404 = $10;
 $405 = $20;
 $406 = $21;
 $407 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$403,$404,$405,$406)));
 $408 = $6;
 $409 = $16;
 $410 = $20;
 $411 = $21;
 $412 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$408,$409,$410,$411)));
 $413 = $6;
 $414 = $19;
 $415 = $20;
 $416 = $21;
 $417 = (Math_fround(__ZNK9FastNoise14ValCoord3DFastEhiii($25,$413,$414,$415,$416)));
 $418 = $22;
 $419 = (Math_fround(__ZL9CubicLerpfffff($402,$407,$412,$417,$418)));
 $420 = $23;
 $421 = (Math_fround(__ZL9CubicLerpfffff($353,$375,$397,$419,$420)));
 $422 = $24;
 $423 = (Math_fround(__ZL9CubicLerpfffff($151,$241,$331,$421,$422)));
 $424 = Math_fround($423 * Math_fround(0.296296299));
 STACKTOP = sp;return (Math_fround($424));
}
function __ZNK9FastNoise21SingleCubicFractalFBMEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = 0, $51 = Math_fround(0), $52 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($11,$12,$13,$14,$15)));
 $8 = $16;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $17 = $10;
  $18 = (($17) + 1)|0;
  $10 = $18;
  $19 = ((($11)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($11)) + 1044|0);
  $23 = loadf($22);
  $24 = $5;
  $25 = Math_fround($24 * $23);
  $5 = $25;
  $26 = ((($11)) + 1044|0);
  $27 = loadf($26);
  $28 = $6;
  $29 = Math_fround($28 * $27);
  $6 = $29;
  $30 = ((($11)) + 1044|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = ((($11)) + 1048|0);
  $35 = loadf($34);
  $36 = $9;
  $37 = Math_fround($36 * $35);
  $9 = $37;
  $38 = $10;
  $39 = (($11) + ($38)|0);
  $40 = load1($39);
  $41 = $5;
  $42 = $6;
  $43 = $7;
  $44 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($11,$40,$41,$42,$43)));
  $45 = $9;
  $46 = Math_fround($44 * $45);
  $47 = $8;
  $48 = Math_fround($47 + $46);
  $8 = $48;
 }
 $49 = $8;
 $50 = ((($11)) + 1056|0);
 $51 = loadf($50);
 $52 = Math_fround($49 * $51);
 STACKTOP = sp;return (Math_fround($52));
}
function __ZNK9FastNoise24SingleCubicFractalBillowEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = 0, $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = Math_fround(0), $41 = 0, $42 = 0, $43 = 0, $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = 0, $57 = Math_fround(0), $58 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround($17 * Math_fround(2.0));
 $19 = Math_fround($18 - Math_fround(1.0));
 $8 = $19;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $20 = $10;
  $21 = (($20) + 1)|0;
  $10 = $21;
  $22 = ((($11)) + 1040|0);
  $23 = load4($22);
  $24 = ($21|0)<($23|0);
  if (!($24)) {
   break;
  }
  $25 = ((($11)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($11)) + 1044|0);
  $30 = loadf($29);
  $31 = $6;
  $32 = Math_fround($31 * $30);
  $6 = $32;
  $33 = ((($11)) + 1044|0);
  $34 = loadf($33);
  $35 = $7;
  $36 = Math_fround($35 * $34);
  $7 = $36;
  $37 = ((($11)) + 1048|0);
  $38 = loadf($37);
  $39 = $9;
  $40 = Math_fround($39 * $38);
  $9 = $40;
  $41 = $10;
  $42 = (($11) + ($41)|0);
  $43 = load1($42);
  $44 = $5;
  $45 = $6;
  $46 = $7;
  $47 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($11,$43,$44,$45,$46)));
  $48 = (Math_fround(__ZL7FastAbsf($47)));
  $49 = Math_fround($48 * Math_fround(2.0));
  $50 = Math_fround($49 - Math_fround(1.0));
  $51 = $9;
  $52 = Math_fround($50 * $51);
  $53 = $8;
  $54 = Math_fround($53 + $52);
  $8 = $54;
 }
 $55 = $8;
 $56 = ((($11)) + 1056|0);
 $57 = loadf($56);
 $58 = Math_fround($55 * $57);
 STACKTOP = sp;return (Math_fround($58));
}
function __ZNK9FastNoise28SingleCubicFractalRigidMultiEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = 0, $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $11 = $4;
 $12 = load1($11);
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $16 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($11,$12,$13,$14,$15)));
 $17 = (Math_fround(__ZL7FastAbsf($16)));
 $18 = Math_fround(Math_fround(1.0) - $17);
 $8 = $18;
 $9 = Math_fround(1.0);
 $10 = 0;
 while(1) {
  $19 = $10;
  $20 = (($19) + 1)|0;
  $10 = $20;
  $21 = ((($11)) + 1040|0);
  $22 = load4($21);
  $23 = ($20|0)<($22|0);
  if (!($23)) {
   break;
  }
  $24 = ((($11)) + 1044|0);
  $25 = loadf($24);
  $26 = $5;
  $27 = Math_fround($26 * $25);
  $5 = $27;
  $28 = ((($11)) + 1044|0);
  $29 = loadf($28);
  $30 = $6;
  $31 = Math_fround($30 * $29);
  $6 = $31;
  $32 = ((($11)) + 1044|0);
  $33 = loadf($32);
  $34 = $7;
  $35 = Math_fround($34 * $33);
  $7 = $35;
  $36 = ((($11)) + 1048|0);
  $37 = loadf($36);
  $38 = $9;
  $39 = Math_fround($38 * $37);
  $9 = $39;
  $40 = $10;
  $41 = (($11) + ($40)|0);
  $42 = load1($41);
  $43 = $5;
  $44 = $6;
  $45 = $7;
  $46 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($11,$42,$43,$44,$45)));
  $47 = (Math_fround(__ZL7FastAbsf($46)));
  $48 = Math_fround(Math_fround(1.0) - $47);
  $49 = $9;
  $50 = Math_fround($48 * $49);
  $51 = $8;
  $52 = Math_fround($51 - $50);
  $8 = $52;
 }
 $53 = $8;
 STACKTOP = sp;return (Math_fround($53));
}
function __ZL7FastAbsf($0) {
 $0 = Math_fround($0);
 var $1 = Math_fround(0), $2 = Math_fround(0), $3 = Math_fround(0), $4 = Math_fround(0), $5 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $2;
 $1 = $3;
 $4 = $1;
 $5 = (Math_fround(Math_abs((Math_fround($4)))));
 STACKTOP = sp;return (Math_fround($5));
}
function __ZL9FastFloorf($0) {
 $0 = Math_fround($0);
 var $1 = Math_fround(0), $2 = Math_fround(0), $3 = 0, $4 = Math_fround(0), $5 = 0, $6 = 0, $7 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = $2 >= Math_fround(0.0);
 $4 = $1;
 $5 = (~~(($4)));
 $6 = (($5) - 1)|0;
 $7 = $3 ? $5 : $6;
 STACKTOP = sp;return ($7|0);
}
function __ZNK9FastNoise14ValCoord3DFastEhiii($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = Math_fround(0), $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $10 = $5;
 $11 = $6;
 $12 = $7;
 $13 = $8;
 $14 = $9;
 $15 = (__ZNK9FastNoise11Index3D_256Ehiii($10,$11,$12,$13,$14)|0);
 $16 = $15&255;
 $17 = (1688 + ($16<<2)|0);
 $18 = loadf($17);
 STACKTOP = sp;return (Math_fround($18));
}
function __ZL9CubicLerpfffff($0,$1,$2,$3,$4) {
 $0 = Math_fround($0);
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $11 = $8;
 $12 = $7;
 $13 = Math_fround($11 - $12);
 $14 = $5;
 $15 = $6;
 $16 = Math_fround($14 - $15);
 $17 = Math_fround($13 - $16);
 $10 = $17;
 $18 = $9;
 $19 = $9;
 $20 = Math_fround($18 * $19);
 $21 = $9;
 $22 = Math_fround($20 * $21);
 $23 = $10;
 $24 = Math_fround($22 * $23);
 $25 = $9;
 $26 = $9;
 $27 = Math_fround($25 * $26);
 $28 = $5;
 $29 = $6;
 $30 = Math_fround($28 - $29);
 $31 = $10;
 $32 = Math_fround($30 - $31);
 $33 = Math_fround($27 * $32);
 $34 = Math_fround($24 + $33);
 $35 = $9;
 $36 = $7;
 $37 = $5;
 $38 = Math_fround($36 - $37);
 $39 = Math_fround($35 * $38);
 $40 = Math_fround($34 + $39);
 $41 = $6;
 $42 = Math_fround($40 + $41);
 STACKTOP = sp;return (Math_fround($42));
}
function __ZNK9FastNoise11Index3D_256Ehiii($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $10 = $5;
 $11 = $7;
 $12 = $11 & 255;
 $13 = $8;
 $14 = $13 & 255;
 $15 = $9;
 $16 = $15 & 255;
 $17 = $6;
 $18 = $17&255;
 $19 = (($16) + ($18))|0;
 $20 = (($10) + ($19)|0);
 $21 = load1($20);
 $22 = $21&255;
 $23 = (($14) + ($22))|0;
 $24 = (($10) + ($23)|0);
 $25 = load1($24);
 $26 = $25&255;
 $27 = (($12) + ($26))|0;
 $28 = (($10) + ($27)|0);
 $29 = load1($28);
 STACKTOP = sp;return ($29|0);
}
function __ZL10ValCoord3Diiii($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = Math_fround(0), $29 = Math_fround(0);
 var $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $9 = $4;
 $8 = $9;
 $10 = $5;
 $11 = ($10*1619)|0;
 $12 = $8;
 $13 = $12 ^ $11;
 $8 = $13;
 $14 = $6;
 $15 = ($14*31337)|0;
 $16 = $8;
 $17 = $16 ^ $15;
 $8 = $17;
 $18 = $7;
 $19 = ($18*6971)|0;
 $20 = $8;
 $21 = $20 ^ $19;
 $8 = $21;
 $22 = $8;
 $23 = $8;
 $24 = Math_imul($22, $23)|0;
 $25 = $8;
 $26 = Math_imul($24, $25)|0;
 $27 = ($26*60493)|0;
 $28 = (Math_fround(($27|0)));
 $29 = Math_fround($28 / Math_fround(2.14748365E+9));
 STACKTOP = sp;return (Math_fround($29));
}
function __ZL9FastRoundf($0) {
 $0 = Math_fround($0);
 var $$sink = Math_fround(0), $1 = Math_fround(0), $2 = Math_fround(0), $3 = 0, $4 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = $2 >= Math_fround(0.0);
 $4 = $1;
 $5 = Math_fround($4 + Math_fround(0.5));
 $6 = Math_fround($4 - Math_fround(0.5));
 $$sink = $3 ? $5 : $6;
 $7 = (~~(($$sink)));
 STACKTOP = sp;return ($7|0);
}
function __ZNK9FastNoise11GradCoord3DEhiiifff($0,$1,$2,$3,$4,$5,$6,$7) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = Math_fround($5);
 $6 = Math_fround($6);
 $7 = Math_fround($7);
 var $10 = 0, $11 = 0, $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = 0, $25 = 0, $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = 0, $31 = 0, $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = 0, $38 = 0, $39 = 0, $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $8 = $0;
 $9 = $1;
 $10 = $2;
 $11 = $3;
 $12 = $4;
 $13 = $5;
 $14 = $6;
 $15 = $7;
 $17 = $8;
 $18 = $9;
 $19 = $10;
 $20 = $11;
 $21 = $12;
 $22 = (__ZNK9FastNoise10Index3D_12Ehiii($17,$18,$19,$20,$21)|0);
 $16 = $22;
 $23 = $13;
 $24 = $16;
 $25 = $24&255;
 $26 = (5784 + ($25<<2)|0);
 $27 = loadf($26);
 $28 = Math_fround($23 * $27);
 $29 = $14;
 $30 = $16;
 $31 = $30&255;
 $32 = (5832 + ($31<<2)|0);
 $33 = loadf($32);
 $34 = Math_fround($29 * $33);
 $35 = Math_fround($28 + $34);
 $36 = $15;
 $37 = $16;
 $38 = $37&255;
 $39 = (5880 + ($38<<2)|0);
 $40 = loadf($39);
 $41 = Math_fround($36 * $40);
 $42 = Math_fround($35 + $41);
 STACKTOP = sp;return (Math_fround($42));
}
function __ZNK9FastNoise10Index3D_12Ehiii($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $30 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $10 = $5;
 $11 = $7;
 $12 = $11 & 255;
 $13 = $8;
 $14 = $13 & 255;
 $15 = $9;
 $16 = $15 & 255;
 $17 = $6;
 $18 = $17&255;
 $19 = (($16) + ($18))|0;
 $20 = (($10) + ($19)|0);
 $21 = load1($20);
 $22 = $21&255;
 $23 = (($14) + ($22))|0;
 $24 = (($10) + ($23)|0);
 $25 = load1($24);
 $26 = $25&255;
 $27 = (($12) + ($26))|0;
 $28 = ((($10)) + 512|0);
 $29 = (($28) + ($27)|0);
 $30 = load1($29);
 STACKTOP = sp;return ($30|0);
}
function __ZL17InterpHermiteFuncf($0) {
 $0 = Math_fround($0);
 var $1 = Math_fround(0), $2 = Math_fround(0), $3 = Math_fround(0), $4 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = $1;
 $4 = Math_fround($2 * $3);
 $5 = $1;
 $6 = Math_fround(Math_fround(2.0) * $5);
 $7 = Math_fround(Math_fround(3.0) - $6);
 $8 = Math_fround($4 * $7);
 STACKTOP = sp;return (Math_fround($8));
}
function __ZL17InterpQuinticFuncf($0) {
 $0 = Math_fround($0);
 var $1 = Math_fround(0), $10 = Math_fround(0), $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $2 = Math_fround(0), $3 = Math_fround(0), $4 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = $1;
 $3 = $1;
 $4 = Math_fround($2 * $3);
 $5 = $1;
 $6 = Math_fround($4 * $5);
 $7 = $1;
 $8 = $1;
 $9 = Math_fround($8 * Math_fround(6.0));
 $10 = Math_fround($9 - Math_fround(15.0));
 $11 = Math_fround($7 * $10);
 $12 = Math_fround($11 + Math_fround(10.0));
 $13 = Math_fround($6 * $12);
 STACKTOP = sp;return (Math_fround($13));
}
function __ZL4Lerpfff($0,$1,$2) {
 $0 = Math_fround($0);
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = Math_fround(0), $3 = Math_fround(0), $4 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = $5;
 $8 = $4;
 $9 = $3;
 $10 = Math_fround($8 - $9);
 $11 = Math_fround($7 * $10);
 $12 = Math_fround($6 + $11);
 STACKTOP = sp;return (Math_fround($12));
}
function __ZNK9FastNoise8GetNoiseEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = Math_fround(0), $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = Math_fround(0), $35 = 0, $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0);
 var $48 = Math_fround(0), $49 = 0, $5 = Math_fround(0), $50 = 0, $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = Math_fround(0), $58 = Math_fround(0), $59 = Math_fround(0), $6 = Math_fround(0), $60 = 0, $61 = 0, $62 = Math_fround(0), $63 = Math_fround(0), $64 = Math_fround(0), $65 = Math_fround(0);
 var $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = Math_fround(0), $7 = 0, $70 = Math_fround(0), $71 = Math_fround(0), $72 = 0, $73 = 0, $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = Math_fround(0), $78 = Math_fround(0), $79 = Math_fround(0), $8 = 0, $80 = Math_fround(0), $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0);
 var $9 = Math_fround(0), $switch = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $4;
 $8 = ((($7)) + 1028|0);
 $9 = loadf($8);
 $10 = $5;
 $11 = Math_fround($10 * $9);
 $5 = $11;
 $12 = ((($7)) + 1028|0);
 $13 = loadf($12);
 $14 = $6;
 $15 = Math_fround($14 * $13);
 $6 = $15;
 $16 = ((($7)) + 1036|0);
 $17 = load4($16);
 L1: do {
  switch ($17|0) {
  case 0:  {
   $18 = $5;
   $19 = $6;
   $20 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($7,0,$18,$19)));
   $3 = $20;
   break;
  }
  case 1:  {
   $21 = ((($7)) + 1052|0);
   $22 = load4($21);
   switch ($22|0) {
   case 0:  {
    $23 = $5;
    $24 = $6;
    $25 = (Math_fround(__ZNK9FastNoise21SingleValueFractalFBMEff($7,$23,$24)));
    $3 = $25;
    break L1;
    break;
   }
   case 1:  {
    $26 = $5;
    $27 = $6;
    $28 = (Math_fround(__ZNK9FastNoise24SingleValueFractalBillowEff($7,$26,$27)));
    $3 = $28;
    break L1;
    break;
   }
   case 2:  {
    $29 = $5;
    $30 = $6;
    $31 = (Math_fround(__ZNK9FastNoise28SingleValueFractalRigidMultiEff($7,$29,$30)));
    $3 = $31;
    break L1;
    break;
   }
   default: {
    label = 7;
    break L1;
   }
   }
   break;
  }
  case 2:  {
   label = 7;
   break;
  }
  case 3:  {
   $35 = ((($7)) + 1052|0);
   $36 = load4($35);
   switch ($36|0) {
   case 0:  {
    $37 = $5;
    $38 = $6;
    $39 = (Math_fround(__ZNK9FastNoise22SinglePerlinFractalFBMEff($7,$37,$38)));
    $3 = $39;
    break L1;
    break;
   }
   case 1:  {
    $40 = $5;
    $41 = $6;
    $42 = (Math_fround(__ZNK9FastNoise25SinglePerlinFractalBillowEff($7,$40,$41)));
    $3 = $42;
    break L1;
    break;
   }
   case 2:  {
    $43 = $5;
    $44 = $6;
    $45 = (Math_fround(__ZNK9FastNoise29SinglePerlinFractalRigidMultiEff($7,$43,$44)));
    $3 = $45;
    break L1;
    break;
   }
   default: {
    label = 12;
    break L1;
   }
   }
   break;
  }
  case 4:  {
   label = 12;
   break;
  }
  case 5:  {
   $49 = ((($7)) + 1052|0);
   $50 = load4($49);
   switch ($50|0) {
   case 0:  {
    $51 = $5;
    $52 = $6;
    $53 = (Math_fround(__ZNK9FastNoise23SingleSimplexFractalFBMEff($7,$51,$52)));
    $3 = $53;
    break L1;
    break;
   }
   case 1:  {
    $54 = $5;
    $55 = $6;
    $56 = (Math_fround(__ZNK9FastNoise26SingleSimplexFractalBillowEff($7,$54,$55)));
    $3 = $56;
    break L1;
    break;
   }
   case 2:  {
    $57 = $5;
    $58 = $6;
    $59 = (Math_fround(__ZNK9FastNoise30SingleSimplexFractalRigidMultiEff($7,$57,$58)));
    $3 = $59;
    break L1;
    break;
   }
   default: {
    label = 17;
    break L1;
   }
   }
   break;
  }
  case 6:  {
   label = 17;
   break;
  }
  case 7:  {
   $66 = $5;
   $67 = $6;
   $68 = (Math_fround(__ZNK9FastNoise13GetWhiteNoiseEff($7,$66,$67)));
   $3 = $68;
   break;
  }
  case 8:  {
   $69 = $5;
   $70 = $6;
   $71 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($7,0,$69,$70)));
   $3 = $71;
   break;
  }
  case 9:  {
   $72 = ((($7)) + 1052|0);
   $73 = load4($72);
   switch ($73|0) {
   case 0:  {
    $74 = $5;
    $75 = $6;
    $76 = (Math_fround(__ZNK9FastNoise21SingleCubicFractalFBMEff($7,$74,$75)));
    $3 = $76;
    break L1;
    break;
   }
   case 1:  {
    $77 = $5;
    $78 = $6;
    $79 = (Math_fround(__ZNK9FastNoise24SingleCubicFractalBillowEff($7,$77,$78)));
    $3 = $79;
    break L1;
    break;
   }
   case 2:  {
    $80 = $5;
    $81 = $6;
    $82 = (Math_fround(__ZNK9FastNoise28SingleCubicFractalRigidMultiEff($7,$80,$81)));
    $3 = $82;
    break L1;
    break;
   }
   default: {
    label = 26;
    break L1;
   }
   }
   break;
  }
  default: {
   label = 26;
  }
  }
 } while(0);
 do {
  if ((label|0) == 7) {
   $32 = $5;
   $33 = $6;
   $34 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($7,0,$32,$33)));
   $3 = $34;
  }
  else if ((label|0) == 12) {
   $46 = $5;
   $47 = $6;
   $48 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($7,0,$46,$47)));
   $3 = $48;
  }
  else if ((label|0) == 17) {
   $60 = ((($7)) + 1064|0);
   $61 = load4($60);
   $switch = ($61>>>0)<(3);
   $62 = $5;
   $63 = $6;
   if ($switch) {
    $64 = (Math_fround(__ZNK9FastNoise14SingleCellularEff($7,$62,$63)));
    $3 = $64;
    break;
   } else {
    $65 = (Math_fround(__ZNK9FastNoise19SingleCellular2EdgeEff($7,$62,$63)));
    $3 = $65;
    break;
   }
  }
  else if ((label|0) == 26) {
   $3 = Math_fround(0.0);
  }
 } while(0);
 $83 = $3;
 STACKTOP = sp;return (Math_fround($83));
}
function __ZNK9FastNoise11SingleValueEhff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = 0, $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = Math_fround(0), $28 = 0, $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = Math_fround(0), $41 = 0, $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = 0, $47 = Math_fround(0), $48 = Math_fround(0);
 var $49 = Math_fround(0), $5 = 0, $50 = Math_fround(0), $51 = 0, $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = 0, $56 = 0, $57 = 0, $58 = Math_fround(0), $59 = 0, $6 = Math_fround(0), $60 = 0, $61 = 0, $62 = Math_fround(0), $63 = Math_fround(0), $64 = Math_fround(0), $65 = 0, $66 = 0;
 var $67 = 0, $68 = Math_fround(0), $69 = 0, $7 = Math_fround(0), $70 = 0, $71 = 0, $72 = Math_fround(0), $73 = Math_fround(0), $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = Math_fround(0), $78 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 48|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(48|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $16 = $4;
 $17 = $6;
 $18 = (__ZL9FastFloorf($17)|0);
 $8 = $18;
 $19 = $7;
 $20 = (__ZL9FastFloorf($19)|0);
 $9 = $20;
 $21 = $8;
 $22 = (($21) + 1)|0;
 $10 = $22;
 $23 = $9;
 $24 = (($23) + 1)|0;
 $11 = $24;
 $25 = ((($16)) + 1032|0);
 $26 = load4($25);
 switch ($26|0) {
 case 0:  {
  $27 = $6;
  $28 = $8;
  $29 = (Math_fround(($28|0)));
  $30 = Math_fround($27 - $29);
  $12 = $30;
  $31 = $7;
  $32 = $9;
  $33 = (Math_fround(($32|0)));
  $34 = Math_fround($31 - $33);
  $13 = $34;
  break;
 }
 case 1:  {
  $35 = $6;
  $36 = $8;
  $37 = (Math_fround(($36|0)));
  $38 = Math_fround($35 - $37);
  $39 = (Math_fround(__ZL17InterpHermiteFuncf($38)));
  $12 = $39;
  $40 = $7;
  $41 = $9;
  $42 = (Math_fround(($41|0)));
  $43 = Math_fround($40 - $42);
  $44 = (Math_fround(__ZL17InterpHermiteFuncf($43)));
  $13 = $44;
  break;
 }
 case 2:  {
  $45 = $6;
  $46 = $8;
  $47 = (Math_fround(($46|0)));
  $48 = Math_fround($45 - $47);
  $49 = (Math_fround(__ZL17InterpQuinticFuncf($48)));
  $12 = $49;
  $50 = $7;
  $51 = $9;
  $52 = (Math_fround(($51|0)));
  $53 = Math_fround($50 - $52);
  $54 = (Math_fround(__ZL17InterpQuinticFuncf($53)));
  $13 = $54;
  break;
 }
 default: {
 }
 }
 $55 = $5;
 $56 = $8;
 $57 = $9;
 $58 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($16,$55,$56,$57)));
 $59 = $5;
 $60 = $10;
 $61 = $9;
 $62 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($16,$59,$60,$61)));
 $63 = $12;
 $64 = (Math_fround(__ZL4Lerpfff($58,$62,$63)));
 $14 = $64;
 $65 = $5;
 $66 = $8;
 $67 = $11;
 $68 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($16,$65,$66,$67)));
 $69 = $5;
 $70 = $10;
 $71 = $11;
 $72 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($16,$69,$70,$71)));
 $73 = $12;
 $74 = (Math_fround(__ZL4Lerpfff($68,$72,$73)));
 $15 = $74;
 $75 = $14;
 $76 = $15;
 $77 = $13;
 $78 = (Math_fround(__ZL4Lerpfff($75,$76,$77)));
 STACKTOP = sp;return (Math_fround($78));
}
function __ZNK9FastNoise21SingleValueFractalFBMEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = 0, $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = Math_fround(0), $31 = 0, $32 = 0, $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0);
 var $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($9,$10,$11,$12)));
 $6 = $13;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $14 = $8;
  $15 = (($14) + 1)|0;
  $8 = $15;
  $16 = ((($9)) + 1040|0);
  $17 = load4($16);
  $18 = ($15|0)<($17|0);
  if (!($18)) {
   break;
  }
  $19 = ((($9)) + 1044|0);
  $20 = loadf($19);
  $21 = $4;
  $22 = Math_fround($21 * $20);
  $4 = $22;
  $23 = ((($9)) + 1044|0);
  $24 = loadf($23);
  $25 = $5;
  $26 = Math_fround($25 * $24);
  $5 = $26;
  $27 = ((($9)) + 1048|0);
  $28 = loadf($27);
  $29 = $7;
  $30 = Math_fround($29 * $28);
  $7 = $30;
  $31 = $8;
  $32 = (($9) + ($31)|0);
  $33 = load1($32);
  $34 = $4;
  $35 = $5;
  $36 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($9,$33,$34,$35)));
  $37 = $7;
  $38 = Math_fround($36 * $37);
  $39 = $6;
  $40 = Math_fround($39 + $38);
  $6 = $40;
 }
 $41 = $6;
 $42 = ((($9)) + 1056|0);
 $43 = loadf($42);
 $44 = Math_fround($41 * $43);
 STACKTOP = sp;return (Math_fround($44));
}
function __ZNK9FastNoise24SingleValueFractalBillowEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = 0, $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0);
 var $48 = 0, $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround($14 * Math_fround(2.0));
 $16 = Math_fround($15 - Math_fround(1.0));
 $6 = $16;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $17 = $8;
  $18 = (($17) + 1)|0;
  $8 = $18;
  $19 = ((($9)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($9)) + 1044|0);
  $23 = loadf($22);
  $24 = $4;
  $25 = Math_fround($24 * $23);
  $4 = $25;
  $26 = ((($9)) + 1044|0);
  $27 = loadf($26);
  $28 = $5;
  $29 = Math_fround($28 * $27);
  $5 = $29;
  $30 = ((($9)) + 1048|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = $8;
  $35 = (($9) + ($34)|0);
  $36 = load1($35);
  $37 = $4;
  $38 = $5;
  $39 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($9,$36,$37,$38)));
  $40 = (Math_fround(__ZL7FastAbsf($39)));
  $41 = Math_fround($40 * Math_fround(2.0));
  $42 = Math_fround($41 - Math_fround(1.0));
  $43 = $7;
  $44 = Math_fround($42 * $43);
  $45 = $6;
  $46 = Math_fround($45 + $44);
  $6 = $46;
 }
 $47 = $6;
 $48 = ((($9)) + 1056|0);
 $49 = loadf($48);
 $50 = Math_fround($47 * $49);
 STACKTOP = sp;return (Math_fround($50));
}
function __ZNK9FastNoise28SingleValueFractalRigidMultiEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $3 = 0, $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = 0, $35 = 0, $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0);
 var $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround(Math_fround(1.0) - $14);
 $6 = $15;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $16 = $8;
  $17 = (($16) + 1)|0;
  $8 = $17;
  $18 = ((($9)) + 1040|0);
  $19 = load4($18);
  $20 = ($17|0)<($19|0);
  if (!($20)) {
   break;
  }
  $21 = ((($9)) + 1044|0);
  $22 = loadf($21);
  $23 = $4;
  $24 = Math_fround($23 * $22);
  $4 = $24;
  $25 = ((($9)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($9)) + 1048|0);
  $30 = loadf($29);
  $31 = $7;
  $32 = Math_fround($31 * $30);
  $7 = $32;
  $33 = $8;
  $34 = (($9) + ($33)|0);
  $35 = load1($34);
  $36 = $4;
  $37 = $5;
  $38 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($9,$35,$36,$37)));
  $39 = (Math_fround(__ZL7FastAbsf($38)));
  $40 = Math_fround(Math_fround(1.0) - $39);
  $41 = $7;
  $42 = Math_fround($40 * $41);
  $43 = $6;
  $44 = Math_fround($43 - $42);
  $6 = $44;
 }
 $45 = $6;
 STACKTOP = sp;return (Math_fround($45));
}
function __ZNK9FastNoise12SinglePerlinEhff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $100 = Math_fround(0), $101 = Math_fround(0), $102 = Math_fround(0), $11 = 0, $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = 0, $21 = Math_fround(0), $22 = 0, $23 = Math_fround(0), $24 = 0, $25 = 0, $26 = 0;
 var $27 = 0, $28 = 0, $29 = 0, $30 = 0, $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = 0, $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = 0;
 var $46 = Math_fround(0), $47 = Math_fround(0), $48 = Math_fround(0), $49 = Math_fround(0), $5 = 0, $50 = 0, $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = 0, $56 = Math_fround(0), $57 = Math_fround(0), $58 = Math_fround(0), $59 = Math_fround(0), $6 = Math_fround(0), $60 = 0, $61 = Math_fround(0), $62 = Math_fround(0), $63 = Math_fround(0);
 var $64 = 0, $65 = Math_fround(0), $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = Math_fround(0), $7 = Math_fround(0), $70 = Math_fround(0), $71 = 0, $72 = 0, $73 = 0, $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = 0, $78 = 0, $79 = 0, $8 = 0, $80 = Math_fround(0), $81 = Math_fround(0);
 var $82 = Math_fround(0), $83 = Math_fround(0), $84 = Math_fround(0), $85 = 0, $86 = 0, $87 = 0, $88 = Math_fround(0), $89 = Math_fround(0), $9 = 0, $90 = Math_fround(0), $91 = 0, $92 = 0, $93 = 0, $94 = Math_fround(0), $95 = Math_fround(0), $96 = Math_fround(0), $97 = Math_fround(0), $98 = Math_fround(0), $99 = Math_fround(0), label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 64|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(64|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $20 = $4;
 $21 = $6;
 $22 = (__ZL9FastFloorf($21)|0);
 $8 = $22;
 $23 = $7;
 $24 = (__ZL9FastFloorf($23)|0);
 $9 = $24;
 $25 = $8;
 $26 = (($25) + 1)|0;
 $10 = $26;
 $27 = $9;
 $28 = (($27) + 1)|0;
 $11 = $28;
 $29 = ((($20)) + 1032|0);
 $30 = load4($29);
 switch ($30|0) {
 case 0:  {
  $31 = $6;
  $32 = $8;
  $33 = (Math_fround(($32|0)));
  $34 = Math_fround($31 - $33);
  $12 = $34;
  $35 = $7;
  $36 = $9;
  $37 = (Math_fround(($36|0)));
  $38 = Math_fround($35 - $37);
  $13 = $38;
  break;
 }
 case 1:  {
  $39 = $6;
  $40 = $8;
  $41 = (Math_fround(($40|0)));
  $42 = Math_fround($39 - $41);
  $43 = (Math_fround(__ZL17InterpHermiteFuncf($42)));
  $12 = $43;
  $44 = $7;
  $45 = $9;
  $46 = (Math_fround(($45|0)));
  $47 = Math_fround($44 - $46);
  $48 = (Math_fround(__ZL17InterpHermiteFuncf($47)));
  $13 = $48;
  break;
 }
 case 2:  {
  $49 = $6;
  $50 = $8;
  $51 = (Math_fround(($50|0)));
  $52 = Math_fround($49 - $51);
  $53 = (Math_fround(__ZL17InterpQuinticFuncf($52)));
  $12 = $53;
  $54 = $7;
  $55 = $9;
  $56 = (Math_fround(($55|0)));
  $57 = Math_fround($54 - $56);
  $58 = (Math_fround(__ZL17InterpQuinticFuncf($57)));
  $13 = $58;
  break;
 }
 default: {
 }
 }
 $59 = $6;
 $60 = $8;
 $61 = (Math_fround(($60|0)));
 $62 = Math_fround($59 - $61);
 $14 = $62;
 $63 = $7;
 $64 = $9;
 $65 = (Math_fround(($64|0)));
 $66 = Math_fround($63 - $65);
 $15 = $66;
 $67 = $14;
 $68 = Math_fround($67 - Math_fround(1.0));
 $16 = $68;
 $69 = $15;
 $70 = Math_fround($69 - Math_fround(1.0));
 $17 = $70;
 $71 = $5;
 $72 = $8;
 $73 = $9;
 $74 = $14;
 $75 = $15;
 $76 = (Math_fround(__ZNK9FastNoise11GradCoord2DEhiiff($20,$71,$72,$73,$74,$75)));
 $77 = $5;
 $78 = $10;
 $79 = $9;
 $80 = $16;
 $81 = $15;
 $82 = (Math_fround(__ZNK9FastNoise11GradCoord2DEhiiff($20,$77,$78,$79,$80,$81)));
 $83 = $12;
 $84 = (Math_fround(__ZL4Lerpfff($76,$82,$83)));
 $18 = $84;
 $85 = $5;
 $86 = $8;
 $87 = $11;
 $88 = $14;
 $89 = $17;
 $90 = (Math_fround(__ZNK9FastNoise11GradCoord2DEhiiff($20,$85,$86,$87,$88,$89)));
 $91 = $5;
 $92 = $10;
 $93 = $11;
 $94 = $16;
 $95 = $17;
 $96 = (Math_fround(__ZNK9FastNoise11GradCoord2DEhiiff($20,$91,$92,$93,$94,$95)));
 $97 = $12;
 $98 = (Math_fround(__ZL4Lerpfff($90,$96,$97)));
 $19 = $98;
 $99 = $18;
 $100 = $19;
 $101 = $13;
 $102 = (Math_fround(__ZL4Lerpfff($99,$100,$101)));
 STACKTOP = sp;return (Math_fround($102));
}
function __ZNK9FastNoise22SinglePerlinFractalFBMEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = 0, $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = Math_fround(0), $31 = 0, $32 = 0, $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0);
 var $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($9,$10,$11,$12)));
 $6 = $13;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $14 = $8;
  $15 = (($14) + 1)|0;
  $8 = $15;
  $16 = ((($9)) + 1040|0);
  $17 = load4($16);
  $18 = ($15|0)<($17|0);
  if (!($18)) {
   break;
  }
  $19 = ((($9)) + 1044|0);
  $20 = loadf($19);
  $21 = $4;
  $22 = Math_fround($21 * $20);
  $4 = $22;
  $23 = ((($9)) + 1044|0);
  $24 = loadf($23);
  $25 = $5;
  $26 = Math_fround($25 * $24);
  $5 = $26;
  $27 = ((($9)) + 1048|0);
  $28 = loadf($27);
  $29 = $7;
  $30 = Math_fround($29 * $28);
  $7 = $30;
  $31 = $8;
  $32 = (($9) + ($31)|0);
  $33 = load1($32);
  $34 = $4;
  $35 = $5;
  $36 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($9,$33,$34,$35)));
  $37 = $7;
  $38 = Math_fround($36 * $37);
  $39 = $6;
  $40 = Math_fround($39 + $38);
  $6 = $40;
 }
 $41 = $6;
 $42 = ((($9)) + 1056|0);
 $43 = loadf($42);
 $44 = Math_fround($41 * $43);
 STACKTOP = sp;return (Math_fround($44));
}
function __ZNK9FastNoise25SinglePerlinFractalBillowEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = 0, $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0);
 var $48 = 0, $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround($14 * Math_fround(2.0));
 $16 = Math_fround($15 - Math_fround(1.0));
 $6 = $16;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $17 = $8;
  $18 = (($17) + 1)|0;
  $8 = $18;
  $19 = ((($9)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($9)) + 1044|0);
  $23 = loadf($22);
  $24 = $4;
  $25 = Math_fround($24 * $23);
  $4 = $25;
  $26 = ((($9)) + 1044|0);
  $27 = loadf($26);
  $28 = $5;
  $29 = Math_fround($28 * $27);
  $5 = $29;
  $30 = ((($9)) + 1048|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = $8;
  $35 = (($9) + ($34)|0);
  $36 = load1($35);
  $37 = $4;
  $38 = $5;
  $39 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($9,$36,$37,$38)));
  $40 = (Math_fround(__ZL7FastAbsf($39)));
  $41 = Math_fround($40 * Math_fround(2.0));
  $42 = Math_fround($41 - Math_fround(1.0));
  $43 = $7;
  $44 = Math_fround($42 * $43);
  $45 = $6;
  $46 = Math_fround($45 + $44);
  $6 = $46;
 }
 $47 = $6;
 $48 = ((($9)) + 1056|0);
 $49 = loadf($48);
 $50 = Math_fround($47 * $49);
 STACKTOP = sp;return (Math_fround($50));
}
function __ZNK9FastNoise29SinglePerlinFractalRigidMultiEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $3 = 0, $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = 0, $35 = 0, $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0);
 var $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround(Math_fround(1.0) - $14);
 $6 = $15;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $16 = $8;
  $17 = (($16) + 1)|0;
  $8 = $17;
  $18 = ((($9)) + 1040|0);
  $19 = load4($18);
  $20 = ($17|0)<($19|0);
  if (!($20)) {
   break;
  }
  $21 = ((($9)) + 1044|0);
  $22 = loadf($21);
  $23 = $4;
  $24 = Math_fround($23 * $22);
  $4 = $24;
  $25 = ((($9)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($9)) + 1048|0);
  $30 = loadf($29);
  $31 = $7;
  $32 = Math_fround($31 * $30);
  $7 = $32;
  $33 = $8;
  $34 = (($9) + ($33)|0);
  $35 = load1($34);
  $36 = $4;
  $37 = $5;
  $38 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($9,$35,$36,$37)));
  $39 = (Math_fround(__ZL7FastAbsf($38)));
  $40 = Math_fround(Math_fround(1.0) - $39);
  $41 = $7;
  $42 = Math_fround($40 * $41);
  $43 = $6;
  $44 = Math_fround($43 - $42);
  $6 = $44;
 }
 $45 = $6;
 STACKTOP = sp;return (Math_fround($45));
}
function __ZNK9FastNoise13SingleSimplexEhff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $100 = Math_fround(0), $101 = Math_fround(0), $102 = Math_fround(0), $103 = Math_fround(0), $104 = Math_fround(0), $105 = Math_fround(0), $106 = Math_fround(0), $107 = 0, $108 = Math_fround(0), $109 = Math_fround(0), $11 = Math_fround(0), $110 = Math_fround(0), $111 = Math_fround(0), $112 = Math_fround(0), $113 = Math_fround(0), $114 = 0, $115 = 0, $116 = 0, $117 = 0;
 var $118 = 0, $119 = 0, $12 = Math_fround(0), $120 = 0, $121 = Math_fround(0), $122 = Math_fround(0), $123 = Math_fround(0), $124 = Math_fround(0), $125 = Math_fround(0), $126 = Math_fround(0), $127 = Math_fround(0), $128 = Math_fround(0), $129 = Math_fround(0), $13 = Math_fround(0), $130 = Math_fround(0), $131 = Math_fround(0), $132 = Math_fround(0), $133 = Math_fround(0), $134 = 0, $135 = Math_fround(0);
 var $136 = Math_fround(0), $137 = Math_fround(0), $138 = Math_fround(0), $139 = Math_fround(0), $14 = Math_fround(0), $140 = Math_fround(0), $141 = 0, $142 = 0, $143 = 0, $144 = 0, $145 = 0, $146 = Math_fround(0), $147 = Math_fround(0), $148 = Math_fround(0), $149 = Math_fround(0), $15 = 0, $150 = Math_fround(0), $151 = Math_fround(0), $152 = Math_fround(0), $153 = Math_fround(0);
 var $154 = Math_fround(0), $155 = Math_fround(0), $16 = 0, $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0), $30 = Math_fround(0), $31 = Math_fround(0), $32 = 0, $33 = Math_fround(0);
 var $34 = Math_fround(0), $35 = Math_fround(0), $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = Math_fround(0), $41 = Math_fround(0), $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = 0, $47 = Math_fround(0), $48 = Math_fround(0), $49 = Math_fround(0), $5 = 0, $50 = Math_fround(0), $51 = Math_fround(0);
 var $52 = Math_fround(0), $53 = Math_fround(0), $54 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = Math_fround(0), $58 = 0, $59 = Math_fround(0), $6 = Math_fround(0), $60 = 0, $61 = Math_fround(0), $62 = Math_fround(0), $63 = Math_fround(0), $64 = Math_fround(0), $65 = 0, $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = Math_fround(0), $7 = Math_fround(0);
 var $70 = Math_fround(0), $71 = Math_fround(0), $72 = Math_fround(0), $73 = Math_fround(0), $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = Math_fround(0), $78 = Math_fround(0), $79 = Math_fround(0), $8 = Math_fround(0), $80 = Math_fround(0), $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = 0, $85 = Math_fround(0), $86 = Math_fround(0), $87 = Math_fround(0), $88 = Math_fround(0);
 var $89 = Math_fround(0), $9 = 0, $90 = Math_fround(0), $91 = 0, $92 = 0, $93 = 0, $94 = Math_fround(0), $95 = Math_fround(0), $96 = Math_fround(0), $97 = Math_fround(0), $98 = Math_fround(0), $99 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 80|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(80|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $24 = $4;
 $25 = $6;
 $26 = $7;
 $27 = Math_fround($25 + $26);
 $28 = Math_fround($27 * Math_fround(0.366025388));
 $8 = $28;
 $29 = $6;
 $30 = $8;
 $31 = Math_fround($29 + $30);
 $32 = (__ZL9FastFloorf($31)|0);
 $9 = $32;
 $33 = $7;
 $34 = $8;
 $35 = Math_fround($33 + $34);
 $36 = (__ZL9FastFloorf($35)|0);
 $10 = $36;
 $37 = $9;
 $38 = $10;
 $39 = (($37) + ($38))|0;
 $40 = (Math_fround(($39|0)));
 $41 = Math_fround($40 * Math_fround(0.211324871));
 $8 = $41;
 $42 = $9;
 $43 = (Math_fround(($42|0)));
 $44 = $8;
 $45 = Math_fround($43 - $44);
 $11 = $45;
 $46 = $10;
 $47 = (Math_fround(($46|0)));
 $48 = $8;
 $49 = Math_fround($47 - $48);
 $12 = $49;
 $50 = $6;
 $51 = $11;
 $52 = Math_fround($50 - $51);
 $13 = $52;
 $53 = $7;
 $54 = $12;
 $55 = Math_fround($53 - $54);
 $14 = $55;
 $56 = $13;
 $57 = $14;
 $58 = $56 > $57;
 if ($58) {
  $15 = 1;
  $16 = 0;
 } else {
  $15 = 0;
  $16 = 1;
 }
 $59 = $13;
 $60 = $15;
 $61 = (Math_fround(($60|0)));
 $62 = Math_fround($59 - $61);
 $63 = Math_fround($62 + Math_fround(0.211324871));
 $17 = $63;
 $64 = $14;
 $65 = $16;
 $66 = (Math_fround(($65|0)));
 $67 = Math_fround($64 - $66);
 $68 = Math_fround($67 + Math_fround(0.211324871));
 $18 = $68;
 $69 = $13;
 $70 = Math_fround($69 - Math_fround(1.0));
 $71 = Math_fround($70 + Math_fround(0.422649741));
 $19 = $71;
 $72 = $14;
 $73 = Math_fround($72 - Math_fround(1.0));
 $74 = Math_fround($73 + Math_fround(0.422649741));
 $20 = $74;
 $75 = $13;
 $76 = $13;
 $77 = Math_fround($75 * $76);
 $78 = Math_fround(Math_fround(0.5) - $77);
 $79 = $14;
 $80 = $14;
 $81 = Math_fround($79 * $80);
 $82 = Math_fround($78 - $81);
 $8 = $82;
 $83 = $8;
 $84 = $83 < Math_fround(0.0);
 if ($84) {
  $21 = Math_fround(0.0);
 } else {
  $85 = $8;
  $86 = $8;
  $87 = Math_fround($86 * $85);
  $8 = $87;
  $88 = $8;
  $89 = $8;
  $90 = Math_fround($88 * $89);
  $91 = $5;
  $92 = $9;
  $93 = $10;
  $94 = $13;
  $95 = $14;
  $96 = (Math_fround(__ZNK9FastNoise11GradCoord2DEhiiff($24,$91,$92,$93,$94,$95)));
  $97 = Math_fround($90 * $96);
  $21 = $97;
 }
 $98 = $17;
 $99 = $17;
 $100 = Math_fround($98 * $99);
 $101 = Math_fround(Math_fround(0.5) - $100);
 $102 = $18;
 $103 = $18;
 $104 = Math_fround($102 * $103);
 $105 = Math_fround($101 - $104);
 $8 = $105;
 $106 = $8;
 $107 = $106 < Math_fround(0.0);
 if ($107) {
  $22 = Math_fround(0.0);
 } else {
  $108 = $8;
  $109 = $8;
  $110 = Math_fround($109 * $108);
  $8 = $110;
  $111 = $8;
  $112 = $8;
  $113 = Math_fround($111 * $112);
  $114 = $5;
  $115 = $9;
  $116 = $15;
  $117 = (($115) + ($116))|0;
  $118 = $10;
  $119 = $16;
  $120 = (($118) + ($119))|0;
  $121 = $17;
  $122 = $18;
  $123 = (Math_fround(__ZNK9FastNoise11GradCoord2DEhiiff($24,$114,$117,$120,$121,$122)));
  $124 = Math_fround($113 * $123);
  $22 = $124;
 }
 $125 = $19;
 $126 = $19;
 $127 = Math_fround($125 * $126);
 $128 = Math_fround(Math_fround(0.5) - $127);
 $129 = $20;
 $130 = $20;
 $131 = Math_fround($129 * $130);
 $132 = Math_fround($128 - $131);
 $8 = $132;
 $133 = $8;
 $134 = $133 < Math_fround(0.0);
 if ($134) {
  $23 = Math_fround(0.0);
  $150 = $21;
  $151 = $22;
  $152 = Math_fround($150 + $151);
  $153 = $23;
  $154 = Math_fround($152 + $153);
  $155 = Math_fround(Math_fround(70.0) * $154);
  STACKTOP = sp;return (Math_fround($155));
 } else {
  $135 = $8;
  $136 = $8;
  $137 = Math_fround($136 * $135);
  $8 = $137;
  $138 = $8;
  $139 = $8;
  $140 = Math_fround($138 * $139);
  $141 = $5;
  $142 = $9;
  $143 = (($142) + 1)|0;
  $144 = $10;
  $145 = (($144) + 1)|0;
  $146 = $19;
  $147 = $20;
  $148 = (Math_fround(__ZNK9FastNoise11GradCoord2DEhiiff($24,$141,$143,$145,$146,$147)));
  $149 = Math_fround($140 * $148);
  $23 = $149;
  $150 = $21;
  $151 = $22;
  $152 = Math_fround($150 + $151);
  $153 = $23;
  $154 = Math_fround($152 + $153);
  $155 = Math_fround(Math_fround(70.0) * $154);
  STACKTOP = sp;return (Math_fround($155));
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise23SingleSimplexFractalFBMEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = 0, $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = Math_fround(0), $31 = 0, $32 = 0, $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0);
 var $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($9,$10,$11,$12)));
 $6 = $13;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $14 = $8;
  $15 = (($14) + 1)|0;
  $8 = $15;
  $16 = ((($9)) + 1040|0);
  $17 = load4($16);
  $18 = ($15|0)<($17|0);
  if (!($18)) {
   break;
  }
  $19 = ((($9)) + 1044|0);
  $20 = loadf($19);
  $21 = $4;
  $22 = Math_fround($21 * $20);
  $4 = $22;
  $23 = ((($9)) + 1044|0);
  $24 = loadf($23);
  $25 = $5;
  $26 = Math_fround($25 * $24);
  $5 = $26;
  $27 = ((($9)) + 1048|0);
  $28 = loadf($27);
  $29 = $7;
  $30 = Math_fround($29 * $28);
  $7 = $30;
  $31 = $8;
  $32 = (($9) + ($31)|0);
  $33 = load1($32);
  $34 = $4;
  $35 = $5;
  $36 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($9,$33,$34,$35)));
  $37 = $7;
  $38 = Math_fround($36 * $37);
  $39 = $6;
  $40 = Math_fround($39 + $38);
  $6 = $40;
 }
 $41 = $6;
 $42 = ((($9)) + 1056|0);
 $43 = loadf($42);
 $44 = Math_fround($41 * $43);
 STACKTOP = sp;return (Math_fround($44));
}
function __ZNK9FastNoise26SingleSimplexFractalBillowEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = 0, $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0);
 var $48 = 0, $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround($14 * Math_fround(2.0));
 $16 = Math_fround($15 - Math_fround(1.0));
 $6 = $16;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $17 = $8;
  $18 = (($17) + 1)|0;
  $8 = $18;
  $19 = ((($9)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($9)) + 1044|0);
  $23 = loadf($22);
  $24 = $4;
  $25 = Math_fround($24 * $23);
  $4 = $25;
  $26 = ((($9)) + 1044|0);
  $27 = loadf($26);
  $28 = $5;
  $29 = Math_fround($28 * $27);
  $5 = $29;
  $30 = ((($9)) + 1048|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = $8;
  $35 = (($9) + ($34)|0);
  $36 = load1($35);
  $37 = $4;
  $38 = $5;
  $39 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($9,$36,$37,$38)));
  $40 = (Math_fround(__ZL7FastAbsf($39)));
  $41 = Math_fround($40 * Math_fround(2.0));
  $42 = Math_fround($41 - Math_fround(1.0));
  $43 = $7;
  $44 = Math_fround($42 * $43);
  $45 = $6;
  $46 = Math_fround($45 + $44);
  $6 = $46;
 }
 $47 = $6;
 $48 = ((($9)) + 1056|0);
 $49 = loadf($48);
 $50 = Math_fround($47 * $49);
 STACKTOP = sp;return (Math_fround($50));
}
function __ZNK9FastNoise30SingleSimplexFractalRigidMultiEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $3 = 0, $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = 0, $35 = 0, $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0);
 var $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround(Math_fround(1.0) - $14);
 $6 = $15;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $16 = $8;
  $17 = (($16) + 1)|0;
  $8 = $17;
  $18 = ((($9)) + 1040|0);
  $19 = load4($18);
  $20 = ($17|0)<($19|0);
  if (!($20)) {
   break;
  }
  $21 = ((($9)) + 1044|0);
  $22 = loadf($21);
  $23 = $4;
  $24 = Math_fround($23 * $22);
  $4 = $24;
  $25 = ((($9)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($9)) + 1048|0);
  $30 = loadf($29);
  $31 = $7;
  $32 = Math_fround($31 * $30);
  $7 = $32;
  $33 = $8;
  $34 = (($9) + ($33)|0);
  $35 = load1($34);
  $36 = $4;
  $37 = $5;
  $38 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($9,$35,$36,$37)));
  $39 = (Math_fround(__ZL7FastAbsf($38)));
  $40 = Math_fround(Math_fround(1.0) - $39);
  $41 = $7;
  $42 = Math_fround($40 * $41);
  $43 = $6;
  $44 = Math_fround($43 - $42);
  $6 = $44;
 }
 $45 = $6;
 STACKTOP = sp;return (Math_fround($45));
}
function __ZNK9FastNoise14SingleCellularEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $100 = 0, $101 = 0, $102 = 0, $103 = 0, $104 = 0, $105 = 0, $106 = 0, $107 = 0, $108 = 0, $109 = Math_fround(0), $11 = 0, $110 = Math_fround(0), $111 = Math_fround(0), $112 = 0, $113 = 0, $114 = 0, $115 = Math_fround(0), $116 = 0, $117 = Math_fround(0);
 var $118 = Math_fround(0), $119 = Math_fround(0), $12 = 0, $120 = 0, $121 = Math_fround(0), $122 = Math_fround(0), $123 = Math_fround(0), $124 = 0, $125 = 0, $126 = 0, $127 = Math_fround(0), $128 = 0, $129 = Math_fround(0), $13 = 0, $130 = Math_fround(0), $131 = Math_fround(0), $132 = Math_fround(0), $133 = Math_fround(0), $134 = Math_fround(0), $135 = Math_fround(0);
 var $136 = Math_fround(0), $137 = Math_fround(0), $138 = Math_fround(0), $139 = 0, $14 = 0, $140 = Math_fround(0), $141 = 0, $142 = 0, $143 = 0, $144 = 0, $145 = 0, $146 = 0, $147 = 0, $148 = 0, $149 = 0, $15 = Math_fround(0), $150 = 0, $151 = 0, $152 = 0, $153 = 0;
 var $154 = 0, $155 = 0, $156 = 0, $157 = 0, $158 = 0, $159 = 0, $16 = Math_fround(0), $160 = 0, $161 = 0, $162 = Math_fround(0), $163 = Math_fround(0), $164 = Math_fround(0), $165 = 0, $166 = 0, $167 = 0, $168 = Math_fround(0), $169 = 0, $17 = Math_fround(0), $170 = Math_fround(0), $171 = Math_fround(0);
 var $172 = Math_fround(0), $173 = 0, $174 = Math_fround(0), $175 = Math_fround(0), $176 = Math_fround(0), $177 = 0, $178 = 0, $179 = 0, $18 = 0, $180 = Math_fround(0), $181 = 0, $182 = Math_fround(0), $183 = Math_fround(0), $184 = Math_fround(0), $185 = Math_fround(0), $186 = Math_fround(0), $187 = Math_fround(0), $188 = Math_fround(0), $189 = Math_fround(0), $19 = 0;
 var $190 = Math_fround(0), $191 = Math_fround(0), $192 = Math_fround(0), $193 = Math_fround(0), $194 = Math_fround(0), $195 = Math_fround(0), $196 = Math_fround(0), $197 = Math_fround(0), $198 = Math_fround(0), $199 = Math_fround(0), $20 = 0, $200 = 0, $201 = Math_fround(0), $202 = 0, $203 = 0, $204 = 0, $205 = 0, $206 = 0, $207 = 0, $208 = 0;
 var $209 = 0, $21 = Math_fround(0), $210 = 0, $211 = 0, $212 = 0, $213 = Math_fround(0), $214 = 0, $215 = 0, $216 = 0, $217 = 0, $218 = 0, $219 = 0, $22 = Math_fround(0), $220 = 0, $221 = 0, $222 = 0, $223 = Math_fround(0), $224 = 0, $225 = 0, $226 = 0;
 var $227 = Math_fround(0), $228 = 0, $229 = Math_fround(0), $23 = Math_fround(0), $230 = Math_fround(0), $231 = Math_fround(0), $232 = 0, $233 = Math_fround(0), $234 = 0, $235 = 0, $236 = 0, $237 = Math_fround(0), $238 = 0, $239 = Math_fround(0), $24 = 0, $240 = Math_fround(0), $241 = Math_fround(0), $242 = Math_fround(0), $243 = Math_fround(0), $244 = Math_fround(0);
 var $25 = 0, $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0), $3 = Math_fround(0), $30 = 0, $31 = 0, $32 = Math_fround(0), $33 = 0, $34 = Math_fround(0), $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0;
 var $43 = 0, $44 = 0, $45 = 0, $46 = 0, $47 = 0, $48 = 0, $49 = 0, $5 = Math_fround(0), $50 = 0, $51 = 0, $52 = 0, $53 = 0, $54 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = 0, $58 = 0, $59 = 0, $6 = Math_fround(0), $60 = Math_fround(0);
 var $61 = 0, $62 = Math_fround(0), $63 = Math_fround(0), $64 = Math_fround(0), $65 = 0, $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = 0, $7 = 0, $70 = 0, $71 = 0, $72 = Math_fround(0), $73 = 0, $74 = Math_fround(0), $75 = Math_fround(0), $76 = Math_fround(0), $77 = Math_fround(0), $78 = Math_fround(0), $79 = Math_fround(0);
 var $8 = 0, $80 = Math_fround(0), $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = Math_fround(0), $85 = Math_fround(0), $86 = 0, $87 = Math_fround(0), $88 = 0, $89 = 0, $9 = Math_fround(0), $90 = 0, $91 = 0, $92 = 0, $93 = 0, $94 = 0, $95 = 0, $96 = 0, $97 = 0;
 var $98 = 0, $99 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 112|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(112|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $31 = $4;
 $32 = $5;
 $33 = (__ZL9FastRoundf($32)|0);
 $7 = $33;
 $34 = $6;
 $35 = (__ZL9FastRoundf($34)|0);
 $8 = $35;
 $9 = Math_fround(999999.0);
 $36 = ((($31)) + 1060|0);
 $37 = load4($36);
 L1: do {
  switch ($37|0) {
  case 2:  {
   $146 = $7;
   $147 = (($146) - 1)|0;
   $24 = $147;
   while(1) {
    $148 = $24;
    $149 = $7;
    $150 = (($149) + 1)|0;
    $151 = ($148|0)<=($150|0);
    if (!($151)) {
     break L1;
    }
    $152 = $8;
    $153 = (($152) - 1)|0;
    $25 = $153;
    while(1) {
     $154 = $25;
     $155 = $8;
     $156 = (($155) + 1)|0;
     $157 = ($154|0)<=($156|0);
     $158 = $24;
     if (!($157)) {
      break;
     }
     $159 = $25;
     $160 = (__ZNK9FastNoise11Index2D_256Ehii($31,0,$158,$159)|0);
     $26 = $160;
     $161 = $24;
     $162 = (Math_fround(($161|0)));
     $163 = $5;
     $164 = Math_fround($162 - $163);
     $165 = $26;
     $166 = $165&255;
     $167 = (5944 + ($166<<2)|0);
     $168 = loadf($167);
     $169 = ((($31)) + 1080|0);
     $170 = loadf($169);
     $171 = Math_fround($168 * $170);
     $172 = Math_fround($164 + $171);
     $27 = $172;
     $173 = $25;
     $174 = (Math_fround(($173|0)));
     $175 = $6;
     $176 = Math_fround($174 - $175);
     $177 = $26;
     $178 = $177&255;
     $179 = (6968 + ($178<<2)|0);
     $180 = loadf($179);
     $181 = ((($31)) + 1080|0);
     $182 = loadf($181);
     $183 = Math_fround($180 * $182);
     $184 = Math_fround($176 + $183);
     $28 = $184;
     $185 = $27;
     $186 = (Math_fround(__ZL7FastAbsf($185)));
     $187 = $28;
     $188 = (Math_fround(__ZL7FastAbsf($187)));
     $189 = Math_fround($186 + $188);
     $190 = $27;
     $191 = $27;
     $192 = Math_fround($190 * $191);
     $193 = $28;
     $194 = $28;
     $195 = Math_fround($193 * $194);
     $196 = Math_fround($192 + $195);
     $197 = Math_fround($189 + $196);
     $29 = $197;
     $198 = $29;
     $199 = $9;
     $200 = $198 < $199;
     if ($200) {
      $201 = $29;
      $9 = $201;
      $202 = $24;
      $10 = $202;
      $203 = $25;
      $11 = $203;
     }
     $204 = $25;
     $205 = (($204) + 1)|0;
     $25 = $205;
    }
    $206 = (($158) + 1)|0;
    $24 = $206;
   }
   break;
  }
  case 1:  {
   $93 = $7;
   $94 = (($93) - 1)|0;
   $18 = $94;
   while(1) {
    $95 = $18;
    $96 = $7;
    $97 = (($96) + 1)|0;
    $98 = ($95|0)<=($97|0);
    if (!($98)) {
     break L1;
    }
    $99 = $8;
    $100 = (($99) - 1)|0;
    $19 = $100;
    while(1) {
     $101 = $19;
     $102 = $8;
     $103 = (($102) + 1)|0;
     $104 = ($101|0)<=($103|0);
     $105 = $18;
     if (!($104)) {
      break;
     }
     $106 = $19;
     $107 = (__ZNK9FastNoise11Index2D_256Ehii($31,0,$105,$106)|0);
     $20 = $107;
     $108 = $18;
     $109 = (Math_fround(($108|0)));
     $110 = $5;
     $111 = Math_fround($109 - $110);
     $112 = $20;
     $113 = $112&255;
     $114 = (5944 + ($113<<2)|0);
     $115 = loadf($114);
     $116 = ((($31)) + 1080|0);
     $117 = loadf($116);
     $118 = Math_fround($115 * $117);
     $119 = Math_fround($111 + $118);
     $21 = $119;
     $120 = $19;
     $121 = (Math_fround(($120|0)));
     $122 = $6;
     $123 = Math_fround($121 - $122);
     $124 = $20;
     $125 = $124&255;
     $126 = (6968 + ($125<<2)|0);
     $127 = loadf($126);
     $128 = ((($31)) + 1080|0);
     $129 = loadf($128);
     $130 = Math_fround($127 * $129);
     $131 = Math_fround($123 + $130);
     $22 = $131;
     $132 = $21;
     $133 = (Math_fround(__ZL7FastAbsf($132)));
     $134 = $22;
     $135 = (Math_fround(__ZL7FastAbsf($134)));
     $136 = Math_fround($133 + $135);
     $23 = $136;
     $137 = $23;
     $138 = $9;
     $139 = $137 < $138;
     if ($139) {
      $140 = $23;
      $9 = $140;
      $141 = $18;
      $10 = $141;
      $142 = $19;
      $11 = $142;
     }
     $143 = $19;
     $144 = (($143) + 1)|0;
     $19 = $144;
    }
    $145 = (($105) + 1)|0;
    $18 = $145;
   }
   break;
  }
  default: {
   $38 = $7;
   $39 = (($38) - 1)|0;
   $12 = $39;
   while(1) {
    $40 = $12;
    $41 = $7;
    $42 = (($41) + 1)|0;
    $43 = ($40|0)<=($42|0);
    if (!($43)) {
     break L1;
    }
    $44 = $8;
    $45 = (($44) - 1)|0;
    $13 = $45;
    while(1) {
     $46 = $13;
     $47 = $8;
     $48 = (($47) + 1)|0;
     $49 = ($46|0)<=($48|0);
     $50 = $12;
     if (!($49)) {
      break;
     }
     $51 = $13;
     $52 = (__ZNK9FastNoise11Index2D_256Ehii($31,0,$50,$51)|0);
     $14 = $52;
     $53 = $12;
     $54 = (Math_fround(($53|0)));
     $55 = $5;
     $56 = Math_fround($54 - $55);
     $57 = $14;
     $58 = $57&255;
     $59 = (5944 + ($58<<2)|0);
     $60 = loadf($59);
     $61 = ((($31)) + 1080|0);
     $62 = loadf($61);
     $63 = Math_fround($60 * $62);
     $64 = Math_fround($56 + $63);
     $15 = $64;
     $65 = $13;
     $66 = (Math_fround(($65|0)));
     $67 = $6;
     $68 = Math_fround($66 - $67);
     $69 = $14;
     $70 = $69&255;
     $71 = (6968 + ($70<<2)|0);
     $72 = loadf($71);
     $73 = ((($31)) + 1080|0);
     $74 = loadf($73);
     $75 = Math_fround($72 * $74);
     $76 = Math_fround($68 + $75);
     $16 = $76;
     $77 = $15;
     $78 = $15;
     $79 = Math_fround($77 * $78);
     $80 = $16;
     $81 = $16;
     $82 = Math_fround($80 * $81);
     $83 = Math_fround($79 + $82);
     $17 = $83;
     $84 = $17;
     $85 = $9;
     $86 = $84 < $85;
     if ($86) {
      $87 = $17;
      $9 = $87;
      $88 = $12;
      $10 = $88;
      $89 = $13;
      $11 = $89;
     }
     $90 = $13;
     $91 = (($90) + 1)|0;
     $13 = $91;
    }
    $92 = (($50) + 1)|0;
    $12 = $92;
   }
  }
  }
 } while(0);
 $207 = ((($31)) + 1064|0);
 $208 = load4($207);
 switch ($208|0) {
 case 0:  {
  $209 = ((($31)) + 1024|0);
  $210 = load4($209);
  $211 = $10;
  $212 = $11;
  $213 = (Math_fround(__ZL10ValCoord2Diii($210,$211,$212)));
  $3 = $213;
  $244 = $3;
  STACKTOP = sp;return (Math_fround($244));
  break;
 }
 case 1:  {
  $214 = ((($31)) + 1068|0);
  $215 = load4($214);
  $216 = ($215|0)!=(0|0);
  if (!($216)) {
   ___assert_fail((9925|0),(9947|0),2006,(9971|0));
   // unreachable;
  }
  $217 = $10;
  $218 = $11;
  $219 = (__ZNK9FastNoise11Index2D_256Ehii($31,0,$217,$218)|0);
  $30 = $219;
  $220 = ((($31)) + 1068|0);
  $221 = load4($220);
  $222 = $10;
  $223 = (Math_fround(($222|0)));
  $224 = $30;
  $225 = $224&255;
  $226 = (5944 + ($225<<2)|0);
  $227 = loadf($226);
  $228 = ((($31)) + 1080|0);
  $229 = loadf($228);
  $230 = Math_fround($227 * $229);
  $231 = Math_fround($223 + $230);
  $232 = $11;
  $233 = (Math_fround(($232|0)));
  $234 = $30;
  $235 = $234&255;
  $236 = (6968 + ($235<<2)|0);
  $237 = loadf($236);
  $238 = ((($31)) + 1080|0);
  $239 = loadf($238);
  $240 = Math_fround($237 * $239);
  $241 = Math_fround($233 + $240);
  $242 = (Math_fround(__ZNK9FastNoise8GetNoiseEff($221,$231,$241)));
  $3 = $242;
  $244 = $3;
  STACKTOP = sp;return (Math_fround($244));
  break;
 }
 case 2:  {
  $243 = $9;
  $3 = $243;
  $244 = $3;
  STACKTOP = sp;return (Math_fround($244));
  break;
 }
 default: {
  $3 = Math_fround(0.0);
  $244 = $3;
  STACKTOP = sp;return (Math_fround($244));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise19SingleCellular2EdgeEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $100 = Math_fround(0), $101 = Math_fround(0), $102 = 0, $103 = 0, $104 = 0, $105 = 0, $106 = 0, $107 = 0, $108 = Math_fround(0), $109 = Math_fround(0), $11 = Math_fround(0), $110 = Math_fround(0), $111 = Math_fround(0), $112 = Math_fround(0), $113 = 0, $114 = 0, $115 = 0, $116 = Math_fround(0), $117 = Math_fround(0);
 var $118 = Math_fround(0), $119 = Math_fround(0), $12 = Math_fround(0), $120 = 0, $121 = 0, $122 = 0, $123 = 0, $124 = Math_fround(0), $125 = Math_fround(0), $126 = Math_fround(0), $127 = Math_fround(0), $128 = Math_fround(0), $129 = 0, $13 = Math_fround(0), $130 = 0, $131 = 0, $132 = 0, $133 = 0, $134 = 0, $135 = 0;
 var $136 = 0, $137 = 0, $138 = 0, $139 = 0, $14 = Math_fround(0), $140 = 0, $141 = 0, $142 = 0, $143 = 0, $144 = 0, $145 = 0, $146 = 0, $147 = 0, $148 = Math_fround(0), $149 = Math_fround(0), $15 = Math_fround(0), $150 = Math_fround(0), $151 = 0, $152 = 0, $153 = 0;
 var $154 = Math_fround(0), $155 = 0, $156 = Math_fround(0), $157 = Math_fround(0), $158 = Math_fround(0), $159 = 0, $16 = Math_fround(0), $160 = Math_fround(0), $161 = Math_fround(0), $162 = Math_fround(0), $163 = 0, $164 = 0, $165 = 0, $166 = Math_fround(0), $167 = 0, $168 = Math_fround(0), $169 = Math_fround(0), $17 = Math_fround(0), $170 = Math_fround(0), $171 = Math_fround(0);
 var $172 = Math_fround(0), $173 = Math_fround(0), $174 = Math_fround(0), $175 = Math_fround(0), $176 = 0, $177 = 0, $178 = 0, $179 = 0, $18 = Math_fround(0), $180 = 0, $181 = 0, $182 = Math_fround(0), $183 = Math_fround(0), $184 = Math_fround(0), $185 = Math_fround(0), $186 = Math_fround(0), $187 = 0, $188 = 0, $189 = 0, $19 = Math_fround(0);
 var $190 = Math_fround(0), $191 = Math_fround(0), $192 = Math_fround(0), $193 = Math_fround(0), $194 = 0, $195 = 0, $196 = 0, $197 = 0, $198 = Math_fround(0), $199 = Math_fround(0), $20 = Math_fround(0), $200 = Math_fround(0), $201 = Math_fround(0), $202 = Math_fround(0), $203 = 0, $204 = 0, $205 = 0, $206 = 0, $207 = 0, $208 = 0;
 var $209 = 0, $21 = Math_fround(0), $210 = 0, $211 = 0, $212 = 0, $213 = 0, $214 = 0, $215 = 0, $216 = 0, $217 = 0, $218 = 0, $219 = 0, $22 = 0, $220 = 0, $221 = 0, $222 = Math_fround(0), $223 = Math_fround(0), $224 = Math_fround(0), $225 = 0, $226 = 0;
 var $227 = 0, $228 = Math_fround(0), $229 = 0, $23 = Math_fround(0), $230 = Math_fround(0), $231 = Math_fround(0), $232 = Math_fround(0), $233 = 0, $234 = Math_fround(0), $235 = Math_fround(0), $236 = Math_fround(0), $237 = 0, $238 = 0, $239 = 0, $24 = Math_fround(0), $240 = Math_fround(0), $241 = 0, $242 = Math_fround(0), $243 = Math_fround(0), $244 = Math_fround(0);
 var $245 = Math_fround(0), $246 = Math_fround(0), $247 = Math_fround(0), $248 = Math_fround(0), $249 = Math_fround(0), $25 = 0, $250 = Math_fround(0), $251 = Math_fround(0), $252 = Math_fround(0), $253 = Math_fround(0), $254 = Math_fround(0), $255 = Math_fround(0), $256 = Math_fround(0), $257 = Math_fround(0), $258 = 0, $259 = 0, $26 = 0, $260 = 0, $261 = 0, $262 = 0;
 var $263 = 0, $264 = Math_fround(0), $265 = Math_fround(0), $266 = Math_fround(0), $267 = Math_fround(0), $268 = Math_fround(0), $269 = 0, $27 = 0, $270 = 0, $271 = 0, $272 = Math_fround(0), $273 = Math_fround(0), $274 = Math_fround(0), $275 = Math_fround(0), $276 = 0, $277 = 0, $278 = 0, $279 = 0, $28 = 0, $280 = Math_fround(0);
 var $281 = Math_fround(0), $282 = Math_fround(0), $283 = Math_fround(0), $284 = Math_fround(0), $285 = 0, $286 = 0, $287 = 0, $288 = 0, $289 = 0, $29 = 0, $290 = 0, $291 = 0, $292 = 0, $293 = Math_fround(0), $294 = 0, $295 = 0, $296 = 0, $297 = Math_fround(0), $298 = 0, $299 = 0;
 var $3 = Math_fround(0), $30 = 0, $300 = 0, $301 = Math_fround(0), $302 = Math_fround(0), $303 = 0, $304 = 0, $305 = 0, $306 = Math_fround(0), $307 = 0, $308 = 0, $309 = 0, $31 = Math_fround(0), $310 = Math_fround(0), $311 = Math_fround(0), $312 = 0, $313 = 0, $314 = 0, $315 = Math_fround(0), $316 = 0;
 var $317 = 0, $318 = 0, $319 = Math_fround(0), $32 = Math_fround(0), $320 = Math_fround(0), $321 = 0, $322 = 0, $323 = 0, $324 = Math_fround(0), $325 = 0, $326 = 0, $327 = 0, $328 = Math_fround(0), $329 = Math_fround(0), $33 = Math_fround(0), $330 = Math_fround(0), $34 = 0, $35 = 0, $36 = 0, $37 = 0;
 var $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0), $48 = 0, $49 = 0, $5 = Math_fround(0), $50 = Math_fround(0), $51 = 0, $52 = Math_fround(0), $53 = 0, $54 = 0, $55 = 0;
 var $56 = 0, $57 = 0, $58 = 0, $59 = 0, $6 = Math_fround(0), $60 = 0, $61 = 0, $62 = 0, $63 = 0, $64 = 0, $65 = 0, $66 = 0, $67 = 0, $68 = 0, $69 = 0, $7 = Math_fround(0), $70 = 0, $71 = 0, $72 = Math_fround(0), $73 = Math_fround(0);
 var $74 = Math_fround(0), $75 = 0, $76 = 0, $77 = 0, $78 = Math_fround(0), $79 = 0, $8 = Math_fround(0), $80 = Math_fround(0), $81 = Math_fround(0), $82 = Math_fround(0), $83 = 0, $84 = Math_fround(0), $85 = Math_fround(0), $86 = Math_fround(0), $87 = 0, $88 = 0, $89 = 0, $9 = Math_fround(0), $90 = Math_fround(0), $91 = 0;
 var $92 = Math_fround(0), $93 = Math_fround(0), $94 = Math_fround(0), $95 = Math_fround(0), $96 = Math_fround(0), $97 = Math_fround(0), $98 = Math_fround(0), $99 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 192|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(192|0);
 $27 = sp + 72|0;
 $22 = $0;
 $23 = $1;
 $24 = $2;
 $49 = $22;
 $50 = $23;
 $51 = (__ZL9FastRoundf($50)|0);
 $25 = $51;
 $52 = $24;
 $53 = (__ZL9FastRoundf($52)|0);
 $26 = $53;
 ; store8($27,load8(5928,4),4); store8($27+8 | 0,load8(5928+8 | 0,4),4);
 $54 = ((($49)) + 1060|0);
 $55 = load4($54);
 L1: do {
  switch ($55|0) {
  case 2:  {
   $206 = $25;
   $207 = (($206) - 1)|0;
   $42 = $207;
   while(1) {
    $208 = $42;
    $209 = $25;
    $210 = (($209) + 1)|0;
    $211 = ($208|0)<=($210|0);
    if (!($211)) {
     break L1;
    }
    $212 = $26;
    $213 = (($212) - 1)|0;
    $43 = $213;
    while(1) {
     $214 = $43;
     $215 = $26;
     $216 = (($215) + 1)|0;
     $217 = ($214|0)<=($216|0);
     $218 = $42;
     if (!($217)) {
      break;
     }
     $219 = $43;
     $220 = (__ZNK9FastNoise11Index2D_256Ehii($49,0,$218,$219)|0);
     $44 = $220;
     $221 = $42;
     $222 = (Math_fround(($221|0)));
     $223 = $23;
     $224 = Math_fround($222 - $223);
     $225 = $44;
     $226 = $225&255;
     $227 = (5944 + ($226<<2)|0);
     $228 = loadf($227);
     $229 = ((($49)) + 1080|0);
     $230 = loadf($229);
     $231 = Math_fround($228 * $230);
     $232 = Math_fround($224 + $231);
     $45 = $232;
     $233 = $43;
     $234 = (Math_fround(($233|0)));
     $235 = $24;
     $236 = Math_fround($234 - $235);
     $237 = $44;
     $238 = $237&255;
     $239 = (6968 + ($238<<2)|0);
     $240 = loadf($239);
     $241 = ((($49)) + 1080|0);
     $242 = loadf($241);
     $243 = Math_fround($240 * $242);
     $244 = Math_fround($236 + $243);
     $46 = $244;
     $245 = $45;
     $246 = (Math_fround(__ZL7FastAbsf($245)));
     $247 = $46;
     $248 = (Math_fround(__ZL7FastAbsf($247)));
     $249 = Math_fround($246 + $248);
     $250 = $45;
     $251 = $45;
     $252 = Math_fround($250 * $251);
     $253 = $46;
     $254 = $46;
     $255 = Math_fround($253 * $254);
     $256 = Math_fround($252 + $255);
     $257 = Math_fround($249 + $256);
     $47 = $257;
     $258 = ((($49)) + 1076|0);
     $259 = load4($258);
     $48 = $259;
     while(1) {
      $260 = $48;
      $261 = ($260|0)>(0);
      if (!($261)) {
       break;
      }
      $262 = $48;
      $263 = (($27) + ($262<<2)|0);
      $264 = loadf($263);
      $265 = $47;
      $7 = $264;
      $8 = $265;
      $266 = $7;
      $267 = $8;
      $268 = (Math_fround(_fminf($266,$267)));
      $269 = $48;
      $270 = (($269) - 1)|0;
      $271 = (($27) + ($270<<2)|0);
      $272 = loadf($271);
      $5 = $268;
      $6 = $272;
      $273 = $5;
      $274 = $6;
      $275 = (Math_fround(_fmaxf($273,$274)));
      $276 = $48;
      $277 = (($27) + ($276<<2)|0);
      storef($277,$275);
      $278 = $48;
      $279 = (($278) + -1)|0;
      $48 = $279;
     }
     $280 = loadf($27);
     $281 = $47;
     $3 = $280;
     $4 = $281;
     $282 = $3;
     $283 = $4;
     $284 = (Math_fround(_fminf($282,$283)));
     storef($27,$284);
     $285 = $43;
     $286 = (($285) + 1)|0;
     $43 = $286;
    }
    $287 = (($218) + 1)|0;
    $42 = $287;
   }
   break;
  }
  case 1:  {
   $132 = $25;
   $133 = (($132) - 1)|0;
   $35 = $133;
   while(1) {
    $134 = $35;
    $135 = $25;
    $136 = (($135) + 1)|0;
    $137 = ($134|0)<=($136|0);
    if (!($137)) {
     break L1;
    }
    $138 = $26;
    $139 = (($138) - 1)|0;
    $36 = $139;
    while(1) {
     $140 = $36;
     $141 = $26;
     $142 = (($141) + 1)|0;
     $143 = ($140|0)<=($142|0);
     $144 = $35;
     if (!($143)) {
      break;
     }
     $145 = $36;
     $146 = (__ZNK9FastNoise11Index2D_256Ehii($49,0,$144,$145)|0);
     $37 = $146;
     $147 = $35;
     $148 = (Math_fround(($147|0)));
     $149 = $23;
     $150 = Math_fround($148 - $149);
     $151 = $37;
     $152 = $151&255;
     $153 = (5944 + ($152<<2)|0);
     $154 = loadf($153);
     $155 = ((($49)) + 1080|0);
     $156 = loadf($155);
     $157 = Math_fround($154 * $156);
     $158 = Math_fround($150 + $157);
     $38 = $158;
     $159 = $36;
     $160 = (Math_fround(($159|0)));
     $161 = $24;
     $162 = Math_fround($160 - $161);
     $163 = $37;
     $164 = $163&255;
     $165 = (6968 + ($164<<2)|0);
     $166 = loadf($165);
     $167 = ((($49)) + 1080|0);
     $168 = loadf($167);
     $169 = Math_fround($166 * $168);
     $170 = Math_fround($162 + $169);
     $39 = $170;
     $171 = $38;
     $172 = (Math_fround(__ZL7FastAbsf($171)));
     $173 = $39;
     $174 = (Math_fround(__ZL7FastAbsf($173)));
     $175 = Math_fround($172 + $174);
     $40 = $175;
     $176 = ((($49)) + 1076|0);
     $177 = load4($176);
     $41 = $177;
     while(1) {
      $178 = $41;
      $179 = ($178|0)>(0);
      if (!($179)) {
       break;
      }
      $180 = $41;
      $181 = (($27) + ($180<<2)|0);
      $182 = loadf($181);
      $183 = $40;
      $13 = $182;
      $14 = $183;
      $184 = $13;
      $185 = $14;
      $186 = (Math_fround(_fminf($184,$185)));
      $187 = $41;
      $188 = (($187) - 1)|0;
      $189 = (($27) + ($188<<2)|0);
      $190 = loadf($189);
      $11 = $186;
      $12 = $190;
      $191 = $11;
      $192 = $12;
      $193 = (Math_fround(_fmaxf($191,$192)));
      $194 = $41;
      $195 = (($27) + ($194<<2)|0);
      storef($195,$193);
      $196 = $41;
      $197 = (($196) + -1)|0;
      $41 = $197;
     }
     $198 = loadf($27);
     $199 = $40;
     $9 = $198;
     $10 = $199;
     $200 = $9;
     $201 = $10;
     $202 = (Math_fround(_fminf($200,$201)));
     storef($27,$202);
     $203 = $36;
     $204 = (($203) + 1)|0;
     $36 = $204;
    }
    $205 = (($144) + 1)|0;
    $35 = $205;
   }
   break;
  }
  default: {
   $56 = $25;
   $57 = (($56) - 1)|0;
   $28 = $57;
   while(1) {
    $58 = $28;
    $59 = $25;
    $60 = (($59) + 1)|0;
    $61 = ($58|0)<=($60|0);
    if (!($61)) {
     break L1;
    }
    $62 = $26;
    $63 = (($62) - 1)|0;
    $29 = $63;
    while(1) {
     $64 = $29;
     $65 = $26;
     $66 = (($65) + 1)|0;
     $67 = ($64|0)<=($66|0);
     $68 = $28;
     if (!($67)) {
      break;
     }
     $69 = $29;
     $70 = (__ZNK9FastNoise11Index2D_256Ehii($49,0,$68,$69)|0);
     $30 = $70;
     $71 = $28;
     $72 = (Math_fround(($71|0)));
     $73 = $23;
     $74 = Math_fround($72 - $73);
     $75 = $30;
     $76 = $75&255;
     $77 = (5944 + ($76<<2)|0);
     $78 = loadf($77);
     $79 = ((($49)) + 1080|0);
     $80 = loadf($79);
     $81 = Math_fround($78 * $80);
     $82 = Math_fround($74 + $81);
     $31 = $82;
     $83 = $29;
     $84 = (Math_fround(($83|0)));
     $85 = $24;
     $86 = Math_fround($84 - $85);
     $87 = $30;
     $88 = $87&255;
     $89 = (6968 + ($88<<2)|0);
     $90 = loadf($89);
     $91 = ((($49)) + 1080|0);
     $92 = loadf($91);
     $93 = Math_fround($90 * $92);
     $94 = Math_fround($86 + $93);
     $32 = $94;
     $95 = $31;
     $96 = $31;
     $97 = Math_fround($95 * $96);
     $98 = $32;
     $99 = $32;
     $100 = Math_fround($98 * $99);
     $101 = Math_fround($97 + $100);
     $33 = $101;
     $102 = ((($49)) + 1076|0);
     $103 = load4($102);
     $34 = $103;
     while(1) {
      $104 = $34;
      $105 = ($104|0)>(0);
      if (!($105)) {
       break;
      }
      $106 = $34;
      $107 = (($27) + ($106<<2)|0);
      $108 = loadf($107);
      $109 = $33;
      $19 = $108;
      $20 = $109;
      $110 = $19;
      $111 = $20;
      $112 = (Math_fround(_fminf($110,$111)));
      $113 = $34;
      $114 = (($113) - 1)|0;
      $115 = (($27) + ($114<<2)|0);
      $116 = loadf($115);
      $17 = $112;
      $18 = $116;
      $117 = $17;
      $118 = $18;
      $119 = (Math_fround(_fmaxf($117,$118)));
      $120 = $34;
      $121 = (($27) + ($120<<2)|0);
      storef($121,$119);
      $122 = $34;
      $123 = (($122) + -1)|0;
      $34 = $123;
     }
     $124 = loadf($27);
     $125 = $33;
     $15 = $124;
     $16 = $125;
     $126 = $15;
     $127 = $16;
     $128 = (Math_fround(_fminf($126,$127)));
     storef($27,$128);
     $129 = $29;
     $130 = (($129) + 1)|0;
     $29 = $130;
    }
    $131 = (($68) + 1)|0;
    $28 = $131;
   }
  }
  }
 } while(0);
 $288 = ((($49)) + 1064|0);
 $289 = load4($288);
 switch ($289|0) {
 case 3:  {
  $290 = ((($49)) + 1076|0);
  $291 = load4($290);
  $292 = (($27) + ($291<<2)|0);
  $293 = loadf($292);
  $21 = $293;
  $330 = $21;
  STACKTOP = sp;return (Math_fround($330));
  break;
 }
 case 4:  {
  $294 = ((($49)) + 1076|0);
  $295 = load4($294);
  $296 = (($27) + ($295<<2)|0);
  $297 = loadf($296);
  $298 = ((($49)) + 1072|0);
  $299 = load4($298);
  $300 = (($27) + ($299<<2)|0);
  $301 = loadf($300);
  $302 = Math_fround($297 + $301);
  $21 = $302;
  $330 = $21;
  STACKTOP = sp;return (Math_fround($330));
  break;
 }
 case 5:  {
  $303 = ((($49)) + 1076|0);
  $304 = load4($303);
  $305 = (($27) + ($304<<2)|0);
  $306 = loadf($305);
  $307 = ((($49)) + 1072|0);
  $308 = load4($307);
  $309 = (($27) + ($308<<2)|0);
  $310 = loadf($309);
  $311 = Math_fround($306 - $310);
  $21 = $311;
  $330 = $21;
  STACKTOP = sp;return (Math_fround($330));
  break;
 }
 case 6:  {
  $312 = ((($49)) + 1076|0);
  $313 = load4($312);
  $314 = (($27) + ($313<<2)|0);
  $315 = loadf($314);
  $316 = ((($49)) + 1072|0);
  $317 = load4($316);
  $318 = (($27) + ($317<<2)|0);
  $319 = loadf($318);
  $320 = Math_fround($315 * $319);
  $21 = $320;
  $330 = $21;
  STACKTOP = sp;return (Math_fround($330));
  break;
 }
 case 7:  {
  $321 = ((($49)) + 1072|0);
  $322 = load4($321);
  $323 = (($27) + ($322<<2)|0);
  $324 = loadf($323);
  $325 = ((($49)) + 1076|0);
  $326 = load4($325);
  $327 = (($27) + ($326<<2)|0);
  $328 = loadf($327);
  $329 = Math_fround($324 / $328);
  $21 = $329;
  $330 = $21;
  STACKTOP = sp;return (Math_fround($330));
  break;
 }
 default: {
  $21 = Math_fround(0.0);
  $330 = $21;
  STACKTOP = sp;return (Math_fround($330));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise13GetWhiteNoiseEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = Math_fround(0), $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = sp + 4|0;
 $5 = sp;
 $3 = $0;
 storef($4,$1);
 storef($5,$2);
 $6 = $3;
 $7 = ((($6)) + 1024|0);
 $8 = load4($7);
 $9 = load4($4);
 $10 = load4($4);
 $11 = $10 >> 16;
 $12 = $9 ^ $11;
 $13 = load4($5);
 $14 = load4($5);
 $15 = $14 >> 16;
 $16 = $13 ^ $15;
 $17 = (Math_fround(__ZL10ValCoord2Diii($8,$12,$16)));
 STACKTOP = sp;return (Math_fround($17));
}
function __ZNK9FastNoise11SingleCubicEhff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $100 = Math_fround(0), $101 = 0, $102 = 0, $103 = 0, $104 = Math_fround(0), $105 = 0, $106 = 0, $107 = 0, $108 = Math_fround(0), $109 = 0, $11 = 0, $110 = 0, $111 = 0, $112 = Math_fround(0), $113 = Math_fround(0), $114 = Math_fround(0), $115 = Math_fround(0), $116 = Math_fround(0), $117 = Math_fround(0);
 var $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = 0, $21 = Math_fround(0), $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0, $30 = 0, $31 = 0;
 var $32 = 0, $33 = 0, $34 = 0, $35 = Math_fround(0), $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = 0, $40 = 0, $41 = Math_fround(0), $42 = Math_fround(0), $43 = 0, $44 = 0, $45 = 0, $46 = Math_fround(0), $47 = 0, $48 = 0, $49 = 0, $5 = 0;
 var $50 = Math_fround(0), $51 = 0, $52 = 0, $53 = 0, $54 = Math_fround(0), $55 = 0, $56 = 0, $57 = 0, $58 = Math_fround(0), $59 = Math_fround(0), $6 = Math_fround(0), $60 = Math_fround(0), $61 = 0, $62 = 0, $63 = 0, $64 = Math_fround(0), $65 = 0, $66 = 0, $67 = 0, $68 = Math_fround(0);
 var $69 = 0, $7 = Math_fround(0), $70 = 0, $71 = 0, $72 = Math_fround(0), $73 = 0, $74 = 0, $75 = 0, $76 = Math_fround(0), $77 = Math_fround(0), $78 = Math_fround(0), $79 = 0, $8 = 0, $80 = 0, $81 = 0, $82 = Math_fround(0), $83 = 0, $84 = 0, $85 = 0, $86 = Math_fround(0);
 var $87 = 0, $88 = 0, $89 = 0, $9 = 0, $90 = Math_fround(0), $91 = 0, $92 = 0, $93 = 0, $94 = Math_fround(0), $95 = Math_fround(0), $96 = Math_fround(0), $97 = 0, $98 = 0, $99 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 64|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(64|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $18 = $4;
 $19 = $6;
 $20 = (__ZL9FastFloorf($19)|0);
 $8 = $20;
 $21 = $7;
 $22 = (__ZL9FastFloorf($21)|0);
 $9 = $22;
 $23 = $8;
 $24 = (($23) - 1)|0;
 $10 = $24;
 $25 = $9;
 $26 = (($25) - 1)|0;
 $11 = $26;
 $27 = $8;
 $28 = (($27) + 1)|0;
 $12 = $28;
 $29 = $9;
 $30 = (($29) + 1)|0;
 $13 = $30;
 $31 = $8;
 $32 = (($31) + 2)|0;
 $14 = $32;
 $33 = $9;
 $34 = (($33) + 2)|0;
 $15 = $34;
 $35 = $6;
 $36 = $8;
 $37 = (Math_fround(($36|0)));
 $38 = Math_fround($35 - $37);
 $16 = $38;
 $39 = $7;
 $40 = $9;
 $41 = (Math_fround(($40|0)));
 $42 = Math_fround($39 - $41);
 $17 = $42;
 $43 = $5;
 $44 = $10;
 $45 = $11;
 $46 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$43,$44,$45)));
 $47 = $5;
 $48 = $8;
 $49 = $11;
 $50 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$47,$48,$49)));
 $51 = $5;
 $52 = $12;
 $53 = $11;
 $54 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$51,$52,$53)));
 $55 = $5;
 $56 = $14;
 $57 = $11;
 $58 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$55,$56,$57)));
 $59 = $16;
 $60 = (Math_fround(__ZL9CubicLerpfffff($46,$50,$54,$58,$59)));
 $61 = $5;
 $62 = $10;
 $63 = $9;
 $64 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$61,$62,$63)));
 $65 = $5;
 $66 = $8;
 $67 = $9;
 $68 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$65,$66,$67)));
 $69 = $5;
 $70 = $12;
 $71 = $9;
 $72 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$69,$70,$71)));
 $73 = $5;
 $74 = $14;
 $75 = $9;
 $76 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$73,$74,$75)));
 $77 = $16;
 $78 = (Math_fround(__ZL9CubicLerpfffff($64,$68,$72,$76,$77)));
 $79 = $5;
 $80 = $10;
 $81 = $13;
 $82 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$79,$80,$81)));
 $83 = $5;
 $84 = $8;
 $85 = $13;
 $86 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$83,$84,$85)));
 $87 = $5;
 $88 = $12;
 $89 = $13;
 $90 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$87,$88,$89)));
 $91 = $5;
 $92 = $14;
 $93 = $13;
 $94 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$91,$92,$93)));
 $95 = $16;
 $96 = (Math_fround(__ZL9CubicLerpfffff($82,$86,$90,$94,$95)));
 $97 = $5;
 $98 = $10;
 $99 = $15;
 $100 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$97,$98,$99)));
 $101 = $5;
 $102 = $8;
 $103 = $15;
 $104 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$101,$102,$103)));
 $105 = $5;
 $106 = $12;
 $107 = $15;
 $108 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$105,$106,$107)));
 $109 = $5;
 $110 = $14;
 $111 = $15;
 $112 = (Math_fround(__ZNK9FastNoise14ValCoord2DFastEhii($18,$109,$110,$111)));
 $113 = $16;
 $114 = (Math_fround(__ZL9CubicLerpfffff($100,$104,$108,$112,$113)));
 $115 = $17;
 $116 = (Math_fround(__ZL9CubicLerpfffff($60,$78,$96,$114,$115)));
 $117 = Math_fround($116 * Math_fround(0.444444448));
 STACKTOP = sp;return (Math_fround($117));
}
function __ZNK9FastNoise21SingleCubicFractalFBMEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = 0, $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = Math_fround(0), $31 = 0, $32 = 0, $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = 0, $43 = Math_fround(0), $44 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0);
 var $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($9,$10,$11,$12)));
 $6 = $13;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $14 = $8;
  $15 = (($14) + 1)|0;
  $8 = $15;
  $16 = ((($9)) + 1040|0);
  $17 = load4($16);
  $18 = ($15|0)<($17|0);
  if (!($18)) {
   break;
  }
  $19 = ((($9)) + 1044|0);
  $20 = loadf($19);
  $21 = $4;
  $22 = Math_fround($21 * $20);
  $4 = $22;
  $23 = ((($9)) + 1044|0);
  $24 = loadf($23);
  $25 = $5;
  $26 = Math_fround($25 * $24);
  $5 = $26;
  $27 = ((($9)) + 1048|0);
  $28 = loadf($27);
  $29 = $7;
  $30 = Math_fround($29 * $28);
  $7 = $30;
  $31 = $8;
  $32 = (($9) + ($31)|0);
  $33 = load1($32);
  $34 = $4;
  $35 = $5;
  $36 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($9,$33,$34,$35)));
  $37 = $7;
  $38 = Math_fround($36 * $37);
  $39 = $6;
  $40 = Math_fround($39 + $38);
  $6 = $40;
 }
 $41 = $6;
 $42 = ((($9)) + 1056|0);
 $43 = loadf($42);
 $44 = Math_fround($41 * $43);
 STACKTOP = sp;return (Math_fround($44));
}
function __ZNK9FastNoise24SingleCubicFractalBillowEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = 0, $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $3 = 0, $30 = 0, $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = 0, $35 = 0, $36 = 0, $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = Math_fround(0), $47 = Math_fround(0);
 var $48 = 0, $49 = Math_fround(0), $5 = Math_fround(0), $50 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround($14 * Math_fround(2.0));
 $16 = Math_fround($15 - Math_fround(1.0));
 $6 = $16;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $17 = $8;
  $18 = (($17) + 1)|0;
  $8 = $18;
  $19 = ((($9)) + 1040|0);
  $20 = load4($19);
  $21 = ($18|0)<($20|0);
  if (!($21)) {
   break;
  }
  $22 = ((($9)) + 1044|0);
  $23 = loadf($22);
  $24 = $4;
  $25 = Math_fround($24 * $23);
  $4 = $25;
  $26 = ((($9)) + 1044|0);
  $27 = loadf($26);
  $28 = $5;
  $29 = Math_fround($28 * $27);
  $5 = $29;
  $30 = ((($9)) + 1048|0);
  $31 = loadf($30);
  $32 = $7;
  $33 = Math_fround($32 * $31);
  $7 = $33;
  $34 = $8;
  $35 = (($9) + ($34)|0);
  $36 = load1($35);
  $37 = $4;
  $38 = $5;
  $39 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($9,$36,$37,$38)));
  $40 = (Math_fround(__ZL7FastAbsf($39)));
  $41 = Math_fround($40 * Math_fround(2.0));
  $42 = Math_fround($41 - Math_fround(1.0));
  $43 = $7;
  $44 = Math_fround($42 * $43);
  $45 = $6;
  $46 = Math_fround($45 + $44);
  $6 = $46;
 }
 $47 = $6;
 $48 = ((($9)) + 1056|0);
 $49 = loadf($48);
 $50 = Math_fround($47 * $49);
 STACKTOP = sp;return (Math_fround($50));
}
function __ZNK9FastNoise28SingleCubicFractalRigidMultiEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = 0, $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = 0;
 var $3 = 0, $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = 0, $34 = 0, $35 = 0, $36 = Math_fround(0), $37 = Math_fround(0), $38 = Math_fround(0), $39 = Math_fround(0), $4 = Math_fround(0), $40 = Math_fround(0), $41 = Math_fround(0), $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $5 = Math_fround(0), $6 = Math_fround(0);
 var $7 = Math_fround(0), $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $9 = $3;
 $10 = load1($9);
 $11 = $4;
 $12 = $5;
 $13 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($9,$10,$11,$12)));
 $14 = (Math_fround(__ZL7FastAbsf($13)));
 $15 = Math_fround(Math_fround(1.0) - $14);
 $6 = $15;
 $7 = Math_fround(1.0);
 $8 = 0;
 while(1) {
  $16 = $8;
  $17 = (($16) + 1)|0;
  $8 = $17;
  $18 = ((($9)) + 1040|0);
  $19 = load4($18);
  $20 = ($17|0)<($19|0);
  if (!($20)) {
   break;
  }
  $21 = ((($9)) + 1044|0);
  $22 = loadf($21);
  $23 = $4;
  $24 = Math_fround($23 * $22);
  $4 = $24;
  $25 = ((($9)) + 1044|0);
  $26 = loadf($25);
  $27 = $5;
  $28 = Math_fround($27 * $26);
  $5 = $28;
  $29 = ((($9)) + 1048|0);
  $30 = loadf($29);
  $31 = $7;
  $32 = Math_fround($31 * $30);
  $7 = $32;
  $33 = $8;
  $34 = (($9) + ($33)|0);
  $35 = load1($34);
  $36 = $4;
  $37 = $5;
  $38 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($9,$35,$36,$37)));
  $39 = (Math_fround(__ZL7FastAbsf($38)));
  $40 = Math_fround(Math_fround(1.0) - $39);
  $41 = $7;
  $42 = Math_fround($40 * $41);
  $43 = $6;
  $44 = Math_fround($43 - $42);
  $6 = $44;
 }
 $45 = $6;
 STACKTOP = sp;return (Math_fround($45));
}
function __ZNK9FastNoise14ValCoord2DFastEhii($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = Math_fround(0), $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = $5;
 $10 = $6;
 $11 = $7;
 $12 = (__ZNK9FastNoise11Index2D_256Ehii($8,$9,$10,$11)|0);
 $13 = $12&255;
 $14 = (1688 + ($13<<2)|0);
 $15 = loadf($14);
 STACKTOP = sp;return (Math_fround($15));
}
function __ZNK9FastNoise11Index2D_256Ehii($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = $6;
 $10 = $9 & 255;
 $11 = $7;
 $12 = $11 & 255;
 $13 = $5;
 $14 = $13&255;
 $15 = (($12) + ($14))|0;
 $16 = (($8) + ($15)|0);
 $17 = load1($16);
 $18 = $17&255;
 $19 = (($10) + ($18))|0;
 $20 = (($8) + ($19)|0);
 $21 = load1($20);
 STACKTOP = sp;return ($21|0);
}
function __ZL10ValCoord2Diii($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = Math_fround(0), $23 = Math_fround(0), $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0;
 var $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $7 = $3;
 $6 = $7;
 $8 = $4;
 $9 = ($8*1619)|0;
 $10 = $6;
 $11 = $10 ^ $9;
 $6 = $11;
 $12 = $5;
 $13 = ($12*31337)|0;
 $14 = $6;
 $15 = $14 ^ $13;
 $6 = $15;
 $16 = $6;
 $17 = $6;
 $18 = Math_imul($16, $17)|0;
 $19 = $6;
 $20 = Math_imul($18, $19)|0;
 $21 = ($20*60493)|0;
 $22 = (Math_fround(($21|0)));
 $23 = Math_fround($22 / Math_fround(2.14748365E+9));
 STACKTOP = sp;return (Math_fround($23));
}
function __ZNK9FastNoise11GradCoord2DEhiiff($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = Math_fround($4);
 $5 = Math_fround($5);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = Math_fround(0), $19 = 0, $20 = 0, $21 = 0, $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = 0, $26 = 0, $27 = 0, $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = Math_fround(0), $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $6 = $0;
 $7 = $1;
 $8 = $2;
 $9 = $3;
 $10 = $4;
 $11 = $5;
 $13 = $6;
 $14 = $7;
 $15 = $8;
 $16 = $9;
 $17 = (__ZNK9FastNoise10Index2D_12Ehii($13,$14,$15,$16)|0);
 $12 = $17;
 $18 = $10;
 $19 = $12;
 $20 = $19&255;
 $21 = (5784 + ($20<<2)|0);
 $22 = loadf($21);
 $23 = Math_fround($18 * $22);
 $24 = $11;
 $25 = $12;
 $26 = $25&255;
 $27 = (5832 + ($26<<2)|0);
 $28 = loadf($27);
 $29 = Math_fround($24 * $28);
 $30 = Math_fround($23 + $29);
 STACKTOP = sp;return (Math_fround($30));
}
function __ZNK9FastNoise10Index2D_12Ehii($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0;
 var sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = $6;
 $10 = $9 & 255;
 $11 = $7;
 $12 = $11 & 255;
 $13 = $5;
 $14 = $13&255;
 $15 = (($12) + ($14))|0;
 $16 = (($8) + ($15)|0);
 $17 = load1($16);
 $18 = $17&255;
 $19 = (($10) + ($18))|0;
 $20 = ((($8)) + 512|0);
 $21 = (($20) + ($19)|0);
 $22 = load1($21);
 STACKTOP = sp;return ($22|0);
}
function __ZNK9FastNoise13GetWhiteNoiseEffff($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = Math_fround(0);
 var $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $6 = sp + 12|0;
 $7 = sp + 8|0;
 $8 = sp + 4|0;
 $9 = sp;
 $5 = $0;
 storef($6,$1);
 storef($7,$2);
 storef($8,$3);
 storef($9,$4);
 $10 = $5;
 $11 = ((($10)) + 1024|0);
 $12 = load4($11);
 $13 = load4($6);
 $14 = load4($6);
 $15 = $14 >> 16;
 $16 = $13 ^ $15;
 $17 = load4($7);
 $18 = load4($7);
 $19 = $18 >> 16;
 $20 = $17 ^ $19;
 $21 = load4($8);
 $22 = load4($8);
 $23 = $22 >> 16;
 $24 = $21 ^ $23;
 $25 = load4($9);
 $26 = load4($9);
 $27 = $26 >> 16;
 $28 = $25 ^ $27;
 $29 = (Math_fround(__ZL10ValCoord4Diiiii($12,$16,$20,$24,$28)));
 STACKTOP = sp;return (Math_fround($29));
}
function __ZL10ValCoord4Diiiii($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = Math_fround(0), $35 = Math_fround(0), $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $11 = $5;
 $10 = $11;
 $12 = $6;
 $13 = ($12*1619)|0;
 $14 = $10;
 $15 = $14 ^ $13;
 $10 = $15;
 $16 = $7;
 $17 = ($16*31337)|0;
 $18 = $10;
 $19 = $18 ^ $17;
 $10 = $19;
 $20 = $8;
 $21 = ($20*6971)|0;
 $22 = $10;
 $23 = $22 ^ $21;
 $10 = $23;
 $24 = $9;
 $25 = ($24*1013)|0;
 $26 = $10;
 $27 = $26 ^ $25;
 $10 = $27;
 $28 = $10;
 $29 = $10;
 $30 = Math_imul($28, $29)|0;
 $31 = $10;
 $32 = Math_imul($30, $31)|0;
 $33 = ($32*60493)|0;
 $34 = (Math_fround(($33|0)));
 $35 = Math_fround($34 / Math_fround(2.14748365E+9));
 STACKTOP = sp;return (Math_fround($35));
}
function __ZNK9FastNoise16GetWhiteNoiseIntEiiii($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = Math_fround(0), $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $10 = $5;
 $11 = ((($10)) + 1024|0);
 $12 = load4($11);
 $13 = $6;
 $14 = $7;
 $15 = $8;
 $16 = $9;
 $17 = (Math_fround(__ZL10ValCoord4Diiiii($12,$13,$14,$15,$16)));
 STACKTOP = sp;return (Math_fround($17));
}
function __ZNK9FastNoise16GetWhiteNoiseIntEiii($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = Math_fround(0), $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = ((($8)) + 1024|0);
 $10 = load4($9);
 $11 = $5;
 $12 = $6;
 $13 = $7;
 $14 = (Math_fround(__ZL10ValCoord3Diiii($10,$11,$12,$13)));
 STACKTOP = sp;return (Math_fround($14));
}
function __ZNK9FastNoise16GetWhiteNoiseIntEii($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $10 = 0, $11 = Math_fround(0), $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = ((($6)) + 1024|0);
 $8 = load4($7);
 $9 = $4;
 $10 = $5;
 $11 = (Math_fround(__ZL10ValCoord2Diii($8,$9,$10)));
 STACKTOP = sp;return (Math_fround($11));
}
function __ZNK9FastNoise15GetValueFractalEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = 0, $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $4 = Math_fround(0), $5 = 0, $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $5;
 $10 = ((($9)) + 1028|0);
 $11 = loadf($10);
 $12 = $6;
 $13 = Math_fround($12 * $11);
 $6 = $13;
 $14 = ((($9)) + 1028|0);
 $15 = loadf($14);
 $16 = $7;
 $17 = Math_fround($16 * $15);
 $7 = $17;
 $18 = ((($9)) + 1028|0);
 $19 = loadf($18);
 $20 = $8;
 $21 = Math_fround($20 * $19);
 $8 = $21;
 $22 = ((($9)) + 1052|0);
 $23 = load4($22);
 switch ($23|0) {
 case 0:  {
  $24 = $6;
  $25 = $7;
  $26 = $8;
  $27 = (Math_fround(__ZNK9FastNoise21SingleValueFractalFBMEfff($9,$24,$25,$26)));
  $4 = $27;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 1:  {
  $28 = $6;
  $29 = $7;
  $30 = $8;
  $31 = (Math_fround(__ZNK9FastNoise24SingleValueFractalBillowEfff($9,$28,$29,$30)));
  $4 = $31;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 2:  {
  $32 = $6;
  $33 = $7;
  $34 = $8;
  $35 = (Math_fround(__ZNK9FastNoise28SingleValueFractalRigidMultiEfff($9,$32,$33,$34)));
  $4 = $35;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 default: {
  $4 = Math_fround(0.0);
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise8GetValueEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = $5;
 $10 = ((($8)) + 1028|0);
 $11 = loadf($10);
 $12 = Math_fround($9 * $11);
 $13 = $6;
 $14 = ((($8)) + 1028|0);
 $15 = loadf($14);
 $16 = Math_fround($13 * $15);
 $17 = $7;
 $18 = ((($8)) + 1028|0);
 $19 = loadf($18);
 $20 = Math_fround($17 * $19);
 $21 = (Math_fround(__ZNK9FastNoise11SingleValueEhfff($8,0,$12,$16,$20)));
 STACKTOP = sp;return (Math_fround($21));
}
function __ZNK9FastNoise15GetValueFractalEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $3 = Math_fround(0), $4 = 0;
 var $5 = Math_fround(0), $6 = Math_fround(0), $7 = 0, $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $4;
 $8 = ((($7)) + 1028|0);
 $9 = loadf($8);
 $10 = $5;
 $11 = Math_fround($10 * $9);
 $5 = $11;
 $12 = ((($7)) + 1028|0);
 $13 = loadf($12);
 $14 = $6;
 $15 = Math_fround($14 * $13);
 $6 = $15;
 $16 = ((($7)) + 1052|0);
 $17 = load4($16);
 switch ($17|0) {
 case 0:  {
  $18 = $5;
  $19 = $6;
  $20 = (Math_fround(__ZNK9FastNoise21SingleValueFractalFBMEff($7,$18,$19)));
  $3 = $20;
  break;
 }
 case 1:  {
  $21 = $5;
  $22 = $6;
  $23 = (Math_fround(__ZNK9FastNoise24SingleValueFractalBillowEff($7,$21,$22)));
  $3 = $23;
  break;
 }
 case 2:  {
  $24 = $5;
  $25 = $6;
  $26 = (Math_fround(__ZNK9FastNoise28SingleValueFractalRigidMultiEff($7,$24,$25)));
  $3 = $26;
  break;
 }
 default: {
  $3 = Math_fround(0.0);
 }
 }
 $27 = $3;
 STACKTOP = sp;return (Math_fround($27));
}
function __ZNK9FastNoise8GetValueEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $3 = 0, $4 = Math_fround(0), $5 = Math_fround(0), $6 = 0, $7 = Math_fround(0), $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = $4;
 $8 = ((($6)) + 1028|0);
 $9 = loadf($8);
 $10 = Math_fround($7 * $9);
 $11 = $5;
 $12 = ((($6)) + 1028|0);
 $13 = loadf($12);
 $14 = Math_fround($11 * $13);
 $15 = (Math_fround(__ZNK9FastNoise11SingleValueEhff($6,0,$10,$14)));
 STACKTOP = sp;return (Math_fround($15));
}
function __ZNK9FastNoise16GetPerlinFractalEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = 0, $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $4 = Math_fround(0), $5 = 0, $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $5;
 $10 = ((($9)) + 1028|0);
 $11 = loadf($10);
 $12 = $6;
 $13 = Math_fround($12 * $11);
 $6 = $13;
 $14 = ((($9)) + 1028|0);
 $15 = loadf($14);
 $16 = $7;
 $17 = Math_fround($16 * $15);
 $7 = $17;
 $18 = ((($9)) + 1028|0);
 $19 = loadf($18);
 $20 = $8;
 $21 = Math_fround($20 * $19);
 $8 = $21;
 $22 = ((($9)) + 1052|0);
 $23 = load4($22);
 switch ($23|0) {
 case 0:  {
  $24 = $6;
  $25 = $7;
  $26 = $8;
  $27 = (Math_fround(__ZNK9FastNoise22SinglePerlinFractalFBMEfff($9,$24,$25,$26)));
  $4 = $27;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 1:  {
  $28 = $6;
  $29 = $7;
  $30 = $8;
  $31 = (Math_fround(__ZNK9FastNoise25SinglePerlinFractalBillowEfff($9,$28,$29,$30)));
  $4 = $31;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 2:  {
  $32 = $6;
  $33 = $7;
  $34 = $8;
  $35 = (Math_fround(__ZNK9FastNoise29SinglePerlinFractalRigidMultiEfff($9,$32,$33,$34)));
  $4 = $35;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 default: {
  $4 = Math_fround(0.0);
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise9GetPerlinEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = $5;
 $10 = ((($8)) + 1028|0);
 $11 = loadf($10);
 $12 = Math_fround($9 * $11);
 $13 = $6;
 $14 = ((($8)) + 1028|0);
 $15 = loadf($14);
 $16 = Math_fround($13 * $15);
 $17 = $7;
 $18 = ((($8)) + 1028|0);
 $19 = loadf($18);
 $20 = Math_fround($17 * $19);
 $21 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhfff($8,0,$12,$16,$20)));
 STACKTOP = sp;return (Math_fround($21));
}
function __ZNK9FastNoise16GetPerlinFractalEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $3 = Math_fround(0), $4 = 0;
 var $5 = Math_fround(0), $6 = Math_fround(0), $7 = 0, $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $4;
 $8 = ((($7)) + 1028|0);
 $9 = loadf($8);
 $10 = $5;
 $11 = Math_fround($10 * $9);
 $5 = $11;
 $12 = ((($7)) + 1028|0);
 $13 = loadf($12);
 $14 = $6;
 $15 = Math_fround($14 * $13);
 $6 = $15;
 $16 = ((($7)) + 1052|0);
 $17 = load4($16);
 switch ($17|0) {
 case 0:  {
  $18 = $5;
  $19 = $6;
  $20 = (Math_fround(__ZNK9FastNoise22SinglePerlinFractalFBMEff($7,$18,$19)));
  $3 = $20;
  break;
 }
 case 1:  {
  $21 = $5;
  $22 = $6;
  $23 = (Math_fround(__ZNK9FastNoise25SinglePerlinFractalBillowEff($7,$21,$22)));
  $3 = $23;
  break;
 }
 case 2:  {
  $24 = $5;
  $25 = $6;
  $26 = (Math_fround(__ZNK9FastNoise29SinglePerlinFractalRigidMultiEff($7,$24,$25)));
  $3 = $26;
  break;
 }
 default: {
  $3 = Math_fround(0.0);
 }
 }
 $27 = $3;
 STACKTOP = sp;return (Math_fround($27));
}
function __ZNK9FastNoise9GetPerlinEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $3 = 0, $4 = Math_fround(0), $5 = Math_fround(0), $6 = 0, $7 = Math_fround(0), $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = $4;
 $8 = ((($6)) + 1028|0);
 $9 = loadf($8);
 $10 = Math_fround($7 * $9);
 $11 = $5;
 $12 = ((($6)) + 1028|0);
 $13 = loadf($12);
 $14 = Math_fround($11 * $13);
 $15 = (Math_fround(__ZNK9FastNoise12SinglePerlinEhff($6,0,$10,$14)));
 STACKTOP = sp;return (Math_fround($15));
}
function __ZNK9FastNoise17GetSimplexFractalEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = 0, $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $4 = Math_fround(0), $5 = 0, $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $5;
 $10 = ((($9)) + 1028|0);
 $11 = loadf($10);
 $12 = $6;
 $13 = Math_fround($12 * $11);
 $6 = $13;
 $14 = ((($9)) + 1028|0);
 $15 = loadf($14);
 $16 = $7;
 $17 = Math_fround($16 * $15);
 $7 = $17;
 $18 = ((($9)) + 1028|0);
 $19 = loadf($18);
 $20 = $8;
 $21 = Math_fround($20 * $19);
 $8 = $21;
 $22 = ((($9)) + 1052|0);
 $23 = load4($22);
 switch ($23|0) {
 case 0:  {
  $24 = $6;
  $25 = $7;
  $26 = $8;
  $27 = (Math_fround(__ZNK9FastNoise23SingleSimplexFractalFBMEfff($9,$24,$25,$26)));
  $4 = $27;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 1:  {
  $28 = $6;
  $29 = $7;
  $30 = $8;
  $31 = (Math_fround(__ZNK9FastNoise26SingleSimplexFractalBillowEfff($9,$28,$29,$30)));
  $4 = $31;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 2:  {
  $32 = $6;
  $33 = $7;
  $34 = $8;
  $35 = (Math_fround(__ZNK9FastNoise30SingleSimplexFractalRigidMultiEfff($9,$32,$33,$34)));
  $4 = $35;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 default: {
  $4 = Math_fround(0.0);
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise10GetSimplexEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = $5;
 $10 = ((($8)) + 1028|0);
 $11 = loadf($10);
 $12 = Math_fround($9 * $11);
 $13 = $6;
 $14 = ((($8)) + 1028|0);
 $15 = loadf($14);
 $16 = Math_fround($13 * $15);
 $17 = $7;
 $18 = ((($8)) + 1028|0);
 $19 = loadf($18);
 $20 = Math_fround($17 * $19);
 $21 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhfff($8,0,$12,$16,$20)));
 STACKTOP = sp;return (Math_fround($21));
}
function __ZNK9FastNoise17GetSimplexFractalEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $3 = Math_fround(0), $4 = 0;
 var $5 = Math_fround(0), $6 = Math_fround(0), $7 = 0, $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $4;
 $8 = ((($7)) + 1028|0);
 $9 = loadf($8);
 $10 = $5;
 $11 = Math_fround($10 * $9);
 $5 = $11;
 $12 = ((($7)) + 1028|0);
 $13 = loadf($12);
 $14 = $6;
 $15 = Math_fround($14 * $13);
 $6 = $15;
 $16 = ((($7)) + 1052|0);
 $17 = load4($16);
 switch ($17|0) {
 case 0:  {
  $18 = $5;
  $19 = $6;
  $20 = (Math_fround(__ZNK9FastNoise23SingleSimplexFractalFBMEff($7,$18,$19)));
  $3 = $20;
  break;
 }
 case 1:  {
  $21 = $5;
  $22 = $6;
  $23 = (Math_fround(__ZNK9FastNoise26SingleSimplexFractalBillowEff($7,$21,$22)));
  $3 = $23;
  break;
 }
 case 2:  {
  $24 = $5;
  $25 = $6;
  $26 = (Math_fround(__ZNK9FastNoise30SingleSimplexFractalRigidMultiEff($7,$24,$25)));
  $3 = $26;
  break;
 }
 default: {
  $3 = Math_fround(0.0);
 }
 }
 $27 = $3;
 STACKTOP = sp;return (Math_fround($27));
}
function __ZNK9FastNoise10GetSimplexEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $3 = 0, $4 = Math_fround(0), $5 = Math_fround(0), $6 = 0, $7 = Math_fround(0), $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = $4;
 $8 = ((($6)) + 1028|0);
 $9 = loadf($8);
 $10 = Math_fround($7 * $9);
 $11 = $5;
 $12 = ((($6)) + 1028|0);
 $13 = loadf($12);
 $14 = Math_fround($11 * $13);
 $15 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhff($6,0,$10,$14)));
 STACKTOP = sp;return (Math_fround($15));
}
function __ZNK9FastNoise10GetSimplexEffff($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 var $10 = 0, $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = 0, $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = 0, $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $5 = 0, $6 = Math_fround(0);
 var $7 = Math_fround(0), $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $4;
 $10 = $5;
 $11 = $6;
 $12 = ((($10)) + 1028|0);
 $13 = loadf($12);
 $14 = Math_fround($11 * $13);
 $15 = $7;
 $16 = ((($10)) + 1028|0);
 $17 = loadf($16);
 $18 = Math_fround($15 * $17);
 $19 = $8;
 $20 = ((($10)) + 1028|0);
 $21 = loadf($20);
 $22 = Math_fround($19 * $21);
 $23 = $9;
 $24 = ((($10)) + 1028|0);
 $25 = loadf($24);
 $26 = Math_fround($23 * $25);
 $27 = (Math_fround(__ZNK9FastNoise13SingleSimplexEhffff($10,0,$14,$18,$22,$26)));
 STACKTOP = sp;return (Math_fround($27));
}
function __ZNK9FastNoise13SingleSimplexEhffff($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 $4 = Math_fround($4);
 $5 = Math_fround($5);
 var $10 = Math_fround(0), $100 = Math_fround(0), $101 = Math_fround(0), $102 = Math_fround(0), $103 = 0, $104 = Math_fround(0), $105 = Math_fround(0), $106 = Math_fround(0), $107 = 0, $108 = Math_fround(0), $109 = Math_fround(0), $11 = Math_fround(0), $110 = Math_fround(0), $111 = Math_fround(0), $112 = Math_fround(0), $113 = Math_fround(0), $114 = Math_fround(0), $115 = Math_fround(0), $116 = Math_fround(0), $117 = Math_fround(0);
 var $118 = Math_fround(0), $119 = Math_fround(0), $12 = Math_fround(0), $120 = Math_fround(0), $121 = Math_fround(0), $122 = Math_fround(0), $123 = Math_fround(0), $124 = Math_fround(0), $125 = 0, $126 = 0, $127 = Math_fround(0), $128 = Math_fround(0), $129 = 0, $13 = Math_fround(0), $130 = 0, $131 = 0, $132 = 0, $133 = Math_fround(0), $134 = Math_fround(0), $135 = 0;
 var $136 = 0, $137 = 0, $138 = 0, $139 = Math_fround(0), $14 = Math_fround(0), $140 = Math_fround(0), $141 = 0, $142 = 0, $143 = 0, $144 = 0, $145 = Math_fround(0), $146 = Math_fround(0), $147 = 0, $148 = 0, $149 = 0, $15 = Math_fround(0), $150 = 0, $151 = Math_fround(0), $152 = Math_fround(0), $153 = 0;
 var $154 = 0, $155 = 0, $156 = 0, $157 = 0, $158 = 0, $159 = 0, $16 = Math_fround(0), $160 = 0, $161 = 0, $162 = 0, $163 = 0, $164 = 0, $165 = 0, $166 = 0, $167 = 0, $168 = 0, $169 = 0, $17 = Math_fround(0), $170 = 0, $171 = 0;
 var $172 = 0, $173 = 0, $174 = 0, $175 = 0, $176 = 0, $177 = 0, $178 = 0, $179 = 0, $18 = 0, $180 = 0, $181 = 0, $182 = 0, $183 = 0, $184 = 0, $185 = 0, $186 = 0, $187 = 0, $188 = 0, $189 = 0, $19 = 0;
 var $190 = 0, $191 = 0, $192 = 0, $193 = 0, $194 = 0, $195 = 0, $196 = 0, $197 = 0, $198 = 0, $199 = 0, $20 = 0, $200 = 0, $201 = 0, $202 = 0, $203 = 0, $204 = 0, $205 = 0, $206 = 0, $207 = 0, $208 = 0;
 var $209 = 0, $21 = 0, $210 = 0, $211 = 0, $212 = 0, $213 = 0, $214 = 0, $215 = 0, $216 = 0, $217 = 0, $218 = 0, $219 = 0, $22 = Math_fround(0), $220 = 0, $221 = 0, $222 = 0, $223 = 0, $224 = 0, $225 = 0, $226 = 0;
 var $227 = 0, $228 = 0, $229 = 0, $23 = Math_fround(0), $230 = 0, $231 = 0, $232 = 0, $233 = 0, $234 = Math_fround(0), $235 = 0, $236 = Math_fround(0), $237 = Math_fround(0), $238 = Math_fround(0), $239 = Math_fround(0), $24 = Math_fround(0), $240 = Math_fround(0), $241 = 0, $242 = Math_fround(0), $243 = Math_fround(0), $244 = Math_fround(0);
 var $245 = Math_fround(0), $246 = Math_fround(0), $247 = 0, $248 = Math_fround(0), $249 = Math_fround(0), $25 = Math_fround(0), $250 = Math_fround(0), $251 = Math_fround(0), $252 = Math_fround(0), $253 = 0, $254 = Math_fround(0), $255 = Math_fround(0), $256 = Math_fround(0), $257 = Math_fround(0), $258 = Math_fround(0), $259 = 0, $26 = Math_fround(0), $260 = Math_fround(0), $261 = Math_fround(0), $262 = Math_fround(0);
 var $263 = Math_fround(0), $264 = Math_fround(0), $265 = Math_fround(0), $266 = 0, $267 = Math_fround(0), $268 = Math_fround(0), $269 = Math_fround(0), $27 = Math_fround(0), $270 = Math_fround(0), $271 = Math_fround(0), $272 = Math_fround(0), $273 = 0, $274 = Math_fround(0), $275 = Math_fround(0), $276 = Math_fround(0), $277 = Math_fround(0), $278 = Math_fround(0), $279 = Math_fround(0), $28 = Math_fround(0), $280 = 0;
 var $281 = Math_fround(0), $282 = Math_fround(0), $283 = Math_fround(0), $284 = Math_fround(0), $285 = Math_fround(0), $286 = Math_fround(0), $287 = 0, $288 = Math_fround(0), $289 = Math_fround(0), $29 = Math_fround(0), $290 = Math_fround(0), $291 = Math_fround(0), $292 = Math_fround(0), $293 = Math_fround(0), $294 = 0, $295 = Math_fround(0), $296 = Math_fround(0), $297 = Math_fround(0), $298 = Math_fround(0), $299 = Math_fround(0);
 var $30 = 0, $300 = Math_fround(0), $301 = 0, $302 = Math_fround(0), $303 = Math_fround(0), $304 = Math_fround(0), $305 = Math_fround(0), $306 = Math_fround(0), $307 = Math_fround(0), $308 = 0, $309 = Math_fround(0), $31 = 0, $310 = Math_fround(0), $311 = Math_fround(0), $312 = Math_fround(0), $313 = Math_fround(0), $314 = Math_fround(0), $315 = Math_fround(0), $316 = Math_fround(0), $317 = Math_fround(0);
 var $318 = Math_fround(0), $319 = Math_fround(0), $32 = 0, $320 = Math_fround(0), $321 = Math_fround(0), $322 = Math_fround(0), $323 = Math_fround(0), $324 = Math_fround(0), $325 = Math_fround(0), $326 = Math_fround(0), $327 = Math_fround(0), $328 = Math_fround(0), $329 = Math_fround(0), $33 = 0, $330 = Math_fround(0), $331 = Math_fround(0), $332 = Math_fround(0), $333 = Math_fround(0), $334 = Math_fround(0), $335 = Math_fround(0);
 var $336 = Math_fround(0), $337 = Math_fround(0), $338 = Math_fround(0), $339 = Math_fround(0), $34 = 0, $340 = Math_fround(0), $341 = Math_fround(0), $342 = Math_fround(0), $343 = Math_fround(0), $344 = Math_fround(0), $345 = Math_fround(0), $346 = Math_fround(0), $347 = Math_fround(0), $348 = Math_fround(0), $349 = Math_fround(0), $35 = 0, $350 = Math_fround(0), $351 = 0, $352 = Math_fround(0), $353 = Math_fround(0);
 var $354 = Math_fround(0), $355 = Math_fround(0), $356 = Math_fround(0), $357 = Math_fround(0), $358 = 0, $359 = 0, $36 = 0, $360 = 0, $361 = 0, $362 = 0, $363 = Math_fround(0), $364 = Math_fround(0), $365 = Math_fround(0), $366 = Math_fround(0), $367 = Math_fround(0), $368 = Math_fround(0), $369 = Math_fround(0), $37 = 0, $370 = Math_fround(0), $371 = Math_fround(0);
 var $372 = Math_fround(0), $373 = Math_fround(0), $374 = Math_fround(0), $375 = Math_fround(0), $376 = Math_fround(0), $377 = Math_fround(0), $378 = Math_fround(0), $379 = Math_fround(0), $38 = 0, $380 = Math_fround(0), $381 = Math_fround(0), $382 = Math_fround(0), $383 = Math_fround(0), $384 = Math_fround(0), $385 = Math_fround(0), $386 = 0, $387 = Math_fround(0), $388 = Math_fround(0), $389 = Math_fround(0), $39 = 0;
 var $390 = Math_fround(0), $391 = Math_fround(0), $392 = Math_fround(0), $393 = 0, $394 = 0, $395 = 0, $396 = 0, $397 = 0, $398 = 0, $399 = 0, $40 = 0, $400 = 0, $401 = 0, $402 = 0, $403 = 0, $404 = 0, $405 = 0, $406 = Math_fround(0), $407 = Math_fround(0), $408 = Math_fround(0);
 var $409 = Math_fround(0), $41 = 0, $410 = Math_fround(0), $411 = Math_fround(0), $412 = Math_fround(0), $413 = Math_fround(0), $414 = Math_fround(0), $415 = Math_fround(0), $416 = Math_fround(0), $417 = Math_fround(0), $418 = Math_fround(0), $419 = Math_fround(0), $42 = 0, $420 = Math_fround(0), $421 = Math_fround(0), $422 = Math_fround(0), $423 = Math_fround(0), $424 = Math_fround(0), $425 = Math_fround(0), $426 = Math_fround(0);
 var $427 = Math_fround(0), $428 = Math_fround(0), $429 = 0, $43 = Math_fround(0), $430 = Math_fround(0), $431 = Math_fround(0), $432 = Math_fround(0), $433 = Math_fround(0), $434 = Math_fround(0), $435 = Math_fround(0), $436 = 0, $437 = 0, $438 = 0, $439 = 0, $44 = Math_fround(0), $440 = 0, $441 = 0, $442 = 0, $443 = 0, $444 = 0;
 var $445 = 0, $446 = 0, $447 = 0, $448 = 0, $449 = Math_fround(0), $45 = Math_fround(0), $450 = Math_fround(0), $451 = Math_fround(0), $452 = Math_fround(0), $453 = Math_fround(0), $454 = Math_fround(0), $455 = Math_fround(0), $456 = Math_fround(0), $457 = Math_fround(0), $458 = Math_fround(0), $459 = Math_fround(0), $46 = Math_fround(0), $460 = Math_fround(0), $461 = Math_fround(0), $462 = Math_fround(0);
 var $463 = Math_fround(0), $464 = Math_fround(0), $465 = Math_fround(0), $466 = Math_fround(0), $467 = Math_fround(0), $468 = Math_fround(0), $469 = Math_fround(0), $47 = Math_fround(0), $470 = Math_fround(0), $471 = Math_fround(0), $472 = 0, $473 = Math_fround(0), $474 = Math_fround(0), $475 = Math_fround(0), $476 = Math_fround(0), $477 = Math_fround(0), $478 = Math_fround(0), $479 = 0, $48 = Math_fround(0), $480 = 0;
 var $481 = 0, $482 = 0, $483 = 0, $484 = 0, $485 = 0, $486 = 0, $487 = 0, $488 = 0, $489 = 0, $49 = Math_fround(0), $490 = 0, $491 = 0, $492 = Math_fround(0), $493 = Math_fround(0), $494 = Math_fround(0), $495 = Math_fround(0), $496 = Math_fround(0), $497 = Math_fround(0), $498 = Math_fround(0), $499 = Math_fround(0);
 var $50 = Math_fround(0), $500 = Math_fround(0), $501 = Math_fround(0), $502 = Math_fround(0), $503 = Math_fround(0), $504 = Math_fround(0), $505 = Math_fround(0), $506 = Math_fround(0), $507 = Math_fround(0), $508 = Math_fround(0), $509 = Math_fround(0), $51 = Math_fround(0), $510 = Math_fround(0), $511 = Math_fround(0), $512 = Math_fround(0), $513 = Math_fround(0), $514 = Math_fround(0), $515 = 0, $516 = Math_fround(0), $517 = Math_fround(0);
 var $518 = Math_fround(0), $519 = Math_fround(0), $52 = Math_fround(0), $520 = Math_fround(0), $521 = Math_fround(0), $522 = 0, $523 = 0, $524 = 0, $525 = 0, $526 = 0, $527 = 0, $528 = 0, $529 = 0, $53 = Math_fround(0), $530 = 0, $531 = Math_fround(0), $532 = Math_fround(0), $533 = Math_fround(0), $534 = Math_fround(0), $535 = Math_fround(0);
 var $536 = Math_fround(0), $537 = Math_fround(0), $538 = Math_fround(0), $539 = Math_fround(0), $54 = Math_fround(0), $540 = Math_fround(0), $541 = Math_fround(0), $542 = Math_fround(0), $543 = Math_fround(0), $544 = Math_fround(0), $545 = Math_fround(0), $546 = Math_fround(0), $55 = Math_fround(0), $56 = Math_fround(0), $57 = Math_fround(0), $58 = Math_fround(0), $59 = 0, $6 = 0, $60 = Math_fround(0), $61 = Math_fround(0);
 var $62 = Math_fround(0), $63 = Math_fround(0), $64 = Math_fround(0), $65 = Math_fround(0), $66 = Math_fround(0), $67 = Math_fround(0), $68 = Math_fround(0), $69 = Math_fround(0), $7 = 0, $70 = Math_fround(0), $71 = Math_fround(0), $72 = 0, $73 = Math_fround(0), $74 = Math_fround(0), $75 = Math_fround(0), $76 = 0, $77 = Math_fround(0), $78 = Math_fround(0), $79 = Math_fround(0), $8 = Math_fround(0);
 var $80 = 0, $81 = Math_fround(0), $82 = Math_fround(0), $83 = Math_fround(0), $84 = 0, $85 = 0, $86 = 0, $87 = 0, $88 = 0, $89 = 0, $9 = Math_fround(0), $90 = 0, $91 = 0, $92 = Math_fround(0), $93 = Math_fround(0), $94 = Math_fround(0), $95 = 0, $96 = Math_fround(0), $97 = Math_fround(0), $98 = Math_fround(0);
 var $99 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 224|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(224|0);
 $6 = $0;
 $7 = $1;
 $8 = $2;
 $9 = $3;
 $10 = $4;
 $11 = $5;
 $59 = $6;
 $60 = $8;
 $61 = $9;
 $62 = Math_fround($60 + $61);
 $63 = $10;
 $64 = Math_fround($62 + $63);
 $65 = $11;
 $66 = Math_fround($64 + $65);
 $67 = loadf(12036);
 $68 = Math_fround($66 * $67);
 $17 = $68;
 $69 = $8;
 $70 = $17;
 $71 = Math_fround($69 + $70);
 $72 = (__ZL9FastFloorf($71)|0);
 $18 = $72;
 $73 = $9;
 $74 = $17;
 $75 = Math_fround($73 + $74);
 $76 = (__ZL9FastFloorf($75)|0);
 $19 = $76;
 $77 = $10;
 $78 = $17;
 $79 = Math_fround($77 + $78);
 $80 = (__ZL9FastFloorf($79)|0);
 $20 = $80;
 $81 = $11;
 $82 = $17;
 $83 = Math_fround($81 + $82);
 $84 = (__ZL9FastFloorf($83)|0);
 $21 = $84;
 $85 = $18;
 $86 = $19;
 $87 = (($85) + ($86))|0;
 $88 = $20;
 $89 = (($87) + ($88))|0;
 $90 = $21;
 $91 = (($89) + ($90))|0;
 $92 = (Math_fround(($91|0)));
 $93 = loadf(12032);
 $94 = Math_fround($92 * $93);
 $17 = $94;
 $95 = $18;
 $96 = (Math_fround(($95|0)));
 $97 = $17;
 $98 = Math_fround($96 - $97);
 $22 = $98;
 $99 = $19;
 $100 = (Math_fround(($99|0)));
 $101 = $17;
 $102 = Math_fround($100 - $101);
 $23 = $102;
 $103 = $20;
 $104 = (Math_fround(($103|0)));
 $105 = $17;
 $106 = Math_fround($104 - $105);
 $24 = $106;
 $107 = $21;
 $108 = (Math_fround(($107|0)));
 $109 = $17;
 $110 = Math_fround($108 - $109);
 $25 = $110;
 $111 = $8;
 $112 = $22;
 $113 = Math_fround($111 - $112);
 $26 = $113;
 $114 = $9;
 $115 = $23;
 $116 = Math_fround($114 - $115);
 $27 = $116;
 $117 = $10;
 $118 = $24;
 $119 = Math_fround($117 - $118);
 $28 = $119;
 $120 = $11;
 $121 = $25;
 $122 = Math_fround($120 - $121);
 $29 = $122;
 $123 = $26;
 $124 = $27;
 $125 = $123 > $124;
 $126 = $125 ? 32 : 0;
 $30 = $126;
 $127 = $26;
 $128 = $28;
 $129 = $127 > $128;
 $130 = $129 ? 16 : 0;
 $131 = $30;
 $132 = (($131) + ($130))|0;
 $30 = $132;
 $133 = $27;
 $134 = $28;
 $135 = $133 > $134;
 $136 = $135 ? 8 : 0;
 $137 = $30;
 $138 = (($137) + ($136))|0;
 $30 = $138;
 $139 = $26;
 $140 = $29;
 $141 = $139 > $140;
 $142 = $141 ? 4 : 0;
 $143 = $30;
 $144 = (($143) + ($142))|0;
 $30 = $144;
 $145 = $27;
 $146 = $29;
 $147 = $145 > $146;
 $148 = $147 ? 2 : 0;
 $149 = $30;
 $150 = (($149) + ($148))|0;
 $30 = $150;
 $151 = $28;
 $152 = $29;
 $153 = $151 > $152;
 $154 = $153 ? 1 : 0;
 $155 = $30;
 $156 = (($155) + ($154))|0;
 $30 = $156;
 $157 = $30;
 $158 = $157 << 2;
 $30 = $158;
 $159 = $30;
 $160 = (9986 + ($159)|0);
 $161 = load1($160);
 $162 = $161&255;
 $163 = ($162|0)>=(3);
 $164 = $163 ? 1 : 0;
 $31 = $164;
 $165 = $30;
 $166 = (9986 + ($165)|0);
 $167 = load1($166);
 $168 = $167&255;
 $169 = ($168|0)>=(2);
 $170 = $169 ? 1 : 0;
 $32 = $170;
 $171 = $30;
 $172 = (($171) + 1)|0;
 $30 = $172;
 $173 = (9986 + ($171)|0);
 $174 = load1($173);
 $175 = $174&255;
 $176 = ($175|0)>=(1);
 $177 = $176 ? 1 : 0;
 $33 = $177;
 $178 = $30;
 $179 = (9986 + ($178)|0);
 $180 = load1($179);
 $181 = $180&255;
 $182 = ($181|0)>=(3);
 $183 = $182 ? 1 : 0;
 $34 = $183;
 $184 = $30;
 $185 = (9986 + ($184)|0);
 $186 = load1($185);
 $187 = $186&255;
 $188 = ($187|0)>=(2);
 $189 = $188 ? 1 : 0;
 $35 = $189;
 $190 = $30;
 $191 = (($190) + 1)|0;
 $30 = $191;
 $192 = (9986 + ($190)|0);
 $193 = load1($192);
 $194 = $193&255;
 $195 = ($194|0)>=(1);
 $196 = $195 ? 1 : 0;
 $36 = $196;
 $197 = $30;
 $198 = (9986 + ($197)|0);
 $199 = load1($198);
 $200 = $199&255;
 $201 = ($200|0)>=(3);
 $202 = $201 ? 1 : 0;
 $37 = $202;
 $203 = $30;
 $204 = (9986 + ($203)|0);
 $205 = load1($204);
 $206 = $205&255;
 $207 = ($206|0)>=(2);
 $208 = $207 ? 1 : 0;
 $38 = $208;
 $209 = $30;
 $210 = (($209) + 1)|0;
 $30 = $210;
 $211 = (9986 + ($209)|0);
 $212 = load1($211);
 $213 = $212&255;
 $214 = ($213|0)>=(1);
 $215 = $214 ? 1 : 0;
 $39 = $215;
 $216 = $30;
 $217 = (9986 + ($216)|0);
 $218 = load1($217);
 $219 = $218&255;
 $220 = ($219|0)>=(3);
 $221 = $220 ? 1 : 0;
 $40 = $221;
 $222 = $30;
 $223 = (9986 + ($222)|0);
 $224 = load1($223);
 $225 = $224&255;
 $226 = ($225|0)>=(2);
 $227 = $226 ? 1 : 0;
 $41 = $227;
 $228 = $30;
 $229 = (9986 + ($228)|0);
 $230 = load1($229);
 $231 = $230&255;
 $232 = ($231|0)>=(1);
 $233 = $232 ? 1 : 0;
 $42 = $233;
 $234 = $26;
 $235 = $31;
 $236 = (Math_fround(($235|0)));
 $237 = Math_fround($234 - $236);
 $238 = loadf(12032);
 $239 = Math_fround($237 + $238);
 $43 = $239;
 $240 = $27;
 $241 = $34;
 $242 = (Math_fround(($241|0)));
 $243 = Math_fround($240 - $242);
 $244 = loadf(12032);
 $245 = Math_fround($243 + $244);
 $44 = $245;
 $246 = $28;
 $247 = $37;
 $248 = (Math_fround(($247|0)));
 $249 = Math_fround($246 - $248);
 $250 = loadf(12032);
 $251 = Math_fround($249 + $250);
 $45 = $251;
 $252 = $29;
 $253 = $40;
 $254 = (Math_fround(($253|0)));
 $255 = Math_fround($252 - $254);
 $256 = loadf(12032);
 $257 = Math_fround($255 + $256);
 $46 = $257;
 $258 = $26;
 $259 = $32;
 $260 = (Math_fround(($259|0)));
 $261 = Math_fround($258 - $260);
 $262 = loadf(12032);
 $263 = Math_fround(Math_fround(2.0) * $262);
 $264 = Math_fround($261 + $263);
 $47 = $264;
 $265 = $27;
 $266 = $35;
 $267 = (Math_fround(($266|0)));
 $268 = Math_fround($265 - $267);
 $269 = loadf(12032);
 $270 = Math_fround(Math_fround(2.0) * $269);
 $271 = Math_fround($268 + $270);
 $48 = $271;
 $272 = $28;
 $273 = $38;
 $274 = (Math_fround(($273|0)));
 $275 = Math_fround($272 - $274);
 $276 = loadf(12032);
 $277 = Math_fround(Math_fround(2.0) * $276);
 $278 = Math_fround($275 + $277);
 $49 = $278;
 $279 = $29;
 $280 = $41;
 $281 = (Math_fround(($280|0)));
 $282 = Math_fround($279 - $281);
 $283 = loadf(12032);
 $284 = Math_fround(Math_fround(2.0) * $283);
 $285 = Math_fround($282 + $284);
 $50 = $285;
 $286 = $26;
 $287 = $33;
 $288 = (Math_fround(($287|0)));
 $289 = Math_fround($286 - $288);
 $290 = loadf(12032);
 $291 = Math_fround(Math_fround(3.0) * $290);
 $292 = Math_fround($289 + $291);
 $51 = $292;
 $293 = $27;
 $294 = $36;
 $295 = (Math_fround(($294|0)));
 $296 = Math_fround($293 - $295);
 $297 = loadf(12032);
 $298 = Math_fround(Math_fround(3.0) * $297);
 $299 = Math_fround($296 + $298);
 $52 = $299;
 $300 = $28;
 $301 = $39;
 $302 = (Math_fround(($301|0)));
 $303 = Math_fround($300 - $302);
 $304 = loadf(12032);
 $305 = Math_fround(Math_fround(3.0) * $304);
 $306 = Math_fround($303 + $305);
 $53 = $306;
 $307 = $29;
 $308 = $42;
 $309 = (Math_fround(($308|0)));
 $310 = Math_fround($307 - $309);
 $311 = loadf(12032);
 $312 = Math_fround(Math_fround(3.0) * $311);
 $313 = Math_fround($310 + $312);
 $54 = $313;
 $314 = $26;
 $315 = Math_fround($314 - Math_fround(1.0));
 $316 = loadf(12032);
 $317 = Math_fround(Math_fround(4.0) * $316);
 $318 = Math_fround($315 + $317);
 $55 = $318;
 $319 = $27;
 $320 = Math_fround($319 - Math_fround(1.0));
 $321 = loadf(12032);
 $322 = Math_fround(Math_fround(4.0) * $321);
 $323 = Math_fround($320 + $322);
 $56 = $323;
 $324 = $28;
 $325 = Math_fround($324 - Math_fround(1.0));
 $326 = loadf(12032);
 $327 = Math_fround(Math_fround(4.0) * $326);
 $328 = Math_fround($325 + $327);
 $57 = $328;
 $329 = $29;
 $330 = Math_fround($329 - Math_fround(1.0));
 $331 = loadf(12032);
 $332 = Math_fround(Math_fround(4.0) * $331);
 $333 = Math_fround($330 + $332);
 $58 = $333;
 $334 = $26;
 $335 = $26;
 $336 = Math_fround($334 * $335);
 $337 = Math_fround(Math_fround(0.600000024) - $336);
 $338 = $27;
 $339 = $27;
 $340 = Math_fround($338 * $339);
 $341 = Math_fround($337 - $340);
 $342 = $28;
 $343 = $28;
 $344 = Math_fround($342 * $343);
 $345 = Math_fround($341 - $344);
 $346 = $29;
 $347 = $29;
 $348 = Math_fround($346 * $347);
 $349 = Math_fround($345 - $348);
 $17 = $349;
 $350 = $17;
 $351 = $350 < Math_fround(0.0);
 if ($351) {
  $12 = Math_fround(0.0);
 } else {
  $352 = $17;
  $353 = $17;
  $354 = Math_fround($353 * $352);
  $17 = $354;
  $355 = $17;
  $356 = $17;
  $357 = Math_fround($355 * $356);
  $358 = $7;
  $359 = $18;
  $360 = $19;
  $361 = $20;
  $362 = $21;
  $363 = $26;
  $364 = $27;
  $365 = $28;
  $366 = $29;
  $367 = (Math_fround(__ZNK9FastNoise11GradCoord4DEhiiiiffff($59,$358,$359,$360,$361,$362,$363,$364,$365,$366)));
  $368 = Math_fround($357 * $367);
  $12 = $368;
 }
 $369 = $43;
 $370 = $43;
 $371 = Math_fround($369 * $370);
 $372 = Math_fround(Math_fround(0.600000024) - $371);
 $373 = $44;
 $374 = $44;
 $375 = Math_fround($373 * $374);
 $376 = Math_fround($372 - $375);
 $377 = $45;
 $378 = $45;
 $379 = Math_fround($377 * $378);
 $380 = Math_fround($376 - $379);
 $381 = $46;
 $382 = $46;
 $383 = Math_fround($381 * $382);
 $384 = Math_fround($380 - $383);
 $17 = $384;
 $385 = $17;
 $386 = $385 < Math_fround(0.0);
 if ($386) {
  $13 = Math_fround(0.0);
 } else {
  $387 = $17;
  $388 = $17;
  $389 = Math_fround($388 * $387);
  $17 = $389;
  $390 = $17;
  $391 = $17;
  $392 = Math_fround($390 * $391);
  $393 = $7;
  $394 = $18;
  $395 = $31;
  $396 = (($394) + ($395))|0;
  $397 = $19;
  $398 = $34;
  $399 = (($397) + ($398))|0;
  $400 = $20;
  $401 = $37;
  $402 = (($400) + ($401))|0;
  $403 = $21;
  $404 = $40;
  $405 = (($403) + ($404))|0;
  $406 = $43;
  $407 = $44;
  $408 = $45;
  $409 = $46;
  $410 = (Math_fround(__ZNK9FastNoise11GradCoord4DEhiiiiffff($59,$393,$396,$399,$402,$405,$406,$407,$408,$409)));
  $411 = Math_fround($392 * $410);
  $13 = $411;
 }
 $412 = $47;
 $413 = $47;
 $414 = Math_fround($412 * $413);
 $415 = Math_fround(Math_fround(0.600000024) - $414);
 $416 = $48;
 $417 = $48;
 $418 = Math_fround($416 * $417);
 $419 = Math_fround($415 - $418);
 $420 = $49;
 $421 = $49;
 $422 = Math_fround($420 * $421);
 $423 = Math_fround($419 - $422);
 $424 = $50;
 $425 = $50;
 $426 = Math_fround($424 * $425);
 $427 = Math_fround($423 - $426);
 $17 = $427;
 $428 = $17;
 $429 = $428 < Math_fround(0.0);
 if ($429) {
  $14 = Math_fround(0.0);
 } else {
  $430 = $17;
  $431 = $17;
  $432 = Math_fround($431 * $430);
  $17 = $432;
  $433 = $17;
  $434 = $17;
  $435 = Math_fround($433 * $434);
  $436 = $7;
  $437 = $18;
  $438 = $32;
  $439 = (($437) + ($438))|0;
  $440 = $19;
  $441 = $35;
  $442 = (($440) + ($441))|0;
  $443 = $20;
  $444 = $38;
  $445 = (($443) + ($444))|0;
  $446 = $21;
  $447 = $41;
  $448 = (($446) + ($447))|0;
  $449 = $47;
  $450 = $48;
  $451 = $49;
  $452 = $50;
  $453 = (Math_fround(__ZNK9FastNoise11GradCoord4DEhiiiiffff($59,$436,$439,$442,$445,$448,$449,$450,$451,$452)));
  $454 = Math_fround($435 * $453);
  $14 = $454;
 }
 $455 = $51;
 $456 = $51;
 $457 = Math_fround($455 * $456);
 $458 = Math_fround(Math_fround(0.600000024) - $457);
 $459 = $52;
 $460 = $52;
 $461 = Math_fround($459 * $460);
 $462 = Math_fround($458 - $461);
 $463 = $53;
 $464 = $53;
 $465 = Math_fround($463 * $464);
 $466 = Math_fround($462 - $465);
 $467 = $54;
 $468 = $54;
 $469 = Math_fround($467 * $468);
 $470 = Math_fround($466 - $469);
 $17 = $470;
 $471 = $17;
 $472 = $471 < Math_fround(0.0);
 if ($472) {
  $15 = Math_fround(0.0);
 } else {
  $473 = $17;
  $474 = $17;
  $475 = Math_fround($474 * $473);
  $17 = $475;
  $476 = $17;
  $477 = $17;
  $478 = Math_fround($476 * $477);
  $479 = $7;
  $480 = $18;
  $481 = $33;
  $482 = (($480) + ($481))|0;
  $483 = $19;
  $484 = $36;
  $485 = (($483) + ($484))|0;
  $486 = $20;
  $487 = $39;
  $488 = (($486) + ($487))|0;
  $489 = $21;
  $490 = $42;
  $491 = (($489) + ($490))|0;
  $492 = $51;
  $493 = $52;
  $494 = $53;
  $495 = $54;
  $496 = (Math_fround(__ZNK9FastNoise11GradCoord4DEhiiiiffff($59,$479,$482,$485,$488,$491,$492,$493,$494,$495)));
  $497 = Math_fround($478 * $496);
  $15 = $497;
 }
 $498 = $55;
 $499 = $55;
 $500 = Math_fround($498 * $499);
 $501 = Math_fround(Math_fround(0.600000024) - $500);
 $502 = $56;
 $503 = $56;
 $504 = Math_fround($502 * $503);
 $505 = Math_fround($501 - $504);
 $506 = $57;
 $507 = $57;
 $508 = Math_fround($506 * $507);
 $509 = Math_fround($505 - $508);
 $510 = $58;
 $511 = $58;
 $512 = Math_fround($510 * $511);
 $513 = Math_fround($509 - $512);
 $17 = $513;
 $514 = $17;
 $515 = $514 < Math_fround(0.0);
 if ($515) {
  $16 = Math_fround(0.0);
  $537 = $12;
  $538 = $13;
  $539 = Math_fround($537 + $538);
  $540 = $14;
  $541 = Math_fround($539 + $540);
  $542 = $15;
  $543 = Math_fround($541 + $542);
  $544 = $16;
  $545 = Math_fround($543 + $544);
  $546 = Math_fround(Math_fround(27.0) * $545);
  STACKTOP = sp;return (Math_fround($546));
 } else {
  $516 = $17;
  $517 = $17;
  $518 = Math_fround($517 * $516);
  $17 = $518;
  $519 = $17;
  $520 = $17;
  $521 = Math_fround($519 * $520);
  $522 = $7;
  $523 = $18;
  $524 = (($523) + 1)|0;
  $525 = $19;
  $526 = (($525) + 1)|0;
  $527 = $20;
  $528 = (($527) + 1)|0;
  $529 = $21;
  $530 = (($529) + 1)|0;
  $531 = $55;
  $532 = $56;
  $533 = $57;
  $534 = $58;
  $535 = (Math_fround(__ZNK9FastNoise11GradCoord4DEhiiiiffff($59,$522,$524,$526,$528,$530,$531,$532,$533,$534)));
  $536 = Math_fround($521 * $535);
  $16 = $536;
  $537 = $12;
  $538 = $13;
  $539 = Math_fround($537 + $538);
  $540 = $14;
  $541 = Math_fround($539 + $540);
  $542 = $15;
  $543 = Math_fround($541 + $542);
  $544 = $16;
  $545 = Math_fround($543 + $544);
  $546 = Math_fround(Math_fround(27.0) * $545);
  STACKTOP = sp;return (Math_fround($546));
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise11GradCoord4DEhiiiiffff($0,$1,$2,$3,$4,$5,$6,$7,$8,$9) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = $5|0;
 $6 = Math_fround($6);
 $7 = Math_fround($7);
 $8 = Math_fround($8);
 $9 = Math_fround($9);
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = Math_fround(0), $17 = Math_fround(0), $18 = Math_fround(0), $19 = Math_fround(0), $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $30 = 0, $31 = Math_fround(0), $32 = 0, $33 = 0, $34 = 0, $35 = Math_fround(0), $36 = Math_fround(0), $37 = Math_fround(0), $38 = 0, $39 = 0, $40 = 0, $41 = 0, $42 = Math_fround(0), $43 = Math_fround(0), $44 = Math_fround(0), $45 = Math_fround(0), $46 = 0, $47 = 0, $48 = 0, $49 = 0;
 var $50 = Math_fround(0), $51 = Math_fround(0), $52 = Math_fround(0), $53 = Math_fround(0), $54 = 0, $55 = 0, $56 = 0, $57 = 0, $58 = Math_fround(0), $59 = Math_fround(0), $60 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 48|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(48|0);
 $10 = $0;
 $11 = $1;
 $12 = $2;
 $13 = $3;
 $14 = $4;
 $15 = $5;
 $16 = $6;
 $17 = $7;
 $18 = $8;
 $19 = $9;
 $21 = $10;
 $22 = $11;
 $23 = $12;
 $24 = $13;
 $25 = $14;
 $26 = $15;
 $27 = (__ZNK9FastNoise10Index4D_32Ehiiii($21,$22,$23,$24,$25,$26)|0);
 $28 = $27&255;
 $29 = $28 << 2;
 $30 = $29&255;
 $20 = $30;
 $31 = $16;
 $32 = $20;
 $33 = $32&255;
 $34 = (7992 + ($33<<2)|0);
 $35 = loadf($34);
 $36 = Math_fround($31 * $35);
 $37 = $17;
 $38 = $20;
 $39 = $38&255;
 $40 = (($39) + 1)|0;
 $41 = (7992 + ($40<<2)|0);
 $42 = loadf($41);
 $43 = Math_fround($37 * $42);
 $44 = Math_fround($36 + $43);
 $45 = $18;
 $46 = $20;
 $47 = $46&255;
 $48 = (($47) + 2)|0;
 $49 = (7992 + ($48<<2)|0);
 $50 = loadf($49);
 $51 = Math_fround($45 * $50);
 $52 = Math_fround($44 + $51);
 $53 = $19;
 $54 = $20;
 $55 = $54&255;
 $56 = (($55) + 3)|0;
 $57 = (7992 + ($56<<2)|0);
 $58 = loadf($57);
 $59 = Math_fround($53 * $58);
 $60 = Math_fround($52 + $59);
 STACKTOP = sp;return (Math_fround($60));
}
function __ZNK9FastNoise10Index4D_32Ehiiii($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = $5|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $40 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $6 = $0;
 $7 = $1;
 $8 = $2;
 $9 = $3;
 $10 = $4;
 $11 = $5;
 $12 = $6;
 $13 = $8;
 $14 = $13 & 255;
 $15 = $9;
 $16 = $15 & 255;
 $17 = $10;
 $18 = $17 & 255;
 $19 = $11;
 $20 = $19 & 255;
 $21 = $7;
 $22 = $21&255;
 $23 = (($20) + ($22))|0;
 $24 = (($12) + ($23)|0);
 $25 = load1($24);
 $26 = $25&255;
 $27 = (($18) + ($26))|0;
 $28 = (($12) + ($27)|0);
 $29 = load1($28);
 $30 = $29&255;
 $31 = (($16) + ($30))|0;
 $32 = (($12) + ($31)|0);
 $33 = load1($32);
 $34 = $33&255;
 $35 = (($14) + ($34))|0;
 $36 = (($12) + ($35)|0);
 $37 = load1($36);
 $38 = $37&255;
 $39 = $38 & 31;
 $40 = $39&255;
 STACKTOP = sp;return ($40|0);
}
function __ZNK9FastNoise15GetCubicFractalEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = 0, $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $30 = Math_fround(0), $31 = Math_fround(0), $32 = Math_fround(0), $33 = Math_fround(0), $34 = Math_fround(0), $35 = Math_fround(0), $36 = Math_fround(0), $4 = Math_fround(0), $5 = 0, $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $5;
 $10 = ((($9)) + 1028|0);
 $11 = loadf($10);
 $12 = $6;
 $13 = Math_fround($12 * $11);
 $6 = $13;
 $14 = ((($9)) + 1028|0);
 $15 = loadf($14);
 $16 = $7;
 $17 = Math_fround($16 * $15);
 $7 = $17;
 $18 = ((($9)) + 1028|0);
 $19 = loadf($18);
 $20 = $8;
 $21 = Math_fround($20 * $19);
 $8 = $21;
 $22 = ((($9)) + 1052|0);
 $23 = load4($22);
 switch ($23|0) {
 case 0:  {
  $24 = $6;
  $25 = $7;
  $26 = $8;
  $27 = (Math_fround(__ZNK9FastNoise21SingleCubicFractalFBMEfff($9,$24,$25,$26)));
  $4 = $27;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 1:  {
  $28 = $6;
  $29 = $7;
  $30 = $8;
  $31 = (Math_fround(__ZNK9FastNoise24SingleCubicFractalBillowEfff($9,$28,$29,$30)));
  $4 = $31;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 case 2:  {
  $32 = $6;
  $33 = $7;
  $34 = $8;
  $35 = (Math_fround(__ZNK9FastNoise28SingleCubicFractalRigidMultiEfff($9,$32,$33,$34)));
  $4 = $35;
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
  break;
 }
 default: {
  $4 = Math_fround(0.0);
  $36 = $4;
  STACKTOP = sp;return (Math_fround($36));
 }
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise8GetCubicEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = Math_fround(0), $7 = Math_fround(0), $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $3;
 $8 = $4;
 $9 = $5;
 $10 = ((($8)) + 1028|0);
 $11 = loadf($10);
 $12 = Math_fround($9 * $11);
 $13 = $6;
 $14 = ((($8)) + 1028|0);
 $15 = loadf($14);
 $16 = Math_fround($13 * $15);
 $17 = $7;
 $18 = ((($8)) + 1028|0);
 $19 = loadf($18);
 $20 = Math_fround($17 * $19);
 $21 = (Math_fround(__ZNK9FastNoise11SingleCubicEhfff($8,0,$12,$16,$20)));
 STACKTOP = sp;return (Math_fround($21));
}
function __ZNK9FastNoise15GetCubicFractalEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $23 = Math_fround(0), $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $3 = Math_fround(0), $4 = 0;
 var $5 = Math_fround(0), $6 = Math_fround(0), $7 = 0, $8 = 0, $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $4;
 $8 = ((($7)) + 1028|0);
 $9 = loadf($8);
 $10 = $5;
 $11 = Math_fround($10 * $9);
 $5 = $11;
 $12 = ((($7)) + 1028|0);
 $13 = loadf($12);
 $14 = $6;
 $15 = Math_fround($14 * $13);
 $6 = $15;
 $16 = ((($7)) + 1052|0);
 $17 = load4($16);
 switch ($17|0) {
 case 0:  {
  $18 = $5;
  $19 = $6;
  $20 = (Math_fround(__ZNK9FastNoise21SingleCubicFractalFBMEff($7,$18,$19)));
  $3 = $20;
  break;
 }
 case 1:  {
  $21 = $5;
  $22 = $6;
  $23 = (Math_fround(__ZNK9FastNoise24SingleCubicFractalBillowEff($7,$21,$22)));
  $3 = $23;
  break;
 }
 case 2:  {
  $24 = $5;
  $25 = $6;
  $26 = (Math_fround(__ZNK9FastNoise28SingleCubicFractalRigidMultiEff($7,$24,$25)));
  $3 = $26;
  break;
 }
 default: {
  $3 = Math_fround(0.0);
 }
 }
 $27 = $3;
 STACKTOP = sp;return (Math_fround($27));
}
function __ZNK9FastNoise8GetCubicEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = 0, $12 = Math_fround(0), $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $3 = 0, $4 = Math_fround(0), $5 = Math_fround(0), $6 = 0, $7 = 0, $8 = Math_fround(0), $9 = Math_fround(0), label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $3 = $0;
 $4 = $1;
 $5 = $2;
 $6 = $3;
 $7 = ((($6)) + 1028|0);
 $8 = loadf($7);
 $9 = $4;
 $10 = Math_fround($9 * $8);
 $4 = $10;
 $11 = ((($6)) + 1028|0);
 $12 = loadf($11);
 $13 = $5;
 $14 = Math_fround($13 * $12);
 $5 = $14;
 $15 = $4;
 $16 = $5;
 $17 = (Math_fround(__ZNK9FastNoise11SingleCubicEhff($6,0,$15,$16)));
 STACKTOP = sp;return (Math_fround($17));
}
function __ZNK9FastNoise11GetCellularEfff($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 $3 = Math_fround($3);
 var $10 = 0, $11 = Math_fround(0), $12 = Math_fround(0), $13 = Math_fround(0), $14 = 0, $15 = Math_fround(0), $16 = Math_fround(0), $17 = Math_fround(0), $18 = 0, $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = 0, $23 = 0, $24 = Math_fround(0), $25 = Math_fround(0), $26 = Math_fround(0), $27 = Math_fround(0), $28 = Math_fround(0), $29 = Math_fround(0);
 var $4 = Math_fround(0), $5 = 0, $6 = Math_fround(0), $7 = Math_fround(0), $8 = Math_fround(0), $9 = 0, $switch = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $5 = $0;
 $6 = $1;
 $7 = $2;
 $8 = $3;
 $9 = $5;
 $10 = ((($9)) + 1028|0);
 $11 = loadf($10);
 $12 = $6;
 $13 = Math_fround($12 * $11);
 $6 = $13;
 $14 = ((($9)) + 1028|0);
 $15 = loadf($14);
 $16 = $7;
 $17 = Math_fround($16 * $15);
 $7 = $17;
 $18 = ((($9)) + 1028|0);
 $19 = loadf($18);
 $20 = $8;
 $21 = Math_fround($20 * $19);
 $8 = $21;
 $22 = ((($9)) + 1064|0);
 $23 = load4($22);
 $switch = ($23>>>0)<(3);
 $24 = $6;
 $25 = $7;
 $26 = $8;
 if ($switch) {
  $27 = (Math_fround(__ZNK9FastNoise14SingleCellularEfff($9,$24,$25,$26)));
  $4 = $27;
  $29 = $4;
  STACKTOP = sp;return (Math_fround($29));
 } else {
  $28 = (Math_fround(__ZNK9FastNoise19SingleCellular2EdgeEfff($9,$24,$25,$26)));
  $4 = $28;
  $29 = $4;
  STACKTOP = sp;return (Math_fround($29));
 }
 return Math_fround((Math_fround(0.0)));
}
function __ZNK9FastNoise11GetCellularEff($0,$1,$2) {
 $0 = $0|0;
 $1 = Math_fround($1);
 $2 = Math_fround($2);
 var $10 = Math_fround(0), $11 = Math_fround(0), $12 = 0, $13 = Math_fround(0), $14 = Math_fround(0), $15 = Math_fround(0), $16 = 0, $17 = 0, $18 = Math_fround(0), $19 = Math_fround(0), $20 = Math_fround(0), $21 = Math_fround(0), $22 = Math_fround(0), $3 = Math_fround(0), $4 = 0, $5 = Math_fround(0), $6 = Math_fround(0), $7 = 0, $8 = 0, $9 = Math_fround(0);
 var $switch = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $4 = $0;
 $5 = $1;
 $6 = $2;
 $7 = $4;
 $8 = ((($7)) + 1028|0);
 $9 = loadf($8);
 $10 = $5;
 $11 = Math_fround($10 * $9);
 $5 = $11;
 $12 = ((($7)) + 1028|0);
 $13 = loadf($12);
 $14 = $6;
 $15 = Math_fround($14 * $13);
 $6 = $15;
 $16 = ((($7)) + 1064|0);
 $17 = load4($16);
 $switch = ($17>>>0)<(3);
 $18 = $5;
 $19 = $6;
 if ($switch) {
  $20 = (Math_fround(__ZNK9FastNoise14SingleCellularEff($7,$18,$19)));
  $3 = $20;
  $22 = $3;
  STACKTOP = sp;return (Math_fround($22));
 } else {
  $21 = (Math_fround(__ZNK9FastNoise19SingleCellular2EdgeEff($7,$18,$19)));
  $3 = $21;
  $22 = $3;
  STACKTOP = sp;return (Math_fround($22));
 }
 return Math_fround((Math_fround(0.0)));
}
function __GLOBAL__sub_I_bind_cpp() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 ___cxx_global_var_init_124();
 return;
}
function ___cxx_global_var_init_124() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZN53EmscriptenBindingInitializer_native_and_builtin_typesC2Ev(12589);
 return;
}
function __ZN53EmscriptenBindingInitializer_native_and_builtin_typesC2Ev($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIvE3getEv()|0);
 __embind_register_void(($2|0),(10242|0));
 $3 = (__ZN10emscripten8internal6TypeIDIbE3getEv()|0);
 __embind_register_bool(($3|0),(10247|0),1,1,0);
 __ZN12_GLOBAL__N_1L16register_integerIcEEvPKc(10252);
 __ZN12_GLOBAL__N_1L16register_integerIaEEvPKc(10257);
 __ZN12_GLOBAL__N_1L16register_integerIhEEvPKc(10269);
 __ZN12_GLOBAL__N_1L16register_integerIsEEvPKc(10283);
 __ZN12_GLOBAL__N_1L16register_integerItEEvPKc(10289);
 __ZN12_GLOBAL__N_1L16register_integerIiEEvPKc(10304);
 __ZN12_GLOBAL__N_1L16register_integerIjEEvPKc(10308);
 __ZN12_GLOBAL__N_1L16register_integerIlEEvPKc(10321);
 __ZN12_GLOBAL__N_1L16register_integerImEEvPKc(10326);
 __ZN12_GLOBAL__N_1L14register_floatIfEEvPKc(10340);
 __ZN12_GLOBAL__N_1L14register_floatIdEEvPKc(10346);
 $4 = (__ZN10emscripten8internal6TypeIDINSt3__212basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3getEv()|0);
 __embind_register_std_string(($4|0),(10353|0));
 $5 = (__ZN10emscripten8internal6TypeIDINSt3__212basic_stringIhNS2_11char_traitsIhEENS2_9allocatorIhEEEEE3getEv()|0);
 __embind_register_std_string(($5|0),(10365|0));
 $6 = (__ZN10emscripten8internal6TypeIDINSt3__212basic_stringIwNS2_11char_traitsIwEENS2_9allocatorIwEEEEE3getEv()|0);
 __embind_register_std_wstring(($6|0),4,(10398|0));
 $7 = (__ZN10emscripten8internal6TypeIDINS_3valEE3getEv()|0);
 __embind_register_emval(($7|0),(10411|0));
 __ZN12_GLOBAL__N_1L20register_memory_viewIcEEvPKc(10427);
 __ZN12_GLOBAL__N_1L20register_memory_viewIaEEvPKc(10457);
 __ZN12_GLOBAL__N_1L20register_memory_viewIhEEvPKc(10494);
 __ZN12_GLOBAL__N_1L20register_memory_viewIsEEvPKc(10533);
 __ZN12_GLOBAL__N_1L20register_memory_viewItEEvPKc(10564);
 __ZN12_GLOBAL__N_1L20register_memory_viewIiEEvPKc(10604);
 __ZN12_GLOBAL__N_1L20register_memory_viewIjEEvPKc(10633);
 __ZN12_GLOBAL__N_1L20register_memory_viewIlEEvPKc(10671);
 __ZN12_GLOBAL__N_1L20register_memory_viewImEEvPKc(10701);
 __ZN12_GLOBAL__N_1L20register_memory_viewIaEEvPKc(10740);
 __ZN12_GLOBAL__N_1L20register_memory_viewIhEEvPKc(10772);
 __ZN12_GLOBAL__N_1L20register_memory_viewIsEEvPKc(10805);
 __ZN12_GLOBAL__N_1L20register_memory_viewItEEvPKc(10838);
 __ZN12_GLOBAL__N_1L20register_memory_viewIiEEvPKc(10872);
 __ZN12_GLOBAL__N_1L20register_memory_viewIjEEvPKc(10905);
 __ZN12_GLOBAL__N_1L20register_memory_viewIfEEvPKc(10939);
 __ZN12_GLOBAL__N_1L20register_memory_viewIdEEvPKc(10970);
 __ZN12_GLOBAL__N_1L20register_memory_viewIeEEvPKc(11002);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal6TypeIDIvE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIvE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal6TypeIDIbE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIbE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_1L16register_integerIcEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIcE3getEv()|0);
 $3 = $1;
 $4 = -128 << 24 >> 24;
 $5 = 127 << 24 >> 24;
 __embind_register_integer(($2|0),($3|0),1,($4|0),($5|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerIaEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIaE3getEv()|0);
 $3 = $1;
 $4 = -128 << 24 >> 24;
 $5 = 127 << 24 >> 24;
 __embind_register_integer(($2|0),($3|0),1,($4|0),($5|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerIhEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIhE3getEv()|0);
 $3 = $1;
 $4 = 0;
 $5 = 255;
 __embind_register_integer(($2|0),($3|0),1,($4|0),($5|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerIsEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIsE3getEv()|0);
 $3 = $1;
 $4 = -32768 << 16 >> 16;
 $5 = 32767 << 16 >> 16;
 __embind_register_integer(($2|0),($3|0),2,($4|0),($5|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerItEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDItE3getEv()|0);
 $3 = $1;
 $4 = 0;
 $5 = 65535;
 __embind_register_integer(($2|0),($3|0),2,($4|0),($5|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerIiEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIiE3getEv()|0);
 $3 = $1;
 __embind_register_integer(($2|0),($3|0),4,-2147483648,2147483647);
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerIjEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIjE3getEv()|0);
 $3 = $1;
 __embind_register_integer(($2|0),($3|0),4,0,-1);
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerIlEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIlE3getEv()|0);
 $3 = $1;
 __embind_register_integer(($2|0),($3|0),4,-2147483648,2147483647);
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L16register_integerImEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDImE3getEv()|0);
 $3 = $1;
 __embind_register_integer(($2|0),($3|0),4,0,-1);
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L14register_floatIfEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIfE3getEv()|0);
 $3 = $1;
 __embind_register_float(($2|0),($3|0),4);
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L14register_floatIdEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDIdE3getEv()|0);
 $3 = $1;
 __embind_register_float(($2|0),($3|0),8);
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal6TypeIDINSt3__212basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINSt3__212basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal6TypeIDINSt3__212basic_stringIhNS2_11char_traitsIhEENS2_9allocatorIhEEEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINSt3__212basic_stringIhNS2_11char_traitsIhEENS2_9allocatorIhEEEEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal6TypeIDINSt3__212basic_stringIwNS2_11char_traitsIwEENS2_9allocatorIwEEEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINSt3__212basic_stringIwNS2_11char_traitsIwEENS2_9allocatorIwEEEEE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal6TypeIDINS_3valEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_3valEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIcEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIcEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIcEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIaEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIaEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIaEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIhEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIhEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIhEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIsEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIsEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIsEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewItEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewItEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexItEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIiEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIiEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIiEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIjEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIjEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIjEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIlEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIlEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIlEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewImEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewImEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexImEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIfEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIfEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIfEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIdEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIdEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIdEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN12_GLOBAL__N_1L20register_memory_viewIeEEvPKc($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = $0;
 $2 = (__ZN10emscripten8internal6TypeIDINS_11memory_viewIeEEE3getEv()|0);
 $3 = (__ZN12_GLOBAL__N_118getTypedArrayIndexIeEENS_15TypedArrayIndexEv()|0);
 $4 = $1;
 __embind_register_memory_view(($2|0),($3|0),($4|0));
 STACKTOP = sp;return;
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIeEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIeEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIeEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 7;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIeEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1104|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIdEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIdEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIdEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 7;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIdEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1112|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIfEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIfEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIfEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 6;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIfEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1120|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewImEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewImEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexImEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 5;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewImEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1128|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIlEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIlEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIlEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 4;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIlEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1136|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIjEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIjEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIjEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 5;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIjEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1144|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIiEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIiEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIiEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 4;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIiEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1152|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewItEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewItEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexItEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 3;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewItEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1160|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIsEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIsEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIsEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 2;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIsEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1168|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIhEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIhEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIhEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 1;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIhEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1176|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIaEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIaEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIaEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 0;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIaEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1184|0);
}
function __ZN10emscripten8internal6TypeIDINS_11memory_viewIcEEE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDINS_11memory_viewIcEEE3getEv()|0);
 return ($0|0);
}
function __ZN12_GLOBAL__N_118getTypedArrayIndexIcEENS_15TypedArrayIndexEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 0;
}
function __ZN10emscripten8internal11LightTypeIDINS_11memory_viewIcEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1192|0);
}
function __ZN10emscripten8internal11LightTypeIDINS_3valEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1200|0);
}
function __ZN10emscripten8internal11LightTypeIDINSt3__212basic_stringIwNS2_11char_traitsIwEENS2_9allocatorIwEEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1208|0);
}
function __ZN10emscripten8internal11LightTypeIDINSt3__212basic_stringIhNS2_11char_traitsIhEENS2_9allocatorIhEEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1240|0);
}
function __ZN10emscripten8internal11LightTypeIDINSt3__212basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1264|0);
}
function __ZN10emscripten8internal6TypeIDIdE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIdE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIdE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1520|0);
}
function __ZN10emscripten8internal6TypeIDImE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDImE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDImE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1504|0);
}
function __ZN10emscripten8internal6TypeIDIlE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIlE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIlE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1496|0);
}
function __ZN10emscripten8internal6TypeIDIjE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIjE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIjE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1488|0);
}
function __ZN10emscripten8internal6TypeIDItE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDItE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDItE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1472|0);
}
function __ZN10emscripten8internal6TypeIDIsE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIsE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIsE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1464|0);
}
function __ZN10emscripten8internal6TypeIDIhE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIhE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIhE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1448|0);
}
function __ZN10emscripten8internal6TypeIDIaE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIaE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIaE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1456|0);
}
function __ZN10emscripten8internal6TypeIDIcE3getEv() {
 var $0 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = (__ZN10emscripten8internal11LightTypeIDIcE3getEv()|0);
 return ($0|0);
}
function __ZN10emscripten8internal11LightTypeIDIcE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1440|0);
}
function __ZN10emscripten8internal11LightTypeIDIbE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1432|0);
}
function __ZN10emscripten8internal11LightTypeIDIvE3getEv() {
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (1416|0);
}
function ___getTypeName($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $2 = $0;
 $3 = $2;
 $1 = $3;
 $4 = $1;
 $5 = ((($4)) + 4|0);
 $6 = load4($5);
 $7 = (___strdup($6)|0);
 STACKTOP = sp;return ($7|0);
}
function ___stdio_close($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, $4 = 0, $vararg_buffer = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $vararg_buffer = sp;
 $1 = ((($0)) + 60|0);
 $2 = load4($1);
 store4($vararg_buffer,$2);
 $3 = (___syscall6(6,($vararg_buffer|0))|0);
 $4 = (___syscall_ret($3)|0);
 STACKTOP = sp;return ($4|0);
}
function ___stdio_write($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$0 = 0, $$056 = 0, $$058 = 0, $$059 = 0, $$061 = 0, $$1 = 0, $$157 = 0, $$160 = 0, $$phi$trans$insert = 0, $$pre = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0;
 var $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0, $3 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0;
 var $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0, $46 = 0, $47 = 0, $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $6 = 0, $7 = 0, $8 = 0;
 var $9 = 0, $vararg_buffer = 0, $vararg_buffer3 = 0, $vararg_ptr1 = 0, $vararg_ptr2 = 0, $vararg_ptr6 = 0, $vararg_ptr7 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 48|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(48|0);
 $vararg_buffer3 = sp + 16|0;
 $vararg_buffer = sp;
 $3 = sp + 32|0;
 $4 = ((($0)) + 28|0);
 $5 = load4($4);
 store4($3,$5);
 $6 = ((($3)) + 4|0);
 $7 = ((($0)) + 20|0);
 $8 = load4($7);
 $9 = (($8) - ($5))|0;
 store4($6,$9);
 $10 = ((($3)) + 8|0);
 store4($10,$1);
 $11 = ((($3)) + 12|0);
 store4($11,$2);
 $12 = (($9) + ($2))|0;
 $13 = ((($0)) + 60|0);
 $14 = ((($0)) + 44|0);
 $$056 = 2;$$058 = $12;$$059 = $3;
 while(1) {
  $15 = load4(12040);
  $16 = ($15|0)==(0|0);
  if ($16) {
   $20 = load4($13);
   store4($vararg_buffer3,$20);
   $vararg_ptr6 = ((($vararg_buffer3)) + 4|0);
   store4($vararg_ptr6,$$059);
   $vararg_ptr7 = ((($vararg_buffer3)) + 8|0);
   store4($vararg_ptr7,$$056);
   $21 = (___syscall146(146,($vararg_buffer3|0))|0);
   $22 = (___syscall_ret($21)|0);
   $$0 = $22;
  } else {
   _pthread_cleanup_push((101|0),($0|0));
   $17 = load4($13);
   store4($vararg_buffer,$17);
   $vararg_ptr1 = ((($vararg_buffer)) + 4|0);
   store4($vararg_ptr1,$$059);
   $vararg_ptr2 = ((($vararg_buffer)) + 8|0);
   store4($vararg_ptr2,$$056);
   $18 = (___syscall146(146,($vararg_buffer|0))|0);
   $19 = (___syscall_ret($18)|0);
   _pthread_cleanup_pop(0);
   $$0 = $19;
  }
  $23 = ($$058|0)==($$0|0);
  if ($23) {
   label = 6;
   break;
  }
  $30 = ($$0|0)<(0);
  if ($30) {
   label = 8;
   break;
  }
  $38 = (($$058) - ($$0))|0;
  $39 = ((($$059)) + 4|0);
  $40 = load4($39);
  $41 = ($$0>>>0)>($40>>>0);
  if ($41) {
   $42 = load4($14);
   store4($4,$42);
   store4($7,$42);
   $43 = (($$0) - ($40))|0;
   $44 = ((($$059)) + 8|0);
   $45 = (($$056) + -1)|0;
   $$phi$trans$insert = ((($$059)) + 12|0);
   $$pre = load4($$phi$trans$insert);
   $$1 = $43;$$157 = $45;$$160 = $44;$53 = $$pre;
  } else {
   $46 = ($$056|0)==(2);
   if ($46) {
    $47 = load4($4);
    $48 = (($47) + ($$0)|0);
    store4($4,$48);
    $$1 = $$0;$$157 = 2;$$160 = $$059;$53 = $40;
   } else {
    $$1 = $$0;$$157 = $$056;$$160 = $$059;$53 = $40;
   }
  }
  $49 = load4($$160);
  $50 = (($49) + ($$1)|0);
  store4($$160,$50);
  $51 = ((($$160)) + 4|0);
  $52 = (($53) - ($$1))|0;
  store4($51,$52);
  $$056 = $$157;$$058 = $38;$$059 = $$160;
 }
 if ((label|0) == 6) {
  $24 = load4($14);
  $25 = ((($0)) + 48|0);
  $26 = load4($25);
  $27 = (($24) + ($26)|0);
  $28 = ((($0)) + 16|0);
  store4($28,$27);
  $29 = $24;
  store4($4,$29);
  store4($7,$29);
  $$061 = $2;
 }
 else if ((label|0) == 8) {
  $31 = ((($0)) + 16|0);
  store4($31,0);
  store4($4,0);
  store4($7,0);
  $32 = load4($0);
  $33 = $32 | 32;
  store4($0,$33);
  $34 = ($$056|0)==(2);
  if ($34) {
   $$061 = 0;
  } else {
   $35 = ((($$059)) + 4|0);
   $36 = load4($35);
   $37 = (($2) - ($36))|0;
   $$061 = $37;
  }
 }
 STACKTOP = sp;return ($$061|0);
}
function ___stdio_seek($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$pre = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $vararg_buffer = 0, $vararg_ptr1 = 0, $vararg_ptr2 = 0, $vararg_ptr3 = 0, $vararg_ptr4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 32|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(32|0);
 $vararg_buffer = sp;
 $3 = sp + 20|0;
 $4 = ((($0)) + 60|0);
 $5 = load4($4);
 store4($vararg_buffer,$5);
 $vararg_ptr1 = ((($vararg_buffer)) + 4|0);
 store4($vararg_ptr1,0);
 $vararg_ptr2 = ((($vararg_buffer)) + 8|0);
 store4($vararg_ptr2,$1);
 $vararg_ptr3 = ((($vararg_buffer)) + 12|0);
 store4($vararg_ptr3,$3);
 $vararg_ptr4 = ((($vararg_buffer)) + 16|0);
 store4($vararg_ptr4,$2);
 $6 = (___syscall140(140,($vararg_buffer|0))|0);
 $7 = (___syscall_ret($6)|0);
 $8 = ($7|0)<(0);
 if ($8) {
  store4($3,-1);
  $9 = -1;
 } else {
  $$pre = load4($3);
  $9 = $$pre;
 }
 STACKTOP = sp;return ($9|0);
}
function ___syscall_ret($0) {
 $0 = $0|0;
 var $$0 = 0, $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = ($0>>>0)>(4294963200);
 if ($1) {
  $2 = (0 - ($0))|0;
  $3 = (___errno_location()|0);
  store4($3,$2);
  $$0 = -1;
 } else {
  $$0 = $0;
 }
 return ($$0|0);
}
function ___errno_location() {
 var $$0 = 0, $0 = 0, $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = load4(12040);
 $1 = ($0|0)==(0|0);
 if ($1) {
  $$0 = 12084;
 } else {
  $2 = (_pthread_self()|0);
  $3 = ((($2)) + 64|0);
  $4 = load4($3);
  $$0 = $4;
 }
 return ($$0|0);
}
function _cleanup_448($0) {
 $0 = $0|0;
 var $1 = 0, $2 = 0, $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = ((($0)) + 68|0);
 $2 = load4($1);
 $3 = ($2|0)==(0);
 if ($3) {
  ___unlockfile($0);
 }
 return;
}
function ___unlockfile($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function ___stdout_write($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $vararg_buffer = 0, $vararg_ptr1 = 0, $vararg_ptr2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 80|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(80|0);
 $vararg_buffer = sp;
 $3 = sp + 12|0;
 $4 = ((($0)) + 36|0);
 store4($4,102);
 $5 = load4($0);
 $6 = $5 & 64;
 $7 = ($6|0)==(0);
 if ($7) {
  $8 = ((($0)) + 60|0);
  $9 = load4($8);
  store4($vararg_buffer,$9);
  $vararg_ptr1 = ((($vararg_buffer)) + 4|0);
  store4($vararg_ptr1,21505);
  $vararg_ptr2 = ((($vararg_buffer)) + 8|0);
  store4($vararg_ptr2,$3);
  $10 = (___syscall54(54,($vararg_buffer|0))|0);
  $11 = ($10|0)==(0);
  if (!($11)) {
   $12 = ((($0)) + 75|0);
   store1($12,-1);
  }
 }
 $13 = (___stdio_write($0,$1,$2)|0);
 STACKTOP = sp;return ($13|0);
}
function _strlen($0) {
 $0 = $0|0;
 var $$0 = 0, $$014 = 0, $$015$lcssa = 0, $$01518 = 0, $$1$lcssa = 0, $$pn = 0, $$pn29 = 0, $$pre = 0, $1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $2 = 0;
 var $20 = 0, $21 = 0, $22 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = $0;
 $2 = $1 & 3;
 $3 = ($2|0)==(0);
 L1: do {
  if ($3) {
   $$015$lcssa = $0;
   label = 4;
  } else {
   $$01518 = $0;$22 = $1;
   while(1) {
    $4 = load1($$01518);
    $5 = ($4<<24>>24)==(0);
    if ($5) {
     $$pn = $22;
     break L1;
    }
    $6 = ((($$01518)) + 1|0);
    $7 = $6;
    $8 = $7 & 3;
    $9 = ($8|0)==(0);
    if ($9) {
     $$015$lcssa = $6;
     label = 4;
     break;
    } else {
     $$01518 = $6;$22 = $7;
    }
   }
  }
 } while(0);
 if ((label|0) == 4) {
  $$0 = $$015$lcssa;
  while(1) {
   $10 = load4($$0);
   $11 = (($10) + -16843009)|0;
   $12 = $10 & -2139062144;
   $13 = $12 ^ -2139062144;
   $14 = $13 & $11;
   $15 = ($14|0)==(0);
   $16 = ((($$0)) + 4|0);
   if ($15) {
    $$0 = $16;
   } else {
    break;
   }
  }
  $17 = $10&255;
  $18 = ($17<<24>>24)==(0);
  if ($18) {
   $$1$lcssa = $$0;
  } else {
   $$pn29 = $$0;
   while(1) {
    $19 = ((($$pn29)) + 1|0);
    $$pre = load1($19);
    $20 = ($$pre<<24>>24)==(0);
    if ($20) {
     $$1$lcssa = $19;
     break;
    } else {
     $$pn29 = $19;
    }
   }
  }
  $21 = $$1$lcssa;
  $$pn = $21;
 }
 $$014 = (($$pn) - ($1))|0;
 return ($$014|0);
}
function ___lockfile($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return 0;
}
function _fflush($0) {
 $0 = $0|0;
 var $$0 = 0, $$023 = 0, $$02325 = 0, $$02327 = 0, $$024$lcssa = 0, $$02426 = 0, $$1 = 0, $1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $2 = 0, $20 = 0;
 var $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $phitmp = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = ($0|0)==(0|0);
 do {
  if ($1) {
   $8 = load4(8616);
   $9 = ($8|0)==(0|0);
   if ($9) {
    $28 = 0;
   } else {
    $10 = load4(8616);
    $11 = (_fflush($10)|0);
    $28 = $11;
   }
   ___lock(((12068)|0));
   $$02325 = load4((12064));
   $12 = ($$02325|0)==(0|0);
   if ($12) {
    $$024$lcssa = $28;
   } else {
    $$02327 = $$02325;$$02426 = $28;
    while(1) {
     $13 = ((($$02327)) + 76|0);
     $14 = load4($13);
     $15 = ($14|0)>(-1);
     if ($15) {
      $16 = (___lockfile($$02327)|0);
      $25 = $16;
     } else {
      $25 = 0;
     }
     $17 = ((($$02327)) + 20|0);
     $18 = load4($17);
     $19 = ((($$02327)) + 28|0);
     $20 = load4($19);
     $21 = ($18>>>0)>($20>>>0);
     if ($21) {
      $22 = (___fflush_unlocked($$02327)|0);
      $23 = $22 | $$02426;
      $$1 = $23;
     } else {
      $$1 = $$02426;
     }
     $24 = ($25|0)==(0);
     if (!($24)) {
      ___unlockfile($$02327);
     }
     $26 = ((($$02327)) + 56|0);
     $$023 = load4($26);
     $27 = ($$023|0)==(0|0);
     if ($27) {
      $$024$lcssa = $$1;
      break;
     } else {
      $$02327 = $$023;$$02426 = $$1;
     }
    }
   }
   ___unlock(((12068)|0));
   $$0 = $$024$lcssa;
  } else {
   $2 = ((($0)) + 76|0);
   $3 = load4($2);
   $4 = ($3|0)>(-1);
   if (!($4)) {
    $5 = (___fflush_unlocked($0)|0);
    $$0 = $5;
    break;
   }
   $6 = (___lockfile($0)|0);
   $phitmp = ($6|0)==(0);
   $7 = (___fflush_unlocked($0)|0);
   if ($phitmp) {
    $$0 = $7;
   } else {
    ___unlockfile($0);
    $$0 = $7;
   }
  }
 } while(0);
 return ($$0|0);
}
function ___fflush_unlocked($0) {
 $0 = $0|0;
 var $$0 = 0, $1 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $2 = 0, $20 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0;
 var $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = ((($0)) + 20|0);
 $2 = load4($1);
 $3 = ((($0)) + 28|0);
 $4 = load4($3);
 $5 = ($2>>>0)>($4>>>0);
 if ($5) {
  $6 = ((($0)) + 36|0);
  $7 = load4($6);
  (FUNCTION_TABLE_iiii[$7 & 127]($0,0,0)|0);
  $8 = load4($1);
  $9 = ($8|0)==(0|0);
  if ($9) {
   $$0 = -1;
  } else {
   label = 3;
  }
 } else {
  label = 3;
 }
 if ((label|0) == 3) {
  $10 = ((($0)) + 4|0);
  $11 = load4($10);
  $12 = ((($0)) + 8|0);
  $13 = load4($12);
  $14 = ($11>>>0)<($13>>>0);
  if ($14) {
   $15 = ((($0)) + 40|0);
   $16 = load4($15);
   $17 = $11;
   $18 = $13;
   $19 = (($17) - ($18))|0;
   (FUNCTION_TABLE_iiii[$16 & 127]($0,$19,1)|0);
  }
  $20 = ((($0)) + 16|0);
  store4($20,0);
  store4($3,0);
  store4($1,0);
  store4($12,0);
  store4($10,0);
  $$0 = 0;
 }
 return ($$0|0);
}
function ___strdup($0) {
 $0 = $0|0;
 var $$0 = 0, $1 = 0, $2 = 0, $3 = 0, $4 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = (_strlen($0)|0);
 $2 = (($1) + 1)|0;
 $3 = (_malloc($2)|0);
 $4 = ($3|0)==(0|0);
 if ($4) {
  $$0 = 0;
 } else {
  _memcpy(($3|0),($0|0),($2|0))|0;
  $$0 = $3;
 }
 return ($$0|0);
}
function _fminf($0,$1) {
 $0 = Math_fround($0);
 $1 = Math_fround($1);
 var $$0 = Math_fround(0), $$unshifted = 0, $10 = Math_fround(0), $11 = 0, $12 = Math_fround(0), $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $2 = i32_bc2i($0);
 $3 = $2 & 2147483647;
 $4 = ($3>>>0)>(2139095040);
 do {
  if ($4) {
   $$0 = $1;
  } else {
   $5 = i32_bc2i($1);
   $6 = $5 & 2147483647;
   $7 = ($6>>>0)>(2139095040);
   if ($7) {
    $$0 = $0;
   } else {
    $$unshifted = $5 ^ $2;
    $8 = ($$unshifted|0)<(0);
    if ($8) {
     $9 = ($2|0)<(0);
     $10 = $9 ? $0 : $1;
     $$0 = $10;
     break;
    } else {
     $11 = $0 < $1;
     $12 = $11 ? $0 : $1;
     $$0 = $12;
     break;
    }
   }
  }
 } while(0);
 return (Math_fround($$0));
}
function _fmaxf($0,$1) {
 $0 = Math_fround($0);
 $1 = Math_fround($1);
 var $$0 = Math_fround(0), $$unshifted = 0, $10 = Math_fround(0), $11 = 0, $12 = Math_fround(0), $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $2 = i32_bc2i($0);
 $3 = $2 & 2147483647;
 $4 = ($3>>>0)>(2139095040);
 do {
  if ($4) {
   $$0 = $1;
  } else {
   $5 = i32_bc2i($1);
   $6 = $5 & 2147483647;
   $7 = ($6>>>0)>(2139095040);
   if ($7) {
    $$0 = $0;
   } else {
    $$unshifted = $5 ^ $2;
    $8 = ($$unshifted|0)<(0);
    if ($8) {
     $9 = ($2|0)<(0);
     $10 = $9 ? $1 : $0;
     $$0 = $10;
     break;
    } else {
     $11 = $0 < $1;
     $12 = $11 ? $1 : $0;
     $$0 = $12;
     break;
    }
   }
  }
 } while(0);
 return (Math_fround($$0));
}
function _malloc($0) {
 $0 = $0|0;
 var $$$0190$i = 0, $$$0191$i = 0, $$$4349$i = 0, $$$i = 0, $$0 = 0, $$0$i$i = 0, $$0$i$i$i = 0, $$0$i17$i = 0, $$0$i18$i = 0, $$01$i$i = 0, $$0187$i = 0, $$0189$i = 0, $$0190$i = 0, $$0191$i = 0, $$0197 = 0, $$0199 = 0, $$0206$i$i = 0, $$0207$i$i = 0, $$0211$i$i = 0, $$0212$i$i = 0;
 var $$024370$i = 0, $$0286$i$i = 0, $$0287$i$i = 0, $$0288$i$i = 0, $$0294$i$i = 0, $$0295$i$i = 0, $$0340$i = 0, $$0342$i = 0, $$0343$i = 0, $$0345$i = 0, $$0351$i = 0, $$0356$i = 0, $$0357$$i = 0, $$0357$i = 0, $$0359$i = 0, $$0360$i = 0, $$0366$i = 0, $$1194$i = 0, $$1196$i = 0, $$124469$i = 0;
 var $$1290$i$i = 0, $$1292$i$i = 0, $$1341$i = 0, $$1346$i = 0, $$1361$i = 0, $$1368$i = 0, $$1372$i = 0, $$2247$ph$i = 0, $$2253$ph$i = 0, $$2353$i = 0, $$3$i = 0, $$3$i$i = 0, $$3$i201 = 0, $$3348$i = 0, $$3370$i = 0, $$4$lcssa$i = 0, $$413$i = 0, $$4349$lcssa$i = 0, $$434912$i = 0, $$4355$$4$i = 0;
 var $$4355$ph$i = 0, $$435511$i = 0, $$5256$i = 0, $$723947$i = 0, $$748$i = 0, $$not$i = 0, $$pre = 0, $$pre$i = 0, $$pre$i$i = 0, $$pre$i19$i = 0, $$pre$i205 = 0, $$pre$i208 = 0, $$pre$phi$i$iZ2D = 0, $$pre$phi$i20$iZ2D = 0, $$pre$phi$i206Z2D = 0, $$pre$phi$iZ2D = 0, $$pre$phi10$i$iZ2D = 0, $$pre$phiZ2D = 0, $$pre9$i$i = 0, $1 = 0;
 var $10 = 0, $100 = 0, $1000 = 0, $1001 = 0, $1002 = 0, $1003 = 0, $1004 = 0, $1005 = 0, $1006 = 0, $1007 = 0, $1008 = 0, $1009 = 0, $101 = 0, $1010 = 0, $1011 = 0, $1012 = 0, $1013 = 0, $1014 = 0, $1015 = 0, $1016 = 0;
 var $1017 = 0, $1018 = 0, $1019 = 0, $102 = 0, $1020 = 0, $1021 = 0, $1022 = 0, $1023 = 0, $1024 = 0, $1025 = 0, $1026 = 0, $1027 = 0, $1028 = 0, $1029 = 0, $103 = 0, $1030 = 0, $1031 = 0, $1032 = 0, $1033 = 0, $1034 = 0;
 var $1035 = 0, $1036 = 0, $1037 = 0, $1038 = 0, $1039 = 0, $104 = 0, $1040 = 0, $1041 = 0, $1042 = 0, $1043 = 0, $1044 = 0, $1045 = 0, $1046 = 0, $1047 = 0, $1048 = 0, $1049 = 0, $105 = 0, $1050 = 0, $1051 = 0, $1052 = 0;
 var $1053 = 0, $1054 = 0, $1055 = 0, $106 = 0, $107 = 0, $108 = 0, $109 = 0, $11 = 0, $110 = 0, $111 = 0, $112 = 0, $113 = 0, $114 = 0, $115 = 0, $116 = 0, $117 = 0, $118 = 0, $119 = 0, $12 = 0, $120 = 0;
 var $121 = 0, $122 = 0, $123 = 0, $124 = 0, $125 = 0, $126 = 0, $127 = 0, $128 = 0, $129 = 0, $13 = 0, $130 = 0, $131 = 0, $132 = 0, $133 = 0, $134 = 0, $135 = 0, $136 = 0, $137 = 0, $138 = 0, $139 = 0;
 var $14 = 0, $140 = 0, $141 = 0, $142 = 0, $143 = 0, $144 = 0, $145 = 0, $146 = 0, $147 = 0, $148 = 0, $149 = 0, $15 = 0, $150 = 0, $151 = 0, $152 = 0, $153 = 0, $154 = 0, $155 = 0, $156 = 0, $157 = 0;
 var $158 = 0, $159 = 0, $16 = 0, $160 = 0, $161 = 0, $162 = 0, $163 = 0, $164 = 0, $165 = 0, $166 = 0, $167 = 0, $168 = 0, $169 = 0, $17 = 0, $170 = 0, $171 = 0, $172 = 0, $173 = 0, $174 = 0, $175 = 0;
 var $176 = 0, $177 = 0, $178 = 0, $179 = 0, $18 = 0, $180 = 0, $181 = 0, $182 = 0, $183 = 0, $184 = 0, $185 = 0, $186 = 0, $187 = 0, $188 = 0, $189 = 0, $19 = 0, $190 = 0, $191 = 0, $192 = 0, $193 = 0;
 var $194 = 0, $195 = 0, $196 = 0, $197 = 0, $198 = 0, $199 = 0, $2 = 0, $20 = 0, $200 = 0, $201 = 0, $202 = 0, $203 = 0, $204 = 0, $205 = 0, $206 = 0, $207 = 0, $208 = 0, $209 = 0, $21 = 0, $210 = 0;
 var $211 = 0, $212 = 0, $213 = 0, $214 = 0, $215 = 0, $216 = 0, $217 = 0, $218 = 0, $219 = 0, $22 = 0, $220 = 0, $221 = 0, $222 = 0, $223 = 0, $224 = 0, $225 = 0, $226 = 0, $227 = 0, $228 = 0, $229 = 0;
 var $23 = 0, $230 = 0, $231 = 0, $232 = 0, $233 = 0, $234 = 0, $235 = 0, $236 = 0, $237 = 0, $238 = 0, $239 = 0, $24 = 0, $240 = 0, $241 = 0, $242 = 0, $243 = 0, $244 = 0, $245 = 0, $246 = 0, $247 = 0;
 var $248 = 0, $249 = 0, $25 = 0, $250 = 0, $251 = 0, $252 = 0, $253 = 0, $254 = 0, $255 = 0, $256 = 0, $257 = 0, $258 = 0, $259 = 0, $26 = 0, $260 = 0, $261 = 0, $262 = 0, $263 = 0, $264 = 0, $265 = 0;
 var $266 = 0, $267 = 0, $268 = 0, $269 = 0, $27 = 0, $270 = 0, $271 = 0, $272 = 0, $273 = 0, $274 = 0, $275 = 0, $276 = 0, $277 = 0, $278 = 0, $279 = 0, $28 = 0, $280 = 0, $281 = 0, $282 = 0, $283 = 0;
 var $284 = 0, $285 = 0, $286 = 0, $287 = 0, $288 = 0, $289 = 0, $29 = 0, $290 = 0, $291 = 0, $292 = 0, $293 = 0, $294 = 0, $295 = 0, $296 = 0, $297 = 0, $298 = 0, $299 = 0, $3 = 0, $30 = 0, $300 = 0;
 var $301 = 0, $302 = 0, $303 = 0, $304 = 0, $305 = 0, $306 = 0, $307 = 0, $308 = 0, $309 = 0, $31 = 0, $310 = 0, $311 = 0, $312 = 0, $313 = 0, $314 = 0, $315 = 0, $316 = 0, $317 = 0, $318 = 0, $319 = 0;
 var $32 = 0, $320 = 0, $321 = 0, $322 = 0, $323 = 0, $324 = 0, $325 = 0, $326 = 0, $327 = 0, $328 = 0, $329 = 0, $33 = 0, $330 = 0, $331 = 0, $332 = 0, $333 = 0, $334 = 0, $335 = 0, $336 = 0, $337 = 0;
 var $338 = 0, $339 = 0, $34 = 0, $340 = 0, $341 = 0, $342 = 0, $343 = 0, $344 = 0, $345 = 0, $346 = 0, $347 = 0, $348 = 0, $349 = 0, $35 = 0, $350 = 0, $351 = 0, $352 = 0, $353 = 0, $354 = 0, $355 = 0;
 var $356 = 0, $357 = 0, $358 = 0, $359 = 0, $36 = 0, $360 = 0, $361 = 0, $362 = 0, $363 = 0, $364 = 0, $365 = 0, $366 = 0, $367 = 0, $368 = 0, $369 = 0, $37 = 0, $370 = 0, $371 = 0, $372 = 0, $373 = 0;
 var $374 = 0, $375 = 0, $376 = 0, $377 = 0, $378 = 0, $379 = 0, $38 = 0, $380 = 0, $381 = 0, $382 = 0, $383 = 0, $384 = 0, $385 = 0, $386 = 0, $387 = 0, $388 = 0, $389 = 0, $39 = 0, $390 = 0, $391 = 0;
 var $392 = 0, $393 = 0, $394 = 0, $395 = 0, $396 = 0, $397 = 0, $398 = 0, $399 = 0, $4 = 0, $40 = 0, $400 = 0, $401 = 0, $402 = 0, $403 = 0, $404 = 0, $405 = 0, $406 = 0, $407 = 0, $408 = 0, $409 = 0;
 var $41 = 0, $410 = 0, $411 = 0, $412 = 0, $413 = 0, $414 = 0, $415 = 0, $416 = 0, $417 = 0, $418 = 0, $419 = 0, $42 = 0, $420 = 0, $421 = 0, $422 = 0, $423 = 0, $424 = 0, $425 = 0, $426 = 0, $427 = 0;
 var $428 = 0, $429 = 0, $43 = 0, $430 = 0, $431 = 0, $432 = 0, $433 = 0, $434 = 0, $435 = 0, $436 = 0, $437 = 0, $438 = 0, $439 = 0, $44 = 0, $440 = 0, $441 = 0, $442 = 0, $443 = 0, $444 = 0, $445 = 0;
 var $446 = 0, $447 = 0, $448 = 0, $449 = 0, $45 = 0, $450 = 0, $451 = 0, $452 = 0, $453 = 0, $454 = 0, $455 = 0, $456 = 0, $457 = 0, $458 = 0, $459 = 0, $46 = 0, $460 = 0, $461 = 0, $462 = 0, $463 = 0;
 var $464 = 0, $465 = 0, $466 = 0, $467 = 0, $468 = 0, $469 = 0, $47 = 0, $470 = 0, $471 = 0, $472 = 0, $473 = 0, $474 = 0, $475 = 0, $476 = 0, $477 = 0, $478 = 0, $479 = 0, $48 = 0, $480 = 0, $481 = 0;
 var $482 = 0, $483 = 0, $484 = 0, $485 = 0, $486 = 0, $487 = 0, $488 = 0, $489 = 0, $49 = 0, $490 = 0, $491 = 0, $492 = 0, $493 = 0, $494 = 0, $495 = 0, $496 = 0, $497 = 0, $498 = 0, $499 = 0, $5 = 0;
 var $50 = 0, $500 = 0, $501 = 0, $502 = 0, $503 = 0, $504 = 0, $505 = 0, $506 = 0, $507 = 0, $508 = 0, $509 = 0, $51 = 0, $510 = 0, $511 = 0, $512 = 0, $513 = 0, $514 = 0, $515 = 0, $516 = 0, $517 = 0;
 var $518 = 0, $519 = 0, $52 = 0, $520 = 0, $521 = 0, $522 = 0, $523 = 0, $524 = 0, $525 = 0, $526 = 0, $527 = 0, $528 = 0, $529 = 0, $53 = 0, $530 = 0, $531 = 0, $532 = 0, $533 = 0, $534 = 0, $535 = 0;
 var $536 = 0, $537 = 0, $538 = 0, $539 = 0, $54 = 0, $540 = 0, $541 = 0, $542 = 0, $543 = 0, $544 = 0, $545 = 0, $546 = 0, $547 = 0, $548 = 0, $549 = 0, $55 = 0, $550 = 0, $551 = 0, $552 = 0, $553 = 0;
 var $554 = 0, $555 = 0, $556 = 0, $557 = 0, $558 = 0, $559 = 0, $56 = 0, $560 = 0, $561 = 0, $562 = 0, $563 = 0, $564 = 0, $565 = 0, $566 = 0, $567 = 0, $568 = 0, $569 = 0, $57 = 0, $570 = 0, $571 = 0;
 var $572 = 0, $573 = 0, $574 = 0, $575 = 0, $576 = 0, $577 = 0, $578 = 0, $579 = 0, $58 = 0, $580 = 0, $581 = 0, $582 = 0, $583 = 0, $584 = 0, $585 = 0, $586 = 0, $587 = 0, $588 = 0, $589 = 0, $59 = 0;
 var $590 = 0, $591 = 0, $592 = 0, $593 = 0, $594 = 0, $595 = 0, $596 = 0, $597 = 0, $598 = 0, $599 = 0, $6 = 0, $60 = 0, $600 = 0, $601 = 0, $602 = 0, $603 = 0, $604 = 0, $605 = 0, $606 = 0, $607 = 0;
 var $608 = 0, $609 = 0, $61 = 0, $610 = 0, $611 = 0, $612 = 0, $613 = 0, $614 = 0, $615 = 0, $616 = 0, $617 = 0, $618 = 0, $619 = 0, $62 = 0, $620 = 0, $621 = 0, $622 = 0, $623 = 0, $624 = 0, $625 = 0;
 var $626 = 0, $627 = 0, $628 = 0, $629 = 0, $63 = 0, $630 = 0, $631 = 0, $632 = 0, $633 = 0, $634 = 0, $635 = 0, $636 = 0, $637 = 0, $638 = 0, $639 = 0, $64 = 0, $640 = 0, $641 = 0, $642 = 0, $643 = 0;
 var $644 = 0, $645 = 0, $646 = 0, $647 = 0, $648 = 0, $649 = 0, $65 = 0, $650 = 0, $651 = 0, $652 = 0, $653 = 0, $654 = 0, $655 = 0, $656 = 0, $657 = 0, $658 = 0, $659 = 0, $66 = 0, $660 = 0, $661 = 0;
 var $662 = 0, $663 = 0, $664 = 0, $665 = 0, $666 = 0, $667 = 0, $668 = 0, $669 = 0, $67 = 0, $670 = 0, $671 = 0, $672 = 0, $673 = 0, $674 = 0, $675 = 0, $676 = 0, $677 = 0, $678 = 0, $679 = 0, $68 = 0;
 var $680 = 0, $681 = 0, $682 = 0, $683 = 0, $684 = 0, $685 = 0, $686 = 0, $687 = 0, $688 = 0, $689 = 0, $69 = 0, $690 = 0, $691 = 0, $692 = 0, $693 = 0, $694 = 0, $695 = 0, $696 = 0, $697 = 0, $698 = 0;
 var $699 = 0, $7 = 0, $70 = 0, $700 = 0, $701 = 0, $702 = 0, $703 = 0, $704 = 0, $705 = 0, $706 = 0, $707 = 0, $708 = 0, $709 = 0, $71 = 0, $710 = 0, $711 = 0, $712 = 0, $713 = 0, $714 = 0, $715 = 0;
 var $716 = 0, $717 = 0, $718 = 0, $719 = 0, $72 = 0, $720 = 0, $721 = 0, $722 = 0, $723 = 0, $724 = 0, $725 = 0, $726 = 0, $727 = 0, $728 = 0, $729 = 0, $73 = 0, $730 = 0, $731 = 0, $732 = 0, $733 = 0;
 var $734 = 0, $735 = 0, $736 = 0, $737 = 0, $738 = 0, $739 = 0, $74 = 0, $740 = 0, $741 = 0, $742 = 0, $743 = 0, $744 = 0, $745 = 0, $746 = 0, $747 = 0, $748 = 0, $749 = 0, $75 = 0, $750 = 0, $751 = 0;
 var $752 = 0, $753 = 0, $754 = 0, $755 = 0, $756 = 0, $757 = 0, $758 = 0, $759 = 0, $76 = 0, $760 = 0, $761 = 0, $762 = 0, $763 = 0, $764 = 0, $765 = 0, $766 = 0, $767 = 0, $768 = 0, $769 = 0, $77 = 0;
 var $770 = 0, $771 = 0, $772 = 0, $773 = 0, $774 = 0, $775 = 0, $776 = 0, $777 = 0, $778 = 0, $779 = 0, $78 = 0, $780 = 0, $781 = 0, $782 = 0, $783 = 0, $784 = 0, $785 = 0, $786 = 0, $787 = 0, $788 = 0;
 var $789 = 0, $79 = 0, $790 = 0, $791 = 0, $792 = 0, $793 = 0, $794 = 0, $795 = 0, $796 = 0, $797 = 0, $798 = 0, $799 = 0, $8 = 0, $80 = 0, $800 = 0, $801 = 0, $802 = 0, $803 = 0, $804 = 0, $805 = 0;
 var $806 = 0, $807 = 0, $808 = 0, $809 = 0, $81 = 0, $810 = 0, $811 = 0, $812 = 0, $813 = 0, $814 = 0, $815 = 0, $816 = 0, $817 = 0, $818 = 0, $819 = 0, $82 = 0, $820 = 0, $821 = 0, $822 = 0, $823 = 0;
 var $824 = 0, $825 = 0, $826 = 0, $827 = 0, $828 = 0, $829 = 0, $83 = 0, $830 = 0, $831 = 0, $832 = 0, $833 = 0, $834 = 0, $835 = 0, $836 = 0, $837 = 0, $838 = 0, $839 = 0, $84 = 0, $840 = 0, $841 = 0;
 var $842 = 0, $843 = 0, $844 = 0, $845 = 0, $846 = 0, $847 = 0, $848 = 0, $849 = 0, $85 = 0, $850 = 0, $851 = 0, $852 = 0, $853 = 0, $854 = 0, $855 = 0, $856 = 0, $857 = 0, $858 = 0, $859 = 0, $86 = 0;
 var $860 = 0, $861 = 0, $862 = 0, $863 = 0, $864 = 0, $865 = 0, $866 = 0, $867 = 0, $868 = 0, $869 = 0, $87 = 0, $870 = 0, $871 = 0, $872 = 0, $873 = 0, $874 = 0, $875 = 0, $876 = 0, $877 = 0, $878 = 0;
 var $879 = 0, $88 = 0, $880 = 0, $881 = 0, $882 = 0, $883 = 0, $884 = 0, $885 = 0, $886 = 0, $887 = 0, $888 = 0, $889 = 0, $89 = 0, $890 = 0, $891 = 0, $892 = 0, $893 = 0, $894 = 0, $895 = 0, $896 = 0;
 var $897 = 0, $898 = 0, $899 = 0, $9 = 0, $90 = 0, $900 = 0, $901 = 0, $902 = 0, $903 = 0, $904 = 0, $905 = 0, $906 = 0, $907 = 0, $908 = 0, $909 = 0, $91 = 0, $910 = 0, $911 = 0, $912 = 0, $913 = 0;
 var $914 = 0, $915 = 0, $916 = 0, $917 = 0, $918 = 0, $919 = 0, $92 = 0, $920 = 0, $921 = 0, $922 = 0, $923 = 0, $924 = 0, $925 = 0, $926 = 0, $927 = 0, $928 = 0, $929 = 0, $93 = 0, $930 = 0, $931 = 0;
 var $932 = 0, $933 = 0, $934 = 0, $935 = 0, $936 = 0, $937 = 0, $938 = 0, $939 = 0, $94 = 0, $940 = 0, $941 = 0, $942 = 0, $943 = 0, $944 = 0, $945 = 0, $946 = 0, $947 = 0, $948 = 0, $949 = 0, $95 = 0;
 var $950 = 0, $951 = 0, $952 = 0, $953 = 0, $954 = 0, $955 = 0, $956 = 0, $957 = 0, $958 = 0, $959 = 0, $96 = 0, $960 = 0, $961 = 0, $962 = 0, $963 = 0, $964 = 0, $965 = 0, $966 = 0, $967 = 0, $968 = 0;
 var $969 = 0, $97 = 0, $970 = 0, $971 = 0, $972 = 0, $973 = 0, $974 = 0, $975 = 0, $976 = 0, $977 = 0, $978 = 0, $979 = 0, $98 = 0, $980 = 0, $981 = 0, $982 = 0, $983 = 0, $984 = 0, $985 = 0, $986 = 0;
 var $987 = 0, $988 = 0, $989 = 0, $99 = 0, $990 = 0, $991 = 0, $992 = 0, $993 = 0, $994 = 0, $995 = 0, $996 = 0, $997 = 0, $998 = 0, $999 = 0, $cond$i = 0, $cond$i$i = 0, $cond$i204 = 0, $exitcond$i$i = 0, $not$$i$i = 0, $not$$i22$i = 0;
 var $not$7$i = 0, $or$cond$i = 0, $or$cond$i211 = 0, $or$cond1$i = 0, $or$cond1$i210 = 0, $or$cond10$i = 0, $or$cond11$i = 0, $or$cond12$i = 0, $or$cond2$i = 0, $or$cond5$i = 0, $or$cond50$i = 0, $or$cond7$i = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 16|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(16|0);
 $1 = sp;
 $2 = ($0>>>0)<(245);
 do {
  if ($2) {
   $3 = ($0>>>0)<(11);
   $4 = (($0) + 11)|0;
   $5 = $4 & -8;
   $6 = $3 ? 16 : $5;
   $7 = $6 >>> 3;
   $8 = load4(12088);
   $9 = $8 >>> $7;
   $10 = $9 & 3;
   $11 = ($10|0)==(0);
   if (!($11)) {
    $12 = $9 & 1;
    $13 = $12 ^ 1;
    $14 = (($13) + ($7))|0;
    $15 = $14 << 1;
    $16 = (12128 + ($15<<2)|0);
    $17 = ((($16)) + 8|0);
    $18 = load4($17);
    $19 = ((($18)) + 8|0);
    $20 = load4($19);
    $21 = ($16|0)==($20|0);
    do {
     if ($21) {
      $22 = 1 << $14;
      $23 = $22 ^ -1;
      $24 = $8 & $23;
      store4(12088,$24);
     } else {
      $25 = load4((12104));
      $26 = ($20>>>0)<($25>>>0);
      if ($26) {
       _abort();
       // unreachable;
      }
      $27 = ((($20)) + 12|0);
      $28 = load4($27);
      $29 = ($28|0)==($18|0);
      if ($29) {
       store4($27,$16);
       store4($17,$20);
       break;
      } else {
       _abort();
       // unreachable;
      }
     }
    } while(0);
    $30 = $14 << 3;
    $31 = $30 | 3;
    $32 = ((($18)) + 4|0);
    store4($32,$31);
    $33 = (($18) + ($30)|0);
    $34 = ((($33)) + 4|0);
    $35 = load4($34);
    $36 = $35 | 1;
    store4($34,$36);
    $$0 = $19;
    STACKTOP = sp;return ($$0|0);
   }
   $37 = load4((12096));
   $38 = ($6>>>0)>($37>>>0);
   if ($38) {
    $39 = ($9|0)==(0);
    if (!($39)) {
     $40 = $9 << $7;
     $41 = 2 << $7;
     $42 = (0 - ($41))|0;
     $43 = $41 | $42;
     $44 = $40 & $43;
     $45 = (0 - ($44))|0;
     $46 = $44 & $45;
     $47 = (($46) + -1)|0;
     $48 = $47 >>> 12;
     $49 = $48 & 16;
     $50 = $47 >>> $49;
     $51 = $50 >>> 5;
     $52 = $51 & 8;
     $53 = $52 | $49;
     $54 = $50 >>> $52;
     $55 = $54 >>> 2;
     $56 = $55 & 4;
     $57 = $53 | $56;
     $58 = $54 >>> $56;
     $59 = $58 >>> 1;
     $60 = $59 & 2;
     $61 = $57 | $60;
     $62 = $58 >>> $60;
     $63 = $62 >>> 1;
     $64 = $63 & 1;
     $65 = $61 | $64;
     $66 = $62 >>> $64;
     $67 = (($65) + ($66))|0;
     $68 = $67 << 1;
     $69 = (12128 + ($68<<2)|0);
     $70 = ((($69)) + 8|0);
     $71 = load4($70);
     $72 = ((($71)) + 8|0);
     $73 = load4($72);
     $74 = ($69|0)==($73|0);
     do {
      if ($74) {
       $75 = 1 << $67;
       $76 = $75 ^ -1;
       $77 = $8 & $76;
       store4(12088,$77);
       $98 = $77;
      } else {
       $78 = load4((12104));
       $79 = ($73>>>0)<($78>>>0);
       if ($79) {
        _abort();
        // unreachable;
       }
       $80 = ((($73)) + 12|0);
       $81 = load4($80);
       $82 = ($81|0)==($71|0);
       if ($82) {
        store4($80,$69);
        store4($70,$73);
        $98 = $8;
        break;
       } else {
        _abort();
        // unreachable;
       }
      }
     } while(0);
     $83 = $67 << 3;
     $84 = (($83) - ($6))|0;
     $85 = $6 | 3;
     $86 = ((($71)) + 4|0);
     store4($86,$85);
     $87 = (($71) + ($6)|0);
     $88 = $84 | 1;
     $89 = ((($87)) + 4|0);
     store4($89,$88);
     $90 = (($87) + ($84)|0);
     store4($90,$84);
     $91 = ($37|0)==(0);
     if (!($91)) {
      $92 = load4((12108));
      $93 = $37 >>> 3;
      $94 = $93 << 1;
      $95 = (12128 + ($94<<2)|0);
      $96 = 1 << $93;
      $97 = $98 & $96;
      $99 = ($97|0)==(0);
      if ($99) {
       $100 = $98 | $96;
       store4(12088,$100);
       $$pre = ((($95)) + 8|0);
       $$0199 = $95;$$pre$phiZ2D = $$pre;
      } else {
       $101 = ((($95)) + 8|0);
       $102 = load4($101);
       $103 = load4((12104));
       $104 = ($102>>>0)<($103>>>0);
       if ($104) {
        _abort();
        // unreachable;
       } else {
        $$0199 = $102;$$pre$phiZ2D = $101;
       }
      }
      store4($$pre$phiZ2D,$92);
      $105 = ((($$0199)) + 12|0);
      store4($105,$92);
      $106 = ((($92)) + 8|0);
      store4($106,$$0199);
      $107 = ((($92)) + 12|0);
      store4($107,$95);
     }
     store4((12096),$84);
     store4((12108),$87);
     $$0 = $72;
     STACKTOP = sp;return ($$0|0);
    }
    $108 = load4((12092));
    $109 = ($108|0)==(0);
    if ($109) {
     $$0197 = $6;
    } else {
     $110 = (0 - ($108))|0;
     $111 = $108 & $110;
     $112 = (($111) + -1)|0;
     $113 = $112 >>> 12;
     $114 = $113 & 16;
     $115 = $112 >>> $114;
     $116 = $115 >>> 5;
     $117 = $116 & 8;
     $118 = $117 | $114;
     $119 = $115 >>> $117;
     $120 = $119 >>> 2;
     $121 = $120 & 4;
     $122 = $118 | $121;
     $123 = $119 >>> $121;
     $124 = $123 >>> 1;
     $125 = $124 & 2;
     $126 = $122 | $125;
     $127 = $123 >>> $125;
     $128 = $127 >>> 1;
     $129 = $128 & 1;
     $130 = $126 | $129;
     $131 = $127 >>> $129;
     $132 = (($130) + ($131))|0;
     $133 = (12392 + ($132<<2)|0);
     $134 = load4($133);
     $135 = ((($134)) + 4|0);
     $136 = load4($135);
     $137 = $136 & -8;
     $138 = (($137) - ($6))|0;
     $$0189$i = $134;$$0190$i = $134;$$0191$i = $138;
     while(1) {
      $139 = ((($$0189$i)) + 16|0);
      $140 = load4($139);
      $141 = ($140|0)==(0|0);
      if ($141) {
       $142 = ((($$0189$i)) + 20|0);
       $143 = load4($142);
       $144 = ($143|0)==(0|0);
       if ($144) {
        break;
       } else {
        $146 = $143;
       }
      } else {
       $146 = $140;
      }
      $145 = ((($146)) + 4|0);
      $147 = load4($145);
      $148 = $147 & -8;
      $149 = (($148) - ($6))|0;
      $150 = ($149>>>0)<($$0191$i>>>0);
      $$$0191$i = $150 ? $149 : $$0191$i;
      $$$0190$i = $150 ? $146 : $$0190$i;
      $$0189$i = $146;$$0190$i = $$$0190$i;$$0191$i = $$$0191$i;
     }
     $151 = load4((12104));
     $152 = ($$0190$i>>>0)<($151>>>0);
     if ($152) {
      _abort();
      // unreachable;
     }
     $153 = (($$0190$i) + ($6)|0);
     $154 = ($$0190$i>>>0)<($153>>>0);
     if (!($154)) {
      _abort();
      // unreachable;
     }
     $155 = ((($$0190$i)) + 24|0);
     $156 = load4($155);
     $157 = ((($$0190$i)) + 12|0);
     $158 = load4($157);
     $159 = ($158|0)==($$0190$i|0);
     do {
      if ($159) {
       $169 = ((($$0190$i)) + 20|0);
       $170 = load4($169);
       $171 = ($170|0)==(0|0);
       if ($171) {
        $172 = ((($$0190$i)) + 16|0);
        $173 = load4($172);
        $174 = ($173|0)==(0|0);
        if ($174) {
         $$3$i = 0;
         break;
        } else {
         $$1194$i = $173;$$1196$i = $172;
        }
       } else {
        $$1194$i = $170;$$1196$i = $169;
       }
       while(1) {
        $175 = ((($$1194$i)) + 20|0);
        $176 = load4($175);
        $177 = ($176|0)==(0|0);
        if (!($177)) {
         $$1194$i = $176;$$1196$i = $175;
         continue;
        }
        $178 = ((($$1194$i)) + 16|0);
        $179 = load4($178);
        $180 = ($179|0)==(0|0);
        if ($180) {
         break;
        } else {
         $$1194$i = $179;$$1196$i = $178;
        }
       }
       $181 = ($$1196$i>>>0)<($151>>>0);
       if ($181) {
        _abort();
        // unreachable;
       } else {
        store4($$1196$i,0);
        $$3$i = $$1194$i;
        break;
       }
      } else {
       $160 = ((($$0190$i)) + 8|0);
       $161 = load4($160);
       $162 = ($161>>>0)<($151>>>0);
       if ($162) {
        _abort();
        // unreachable;
       }
       $163 = ((($161)) + 12|0);
       $164 = load4($163);
       $165 = ($164|0)==($$0190$i|0);
       if (!($165)) {
        _abort();
        // unreachable;
       }
       $166 = ((($158)) + 8|0);
       $167 = load4($166);
       $168 = ($167|0)==($$0190$i|0);
       if ($168) {
        store4($163,$158);
        store4($166,$161);
        $$3$i = $158;
        break;
       } else {
        _abort();
        // unreachable;
       }
      }
     } while(0);
     $182 = ($156|0)==(0|0);
     do {
      if (!($182)) {
       $183 = ((($$0190$i)) + 28|0);
       $184 = load4($183);
       $185 = (12392 + ($184<<2)|0);
       $186 = load4($185);
       $187 = ($$0190$i|0)==($186|0);
       if ($187) {
        store4($185,$$3$i);
        $cond$i = ($$3$i|0)==(0|0);
        if ($cond$i) {
         $188 = 1 << $184;
         $189 = $188 ^ -1;
         $190 = $108 & $189;
         store4((12092),$190);
         break;
        }
       } else {
        $191 = load4((12104));
        $192 = ($156>>>0)<($191>>>0);
        if ($192) {
         _abort();
         // unreachable;
        }
        $193 = ((($156)) + 16|0);
        $194 = load4($193);
        $195 = ($194|0)==($$0190$i|0);
        if ($195) {
         store4($193,$$3$i);
        } else {
         $196 = ((($156)) + 20|0);
         store4($196,$$3$i);
        }
        $197 = ($$3$i|0)==(0|0);
        if ($197) {
         break;
        }
       }
       $198 = load4((12104));
       $199 = ($$3$i>>>0)<($198>>>0);
       if ($199) {
        _abort();
        // unreachable;
       }
       $200 = ((($$3$i)) + 24|0);
       store4($200,$156);
       $201 = ((($$0190$i)) + 16|0);
       $202 = load4($201);
       $203 = ($202|0)==(0|0);
       do {
        if (!($203)) {
         $204 = ($202>>>0)<($198>>>0);
         if ($204) {
          _abort();
          // unreachable;
         } else {
          $205 = ((($$3$i)) + 16|0);
          store4($205,$202);
          $206 = ((($202)) + 24|0);
          store4($206,$$3$i);
          break;
         }
        }
       } while(0);
       $207 = ((($$0190$i)) + 20|0);
       $208 = load4($207);
       $209 = ($208|0)==(0|0);
       if (!($209)) {
        $210 = load4((12104));
        $211 = ($208>>>0)<($210>>>0);
        if ($211) {
         _abort();
         // unreachable;
        } else {
         $212 = ((($$3$i)) + 20|0);
         store4($212,$208);
         $213 = ((($208)) + 24|0);
         store4($213,$$3$i);
         break;
        }
       }
      }
     } while(0);
     $214 = ($$0191$i>>>0)<(16);
     if ($214) {
      $215 = (($$0191$i) + ($6))|0;
      $216 = $215 | 3;
      $217 = ((($$0190$i)) + 4|0);
      store4($217,$216);
      $218 = (($$0190$i) + ($215)|0);
      $219 = ((($218)) + 4|0);
      $220 = load4($219);
      $221 = $220 | 1;
      store4($219,$221);
     } else {
      $222 = $6 | 3;
      $223 = ((($$0190$i)) + 4|0);
      store4($223,$222);
      $224 = $$0191$i | 1;
      $225 = ((($153)) + 4|0);
      store4($225,$224);
      $226 = (($153) + ($$0191$i)|0);
      store4($226,$$0191$i);
      $227 = ($37|0)==(0);
      if (!($227)) {
       $228 = load4((12108));
       $229 = $37 >>> 3;
       $230 = $229 << 1;
       $231 = (12128 + ($230<<2)|0);
       $232 = 1 << $229;
       $233 = $8 & $232;
       $234 = ($233|0)==(0);
       if ($234) {
        $235 = $8 | $232;
        store4(12088,$235);
        $$pre$i = ((($231)) + 8|0);
        $$0187$i = $231;$$pre$phi$iZ2D = $$pre$i;
       } else {
        $236 = ((($231)) + 8|0);
        $237 = load4($236);
        $238 = load4((12104));
        $239 = ($237>>>0)<($238>>>0);
        if ($239) {
         _abort();
         // unreachable;
        } else {
         $$0187$i = $237;$$pre$phi$iZ2D = $236;
        }
       }
       store4($$pre$phi$iZ2D,$228);
       $240 = ((($$0187$i)) + 12|0);
       store4($240,$228);
       $241 = ((($228)) + 8|0);
       store4($241,$$0187$i);
       $242 = ((($228)) + 12|0);
       store4($242,$231);
      }
      store4((12096),$$0191$i);
      store4((12108),$153);
     }
     $243 = ((($$0190$i)) + 8|0);
     $$0 = $243;
     STACKTOP = sp;return ($$0|0);
    }
   } else {
    $$0197 = $6;
   }
  } else {
   $244 = ($0>>>0)>(4294967231);
   if ($244) {
    $$0197 = -1;
   } else {
    $245 = (($0) + 11)|0;
    $246 = $245 & -8;
    $247 = load4((12092));
    $248 = ($247|0)==(0);
    if ($248) {
     $$0197 = $246;
    } else {
     $249 = (0 - ($246))|0;
     $250 = $245 >>> 8;
     $251 = ($250|0)==(0);
     if ($251) {
      $$0356$i = 0;
     } else {
      $252 = ($246>>>0)>(16777215);
      if ($252) {
       $$0356$i = 31;
      } else {
       $253 = (($250) + 1048320)|0;
       $254 = $253 >>> 16;
       $255 = $254 & 8;
       $256 = $250 << $255;
       $257 = (($256) + 520192)|0;
       $258 = $257 >>> 16;
       $259 = $258 & 4;
       $260 = $259 | $255;
       $261 = $256 << $259;
       $262 = (($261) + 245760)|0;
       $263 = $262 >>> 16;
       $264 = $263 & 2;
       $265 = $260 | $264;
       $266 = (14 - ($265))|0;
       $267 = $261 << $264;
       $268 = $267 >>> 15;
       $269 = (($266) + ($268))|0;
       $270 = $269 << 1;
       $271 = (($269) + 7)|0;
       $272 = $246 >>> $271;
       $273 = $272 & 1;
       $274 = $273 | $270;
       $$0356$i = $274;
      }
     }
     $275 = (12392 + ($$0356$i<<2)|0);
     $276 = load4($275);
     $277 = ($276|0)==(0|0);
     L123: do {
      if ($277) {
       $$2353$i = 0;$$3$i201 = 0;$$3348$i = $249;
       label = 86;
      } else {
       $278 = ($$0356$i|0)==(31);
       $279 = $$0356$i >>> 1;
       $280 = (25 - ($279))|0;
       $281 = $278 ? 0 : $280;
       $282 = $246 << $281;
       $$0340$i = 0;$$0345$i = $249;$$0351$i = $276;$$0357$i = $282;$$0360$i = 0;
       while(1) {
        $283 = ((($$0351$i)) + 4|0);
        $284 = load4($283);
        $285 = $284 & -8;
        $286 = (($285) - ($246))|0;
        $287 = ($286>>>0)<($$0345$i>>>0);
        if ($287) {
         $288 = ($286|0)==(0);
         if ($288) {
          $$413$i = $$0351$i;$$434912$i = 0;$$435511$i = $$0351$i;
          label = 90;
          break L123;
         } else {
          $$1341$i = $$0351$i;$$1346$i = $286;
         }
        } else {
         $$1341$i = $$0340$i;$$1346$i = $$0345$i;
        }
        $289 = ((($$0351$i)) + 20|0);
        $290 = load4($289);
        $291 = $$0357$i >>> 31;
        $292 = (((($$0351$i)) + 16|0) + ($291<<2)|0);
        $293 = load4($292);
        $294 = ($290|0)==(0|0);
        $295 = ($290|0)==($293|0);
        $or$cond1$i = $294 | $295;
        $$1361$i = $or$cond1$i ? $$0360$i : $290;
        $296 = ($293|0)==(0|0);
        $297 = $296&1;
        $298 = $297 ^ 1;
        $$0357$$i = $$0357$i << $298;
        if ($296) {
         $$2353$i = $$1361$i;$$3$i201 = $$1341$i;$$3348$i = $$1346$i;
         label = 86;
         break;
        } else {
         $$0340$i = $$1341$i;$$0345$i = $$1346$i;$$0351$i = $293;$$0357$i = $$0357$$i;$$0360$i = $$1361$i;
        }
       }
      }
     } while(0);
     if ((label|0) == 86) {
      $299 = ($$2353$i|0)==(0|0);
      $300 = ($$3$i201|0)==(0|0);
      $or$cond$i = $299 & $300;
      if ($or$cond$i) {
       $301 = 2 << $$0356$i;
       $302 = (0 - ($301))|0;
       $303 = $301 | $302;
       $304 = $247 & $303;
       $305 = ($304|0)==(0);
       if ($305) {
        $$0197 = $246;
        break;
       }
       $306 = (0 - ($304))|0;
       $307 = $304 & $306;
       $308 = (($307) + -1)|0;
       $309 = $308 >>> 12;
       $310 = $309 & 16;
       $311 = $308 >>> $310;
       $312 = $311 >>> 5;
       $313 = $312 & 8;
       $314 = $313 | $310;
       $315 = $311 >>> $313;
       $316 = $315 >>> 2;
       $317 = $316 & 4;
       $318 = $314 | $317;
       $319 = $315 >>> $317;
       $320 = $319 >>> 1;
       $321 = $320 & 2;
       $322 = $318 | $321;
       $323 = $319 >>> $321;
       $324 = $323 >>> 1;
       $325 = $324 & 1;
       $326 = $322 | $325;
       $327 = $323 >>> $325;
       $328 = (($326) + ($327))|0;
       $329 = (12392 + ($328<<2)|0);
       $330 = load4($329);
       $$4355$ph$i = $330;
      } else {
       $$4355$ph$i = $$2353$i;
      }
      $331 = ($$4355$ph$i|0)==(0|0);
      if ($331) {
       $$4$lcssa$i = $$3$i201;$$4349$lcssa$i = $$3348$i;
      } else {
       $$413$i = $$3$i201;$$434912$i = $$3348$i;$$435511$i = $$4355$ph$i;
       label = 90;
      }
     }
     if ((label|0) == 90) {
      while(1) {
       label = 0;
       $332 = ((($$435511$i)) + 4|0);
       $333 = load4($332);
       $334 = $333 & -8;
       $335 = (($334) - ($246))|0;
       $336 = ($335>>>0)<($$434912$i>>>0);
       $$$4349$i = $336 ? $335 : $$434912$i;
       $$4355$$4$i = $336 ? $$435511$i : $$413$i;
       $337 = ((($$435511$i)) + 16|0);
       $338 = load4($337);
       $339 = ($338|0)==(0|0);
       if (!($339)) {
        $$413$i = $$4355$$4$i;$$434912$i = $$$4349$i;$$435511$i = $338;
        label = 90;
        continue;
       }
       $340 = ((($$435511$i)) + 20|0);
       $341 = load4($340);
       $342 = ($341|0)==(0|0);
       if ($342) {
        $$4$lcssa$i = $$4355$$4$i;$$4349$lcssa$i = $$$4349$i;
        break;
       } else {
        $$413$i = $$4355$$4$i;$$434912$i = $$$4349$i;$$435511$i = $341;
        label = 90;
       }
      }
     }
     $343 = ($$4$lcssa$i|0)==(0|0);
     if ($343) {
      $$0197 = $246;
     } else {
      $344 = load4((12096));
      $345 = (($344) - ($246))|0;
      $346 = ($$4349$lcssa$i>>>0)<($345>>>0);
      if ($346) {
       $347 = load4((12104));
       $348 = ($$4$lcssa$i>>>0)<($347>>>0);
       if ($348) {
        _abort();
        // unreachable;
       }
       $349 = (($$4$lcssa$i) + ($246)|0);
       $350 = ($$4$lcssa$i>>>0)<($349>>>0);
       if (!($350)) {
        _abort();
        // unreachable;
       }
       $351 = ((($$4$lcssa$i)) + 24|0);
       $352 = load4($351);
       $353 = ((($$4$lcssa$i)) + 12|0);
       $354 = load4($353);
       $355 = ($354|0)==($$4$lcssa$i|0);
       do {
        if ($355) {
         $365 = ((($$4$lcssa$i)) + 20|0);
         $366 = load4($365);
         $367 = ($366|0)==(0|0);
         if ($367) {
          $368 = ((($$4$lcssa$i)) + 16|0);
          $369 = load4($368);
          $370 = ($369|0)==(0|0);
          if ($370) {
           $$3370$i = 0;
           break;
          } else {
           $$1368$i = $369;$$1372$i = $368;
          }
         } else {
          $$1368$i = $366;$$1372$i = $365;
         }
         while(1) {
          $371 = ((($$1368$i)) + 20|0);
          $372 = load4($371);
          $373 = ($372|0)==(0|0);
          if (!($373)) {
           $$1368$i = $372;$$1372$i = $371;
           continue;
          }
          $374 = ((($$1368$i)) + 16|0);
          $375 = load4($374);
          $376 = ($375|0)==(0|0);
          if ($376) {
           break;
          } else {
           $$1368$i = $375;$$1372$i = $374;
          }
         }
         $377 = ($$1372$i>>>0)<($347>>>0);
         if ($377) {
          _abort();
          // unreachable;
         } else {
          store4($$1372$i,0);
          $$3370$i = $$1368$i;
          break;
         }
        } else {
         $356 = ((($$4$lcssa$i)) + 8|0);
         $357 = load4($356);
         $358 = ($357>>>0)<($347>>>0);
         if ($358) {
          _abort();
          // unreachable;
         }
         $359 = ((($357)) + 12|0);
         $360 = load4($359);
         $361 = ($360|0)==($$4$lcssa$i|0);
         if (!($361)) {
          _abort();
          // unreachable;
         }
         $362 = ((($354)) + 8|0);
         $363 = load4($362);
         $364 = ($363|0)==($$4$lcssa$i|0);
         if ($364) {
          store4($359,$354);
          store4($362,$357);
          $$3370$i = $354;
          break;
         } else {
          _abort();
          // unreachable;
         }
        }
       } while(0);
       $378 = ($352|0)==(0|0);
       do {
        if ($378) {
         $470 = $247;
        } else {
         $379 = ((($$4$lcssa$i)) + 28|0);
         $380 = load4($379);
         $381 = (12392 + ($380<<2)|0);
         $382 = load4($381);
         $383 = ($$4$lcssa$i|0)==($382|0);
         if ($383) {
          store4($381,$$3370$i);
          $cond$i204 = ($$3370$i|0)==(0|0);
          if ($cond$i204) {
           $384 = 1 << $380;
           $385 = $384 ^ -1;
           $386 = $247 & $385;
           store4((12092),$386);
           $470 = $386;
           break;
          }
         } else {
          $387 = load4((12104));
          $388 = ($352>>>0)<($387>>>0);
          if ($388) {
           _abort();
           // unreachable;
          }
          $389 = ((($352)) + 16|0);
          $390 = load4($389);
          $391 = ($390|0)==($$4$lcssa$i|0);
          if ($391) {
           store4($389,$$3370$i);
          } else {
           $392 = ((($352)) + 20|0);
           store4($392,$$3370$i);
          }
          $393 = ($$3370$i|0)==(0|0);
          if ($393) {
           $470 = $247;
           break;
          }
         }
         $394 = load4((12104));
         $395 = ($$3370$i>>>0)<($394>>>0);
         if ($395) {
          _abort();
          // unreachable;
         }
         $396 = ((($$3370$i)) + 24|0);
         store4($396,$352);
         $397 = ((($$4$lcssa$i)) + 16|0);
         $398 = load4($397);
         $399 = ($398|0)==(0|0);
         do {
          if (!($399)) {
           $400 = ($398>>>0)<($394>>>0);
           if ($400) {
            _abort();
            // unreachable;
           } else {
            $401 = ((($$3370$i)) + 16|0);
            store4($401,$398);
            $402 = ((($398)) + 24|0);
            store4($402,$$3370$i);
            break;
           }
          }
         } while(0);
         $403 = ((($$4$lcssa$i)) + 20|0);
         $404 = load4($403);
         $405 = ($404|0)==(0|0);
         if ($405) {
          $470 = $247;
         } else {
          $406 = load4((12104));
          $407 = ($404>>>0)<($406>>>0);
          if ($407) {
           _abort();
           // unreachable;
          } else {
           $408 = ((($$3370$i)) + 20|0);
           store4($408,$404);
           $409 = ((($404)) + 24|0);
           store4($409,$$3370$i);
           $470 = $247;
           break;
          }
         }
        }
       } while(0);
       $410 = ($$4349$lcssa$i>>>0)<(16);
       do {
        if ($410) {
         $411 = (($$4349$lcssa$i) + ($246))|0;
         $412 = $411 | 3;
         $413 = ((($$4$lcssa$i)) + 4|0);
         store4($413,$412);
         $414 = (($$4$lcssa$i) + ($411)|0);
         $415 = ((($414)) + 4|0);
         $416 = load4($415);
         $417 = $416 | 1;
         store4($415,$417);
        } else {
         $418 = $246 | 3;
         $419 = ((($$4$lcssa$i)) + 4|0);
         store4($419,$418);
         $420 = $$4349$lcssa$i | 1;
         $421 = ((($349)) + 4|0);
         store4($421,$420);
         $422 = (($349) + ($$4349$lcssa$i)|0);
         store4($422,$$4349$lcssa$i);
         $423 = $$4349$lcssa$i >>> 3;
         $424 = ($$4349$lcssa$i>>>0)<(256);
         if ($424) {
          $425 = $423 << 1;
          $426 = (12128 + ($425<<2)|0);
          $427 = load4(12088);
          $428 = 1 << $423;
          $429 = $427 & $428;
          $430 = ($429|0)==(0);
          if ($430) {
           $431 = $427 | $428;
           store4(12088,$431);
           $$pre$i205 = ((($426)) + 8|0);
           $$0366$i = $426;$$pre$phi$i206Z2D = $$pre$i205;
          } else {
           $432 = ((($426)) + 8|0);
           $433 = load4($432);
           $434 = load4((12104));
           $435 = ($433>>>0)<($434>>>0);
           if ($435) {
            _abort();
            // unreachable;
           } else {
            $$0366$i = $433;$$pre$phi$i206Z2D = $432;
           }
          }
          store4($$pre$phi$i206Z2D,$349);
          $436 = ((($$0366$i)) + 12|0);
          store4($436,$349);
          $437 = ((($349)) + 8|0);
          store4($437,$$0366$i);
          $438 = ((($349)) + 12|0);
          store4($438,$426);
          break;
         }
         $439 = $$4349$lcssa$i >>> 8;
         $440 = ($439|0)==(0);
         if ($440) {
          $$0359$i = 0;
         } else {
          $441 = ($$4349$lcssa$i>>>0)>(16777215);
          if ($441) {
           $$0359$i = 31;
          } else {
           $442 = (($439) + 1048320)|0;
           $443 = $442 >>> 16;
           $444 = $443 & 8;
           $445 = $439 << $444;
           $446 = (($445) + 520192)|0;
           $447 = $446 >>> 16;
           $448 = $447 & 4;
           $449 = $448 | $444;
           $450 = $445 << $448;
           $451 = (($450) + 245760)|0;
           $452 = $451 >>> 16;
           $453 = $452 & 2;
           $454 = $449 | $453;
           $455 = (14 - ($454))|0;
           $456 = $450 << $453;
           $457 = $456 >>> 15;
           $458 = (($455) + ($457))|0;
           $459 = $458 << 1;
           $460 = (($458) + 7)|0;
           $461 = $$4349$lcssa$i >>> $460;
           $462 = $461 & 1;
           $463 = $462 | $459;
           $$0359$i = $463;
          }
         }
         $464 = (12392 + ($$0359$i<<2)|0);
         $465 = ((($349)) + 28|0);
         store4($465,$$0359$i);
         $466 = ((($349)) + 16|0);
         $467 = ((($466)) + 4|0);
         store4($467,0);
         store4($466,0);
         $468 = 1 << $$0359$i;
         $469 = $470 & $468;
         $471 = ($469|0)==(0);
         if ($471) {
          $472 = $470 | $468;
          store4((12092),$472);
          store4($464,$349);
          $473 = ((($349)) + 24|0);
          store4($473,$464);
          $474 = ((($349)) + 12|0);
          store4($474,$349);
          $475 = ((($349)) + 8|0);
          store4($475,$349);
          break;
         }
         $476 = load4($464);
         $477 = ($$0359$i|0)==(31);
         $478 = $$0359$i >>> 1;
         $479 = (25 - ($478))|0;
         $480 = $477 ? 0 : $479;
         $481 = $$4349$lcssa$i << $480;
         $$0342$i = $481;$$0343$i = $476;
         while(1) {
          $482 = ((($$0343$i)) + 4|0);
          $483 = load4($482);
          $484 = $483 & -8;
          $485 = ($484|0)==($$4349$lcssa$i|0);
          if ($485) {
           label = 148;
           break;
          }
          $486 = $$0342$i >>> 31;
          $487 = (((($$0343$i)) + 16|0) + ($486<<2)|0);
          $488 = $$0342$i << 1;
          $489 = load4($487);
          $490 = ($489|0)==(0|0);
          if ($490) {
           label = 145;
           break;
          } else {
           $$0342$i = $488;$$0343$i = $489;
          }
         }
         if ((label|0) == 145) {
          $491 = load4((12104));
          $492 = ($487>>>0)<($491>>>0);
          if ($492) {
           _abort();
           // unreachable;
          } else {
           store4($487,$349);
           $493 = ((($349)) + 24|0);
           store4($493,$$0343$i);
           $494 = ((($349)) + 12|0);
           store4($494,$349);
           $495 = ((($349)) + 8|0);
           store4($495,$349);
           break;
          }
         }
         else if ((label|0) == 148) {
          $496 = ((($$0343$i)) + 8|0);
          $497 = load4($496);
          $498 = load4((12104));
          $499 = ($497>>>0)>=($498>>>0);
          $not$7$i = ($$0343$i>>>0)>=($498>>>0);
          $500 = $499 & $not$7$i;
          if ($500) {
           $501 = ((($497)) + 12|0);
           store4($501,$349);
           store4($496,$349);
           $502 = ((($349)) + 8|0);
           store4($502,$497);
           $503 = ((($349)) + 12|0);
           store4($503,$$0343$i);
           $504 = ((($349)) + 24|0);
           store4($504,0);
           break;
          } else {
           _abort();
           // unreachable;
          }
         }
        }
       } while(0);
       $505 = ((($$4$lcssa$i)) + 8|0);
       $$0 = $505;
       STACKTOP = sp;return ($$0|0);
      } else {
       $$0197 = $246;
      }
     }
    }
   }
  }
 } while(0);
 $506 = load4((12096));
 $507 = ($506>>>0)<($$0197>>>0);
 if (!($507)) {
  $508 = (($506) - ($$0197))|0;
  $509 = load4((12108));
  $510 = ($508>>>0)>(15);
  if ($510) {
   $511 = (($509) + ($$0197)|0);
   store4((12108),$511);
   store4((12096),$508);
   $512 = $508 | 1;
   $513 = ((($511)) + 4|0);
   store4($513,$512);
   $514 = (($511) + ($508)|0);
   store4($514,$508);
   $515 = $$0197 | 3;
   $516 = ((($509)) + 4|0);
   store4($516,$515);
  } else {
   store4((12096),0);
   store4((12108),0);
   $517 = $506 | 3;
   $518 = ((($509)) + 4|0);
   store4($518,$517);
   $519 = (($509) + ($506)|0);
   $520 = ((($519)) + 4|0);
   $521 = load4($520);
   $522 = $521 | 1;
   store4($520,$522);
  }
  $523 = ((($509)) + 8|0);
  $$0 = $523;
  STACKTOP = sp;return ($$0|0);
 }
 $524 = load4((12100));
 $525 = ($524>>>0)>($$0197>>>0);
 if ($525) {
  $526 = (($524) - ($$0197))|0;
  store4((12100),$526);
  $527 = load4((12112));
  $528 = (($527) + ($$0197)|0);
  store4((12112),$528);
  $529 = $526 | 1;
  $530 = ((($528)) + 4|0);
  store4($530,$529);
  $531 = $$0197 | 3;
  $532 = ((($527)) + 4|0);
  store4($532,$531);
  $533 = ((($527)) + 8|0);
  $$0 = $533;
  STACKTOP = sp;return ($$0|0);
 }
 $534 = load4(12560);
 $535 = ($534|0)==(0);
 if ($535) {
  store4((12568),4096);
  store4((12564),4096);
  store4((12572),-1);
  store4((12576),-1);
  store4((12580),0);
  store4((12532),0);
  $536 = $1;
  $537 = $536 & -16;
  $538 = $537 ^ 1431655768;
  store4($1,$538);
  store4(12560,$538);
  $542 = 4096;
 } else {
  $$pre$i208 = load4((12568));
  $542 = $$pre$i208;
 }
 $539 = (($$0197) + 48)|0;
 $540 = (($$0197) + 47)|0;
 $541 = (($542) + ($540))|0;
 $543 = (0 - ($542))|0;
 $544 = $541 & $543;
 $545 = ($544>>>0)>($$0197>>>0);
 if (!($545)) {
  $$0 = 0;
  STACKTOP = sp;return ($$0|0);
 }
 $546 = load4((12528));
 $547 = ($546|0)==(0);
 if (!($547)) {
  $548 = load4((12520));
  $549 = (($548) + ($544))|0;
  $550 = ($549>>>0)<=($548>>>0);
  $551 = ($549>>>0)>($546>>>0);
  $or$cond1$i210 = $550 | $551;
  if ($or$cond1$i210) {
   $$0 = 0;
   STACKTOP = sp;return ($$0|0);
  }
 }
 $552 = load4((12532));
 $553 = $552 & 4;
 $554 = ($553|0)==(0);
 L255: do {
  if ($554) {
   $555 = load4((12112));
   $556 = ($555|0)==(0|0);
   L257: do {
    if ($556) {
     label = 172;
    } else {
     $$0$i17$i = (12536);
     while(1) {
      $557 = load4($$0$i17$i);
      $558 = ($557>>>0)>($555>>>0);
      if (!($558)) {
       $559 = ((($$0$i17$i)) + 4|0);
       $560 = load4($559);
       $561 = (($557) + ($560)|0);
       $562 = ($561>>>0)>($555>>>0);
       if ($562) {
        break;
       }
      }
      $563 = ((($$0$i17$i)) + 8|0);
      $564 = load4($563);
      $565 = ($564|0)==(0|0);
      if ($565) {
       label = 172;
       break L257;
      } else {
       $$0$i17$i = $564;
      }
     }
     $588 = (($541) - ($524))|0;
     $589 = $588 & $543;
     $590 = ($589>>>0)<(2147483647);
     if ($590) {
      $591 = (_sbrk(($589|0))|0);
      $592 = load4($$0$i17$i);
      $593 = load4($559);
      $594 = (($592) + ($593)|0);
      $595 = ($591|0)==($594|0);
      if ($595) {
       $596 = ($591|0)==((-1)|0);
       if (!($596)) {
        $$723947$i = $589;$$748$i = $591;
        label = 190;
        break L255;
       }
      } else {
       $$2247$ph$i = $591;$$2253$ph$i = $589;
       label = 180;
      }
     }
    }
   } while(0);
   do {
    if ((label|0) == 172) {
     $566 = (_sbrk(0)|0);
     $567 = ($566|0)==((-1)|0);
     if (!($567)) {
      $568 = $566;
      $569 = load4((12564));
      $570 = (($569) + -1)|0;
      $571 = $570 & $568;
      $572 = ($571|0)==(0);
      $573 = (($570) + ($568))|0;
      $574 = (0 - ($569))|0;
      $575 = $573 & $574;
      $576 = (($575) - ($568))|0;
      $577 = $572 ? 0 : $576;
      $$$i = (($577) + ($544))|0;
      $578 = load4((12520));
      $579 = (($$$i) + ($578))|0;
      $580 = ($$$i>>>0)>($$0197>>>0);
      $581 = ($$$i>>>0)<(2147483647);
      $or$cond$i211 = $580 & $581;
      if ($or$cond$i211) {
       $582 = load4((12528));
       $583 = ($582|0)==(0);
       if (!($583)) {
        $584 = ($579>>>0)<=($578>>>0);
        $585 = ($579>>>0)>($582>>>0);
        $or$cond2$i = $584 | $585;
        if ($or$cond2$i) {
         break;
        }
       }
       $586 = (_sbrk(($$$i|0))|0);
       $587 = ($586|0)==($566|0);
       if ($587) {
        $$723947$i = $$$i;$$748$i = $566;
        label = 190;
        break L255;
       } else {
        $$2247$ph$i = $586;$$2253$ph$i = $$$i;
        label = 180;
       }
      }
     }
    }
   } while(0);
   L274: do {
    if ((label|0) == 180) {
     $597 = (0 - ($$2253$ph$i))|0;
     $598 = ($$2247$ph$i|0)!=((-1)|0);
     $599 = ($$2253$ph$i>>>0)<(2147483647);
     $or$cond7$i = $599 & $598;
     $600 = ($539>>>0)>($$2253$ph$i>>>0);
     $or$cond10$i = $600 & $or$cond7$i;
     do {
      if ($or$cond10$i) {
       $601 = load4((12568));
       $602 = (($540) - ($$2253$ph$i))|0;
       $603 = (($602) + ($601))|0;
       $604 = (0 - ($601))|0;
       $605 = $603 & $604;
       $606 = ($605>>>0)<(2147483647);
       if ($606) {
        $607 = (_sbrk(($605|0))|0);
        $608 = ($607|0)==((-1)|0);
        if ($608) {
         (_sbrk(($597|0))|0);
         break L274;
        } else {
         $609 = (($605) + ($$2253$ph$i))|0;
         $$5256$i = $609;
         break;
        }
       } else {
        $$5256$i = $$2253$ph$i;
       }
      } else {
       $$5256$i = $$2253$ph$i;
      }
     } while(0);
     $610 = ($$2247$ph$i|0)==((-1)|0);
     if (!($610)) {
      $$723947$i = $$5256$i;$$748$i = $$2247$ph$i;
      label = 190;
      break L255;
     }
    }
   } while(0);
   $611 = load4((12532));
   $612 = $611 | 4;
   store4((12532),$612);
   label = 187;
  } else {
   label = 187;
  }
 } while(0);
 if ((label|0) == 187) {
  $613 = ($544>>>0)<(2147483647);
  if ($613) {
   $614 = (_sbrk(($544|0))|0);
   $615 = (_sbrk(0)|0);
   $616 = ($614|0)!=((-1)|0);
   $617 = ($615|0)!=((-1)|0);
   $or$cond5$i = $616 & $617;
   $618 = ($614>>>0)<($615>>>0);
   $or$cond11$i = $618 & $or$cond5$i;
   if ($or$cond11$i) {
    $619 = $615;
    $620 = $614;
    $621 = (($619) - ($620))|0;
    $622 = (($$0197) + 40)|0;
    $$not$i = ($621>>>0)>($622>>>0);
    if ($$not$i) {
     $$723947$i = $621;$$748$i = $614;
     label = 190;
    }
   }
  }
 }
 if ((label|0) == 190) {
  $623 = load4((12520));
  $624 = (($623) + ($$723947$i))|0;
  store4((12520),$624);
  $625 = load4((12524));
  $626 = ($624>>>0)>($625>>>0);
  if ($626) {
   store4((12524),$624);
  }
  $627 = load4((12112));
  $628 = ($627|0)==(0|0);
  do {
   if ($628) {
    $629 = load4((12104));
    $630 = ($629|0)==(0|0);
    $631 = ($$748$i>>>0)<($629>>>0);
    $or$cond12$i = $630 | $631;
    if ($or$cond12$i) {
     store4((12104),$$748$i);
    }
    store4((12536),$$748$i);
    store4((12540),$$723947$i);
    store4((12548),0);
    $632 = load4(12560);
    store4((12124),$632);
    store4((12120),-1);
    $$01$i$i = 0;
    while(1) {
     $633 = $$01$i$i << 1;
     $634 = (12128 + ($633<<2)|0);
     $635 = ((($634)) + 12|0);
     store4($635,$634);
     $636 = ((($634)) + 8|0);
     store4($636,$634);
     $637 = (($$01$i$i) + 1)|0;
     $exitcond$i$i = ($637|0)==(32);
     if ($exitcond$i$i) {
      break;
     } else {
      $$01$i$i = $637;
     }
    }
    $638 = (($$723947$i) + -40)|0;
    $639 = ((($$748$i)) + 8|0);
    $640 = $639;
    $641 = $640 & 7;
    $642 = ($641|0)==(0);
    $643 = (0 - ($640))|0;
    $644 = $643 & 7;
    $645 = $642 ? 0 : $644;
    $646 = (($$748$i) + ($645)|0);
    $647 = (($638) - ($645))|0;
    store4((12112),$646);
    store4((12100),$647);
    $648 = $647 | 1;
    $649 = ((($646)) + 4|0);
    store4($649,$648);
    $650 = (($646) + ($647)|0);
    $651 = ((($650)) + 4|0);
    store4($651,40);
    $652 = load4((12576));
    store4((12116),$652);
   } else {
    $$024370$i = (12536);
    while(1) {
     $653 = load4($$024370$i);
     $654 = ((($$024370$i)) + 4|0);
     $655 = load4($654);
     $656 = (($653) + ($655)|0);
     $657 = ($$748$i|0)==($656|0);
     if ($657) {
      label = 200;
      break;
     }
     $658 = ((($$024370$i)) + 8|0);
     $659 = load4($658);
     $660 = ($659|0)==(0|0);
     if ($660) {
      break;
     } else {
      $$024370$i = $659;
     }
    }
    if ((label|0) == 200) {
     $661 = ((($$024370$i)) + 12|0);
     $662 = load4($661);
     $663 = $662 & 8;
     $664 = ($663|0)==(0);
     if ($664) {
      $665 = ($627>>>0)>=($653>>>0);
      $666 = ($627>>>0)<($$748$i>>>0);
      $or$cond50$i = $666 & $665;
      if ($or$cond50$i) {
       $667 = (($655) + ($$723947$i))|0;
       store4($654,$667);
       $668 = load4((12100));
       $669 = ((($627)) + 8|0);
       $670 = $669;
       $671 = $670 & 7;
       $672 = ($671|0)==(0);
       $673 = (0 - ($670))|0;
       $674 = $673 & 7;
       $675 = $672 ? 0 : $674;
       $676 = (($627) + ($675)|0);
       $677 = (($$723947$i) - ($675))|0;
       $678 = (($677) + ($668))|0;
       store4((12112),$676);
       store4((12100),$678);
       $679 = $678 | 1;
       $680 = ((($676)) + 4|0);
       store4($680,$679);
       $681 = (($676) + ($678)|0);
       $682 = ((($681)) + 4|0);
       store4($682,40);
       $683 = load4((12576));
       store4((12116),$683);
       break;
      }
     }
    }
    $684 = load4((12104));
    $685 = ($$748$i>>>0)<($684>>>0);
    if ($685) {
     store4((12104),$$748$i);
     $749 = $$748$i;
    } else {
     $749 = $684;
    }
    $686 = (($$748$i) + ($$723947$i)|0);
    $$124469$i = (12536);
    while(1) {
     $687 = load4($$124469$i);
     $688 = ($687|0)==($686|0);
     if ($688) {
      label = 208;
      break;
     }
     $689 = ((($$124469$i)) + 8|0);
     $690 = load4($689);
     $691 = ($690|0)==(0|0);
     if ($691) {
      $$0$i$i$i = (12536);
      break;
     } else {
      $$124469$i = $690;
     }
    }
    if ((label|0) == 208) {
     $692 = ((($$124469$i)) + 12|0);
     $693 = load4($692);
     $694 = $693 & 8;
     $695 = ($694|0)==(0);
     if ($695) {
      store4($$124469$i,$$748$i);
      $696 = ((($$124469$i)) + 4|0);
      $697 = load4($696);
      $698 = (($697) + ($$723947$i))|0;
      store4($696,$698);
      $699 = ((($$748$i)) + 8|0);
      $700 = $699;
      $701 = $700 & 7;
      $702 = ($701|0)==(0);
      $703 = (0 - ($700))|0;
      $704 = $703 & 7;
      $705 = $702 ? 0 : $704;
      $706 = (($$748$i) + ($705)|0);
      $707 = ((($686)) + 8|0);
      $708 = $707;
      $709 = $708 & 7;
      $710 = ($709|0)==(0);
      $711 = (0 - ($708))|0;
      $712 = $711 & 7;
      $713 = $710 ? 0 : $712;
      $714 = (($686) + ($713)|0);
      $715 = $714;
      $716 = $706;
      $717 = (($715) - ($716))|0;
      $718 = (($706) + ($$0197)|0);
      $719 = (($717) - ($$0197))|0;
      $720 = $$0197 | 3;
      $721 = ((($706)) + 4|0);
      store4($721,$720);
      $722 = ($714|0)==($627|0);
      do {
       if ($722) {
        $723 = load4((12100));
        $724 = (($723) + ($719))|0;
        store4((12100),$724);
        store4((12112),$718);
        $725 = $724 | 1;
        $726 = ((($718)) + 4|0);
        store4($726,$725);
       } else {
        $727 = load4((12108));
        $728 = ($714|0)==($727|0);
        if ($728) {
         $729 = load4((12096));
         $730 = (($729) + ($719))|0;
         store4((12096),$730);
         store4((12108),$718);
         $731 = $730 | 1;
         $732 = ((($718)) + 4|0);
         store4($732,$731);
         $733 = (($718) + ($730)|0);
         store4($733,$730);
         break;
        }
        $734 = ((($714)) + 4|0);
        $735 = load4($734);
        $736 = $735 & 3;
        $737 = ($736|0)==(1);
        if ($737) {
         $738 = $735 & -8;
         $739 = $735 >>> 3;
         $740 = ($735>>>0)<(256);
         L326: do {
          if ($740) {
           $741 = ((($714)) + 8|0);
           $742 = load4($741);
           $743 = ((($714)) + 12|0);
           $744 = load4($743);
           $745 = $739 << 1;
           $746 = (12128 + ($745<<2)|0);
           $747 = ($742|0)==($746|0);
           do {
            if (!($747)) {
             $748 = ($742>>>0)<($749>>>0);
             if ($748) {
              _abort();
              // unreachable;
             }
             $750 = ((($742)) + 12|0);
             $751 = load4($750);
             $752 = ($751|0)==($714|0);
             if ($752) {
              break;
             }
             _abort();
             // unreachable;
            }
           } while(0);
           $753 = ($744|0)==($742|0);
           if ($753) {
            $754 = 1 << $739;
            $755 = $754 ^ -1;
            $756 = load4(12088);
            $757 = $756 & $755;
            store4(12088,$757);
            break;
           }
           $758 = ($744|0)==($746|0);
           do {
            if ($758) {
             $$pre9$i$i = ((($744)) + 8|0);
             $$pre$phi10$i$iZ2D = $$pre9$i$i;
            } else {
             $759 = ($744>>>0)<($749>>>0);
             if ($759) {
              _abort();
              // unreachable;
             }
             $760 = ((($744)) + 8|0);
             $761 = load4($760);
             $762 = ($761|0)==($714|0);
             if ($762) {
              $$pre$phi10$i$iZ2D = $760;
              break;
             }
             _abort();
             // unreachable;
            }
           } while(0);
           $763 = ((($742)) + 12|0);
           store4($763,$744);
           store4($$pre$phi10$i$iZ2D,$742);
          } else {
           $764 = ((($714)) + 24|0);
           $765 = load4($764);
           $766 = ((($714)) + 12|0);
           $767 = load4($766);
           $768 = ($767|0)==($714|0);
           do {
            if ($768) {
             $778 = ((($714)) + 16|0);
             $779 = ((($778)) + 4|0);
             $780 = load4($779);
             $781 = ($780|0)==(0|0);
             if ($781) {
              $782 = load4($778);
              $783 = ($782|0)==(0|0);
              if ($783) {
               $$3$i$i = 0;
               break;
              } else {
               $$1290$i$i = $782;$$1292$i$i = $778;
              }
             } else {
              $$1290$i$i = $780;$$1292$i$i = $779;
             }
             while(1) {
              $784 = ((($$1290$i$i)) + 20|0);
              $785 = load4($784);
              $786 = ($785|0)==(0|0);
              if (!($786)) {
               $$1290$i$i = $785;$$1292$i$i = $784;
               continue;
              }
              $787 = ((($$1290$i$i)) + 16|0);
              $788 = load4($787);
              $789 = ($788|0)==(0|0);
              if ($789) {
               break;
              } else {
               $$1290$i$i = $788;$$1292$i$i = $787;
              }
             }
             $790 = ($$1292$i$i>>>0)<($749>>>0);
             if ($790) {
              _abort();
              // unreachable;
             } else {
              store4($$1292$i$i,0);
              $$3$i$i = $$1290$i$i;
              break;
             }
            } else {
             $769 = ((($714)) + 8|0);
             $770 = load4($769);
             $771 = ($770>>>0)<($749>>>0);
             if ($771) {
              _abort();
              // unreachable;
             }
             $772 = ((($770)) + 12|0);
             $773 = load4($772);
             $774 = ($773|0)==($714|0);
             if (!($774)) {
              _abort();
              // unreachable;
             }
             $775 = ((($767)) + 8|0);
             $776 = load4($775);
             $777 = ($776|0)==($714|0);
             if ($777) {
              store4($772,$767);
              store4($775,$770);
              $$3$i$i = $767;
              break;
             } else {
              _abort();
              // unreachable;
             }
            }
           } while(0);
           $791 = ($765|0)==(0|0);
           if ($791) {
            break;
           }
           $792 = ((($714)) + 28|0);
           $793 = load4($792);
           $794 = (12392 + ($793<<2)|0);
           $795 = load4($794);
           $796 = ($714|0)==($795|0);
           do {
            if ($796) {
             store4($794,$$3$i$i);
             $cond$i$i = ($$3$i$i|0)==(0|0);
             if (!($cond$i$i)) {
              break;
             }
             $797 = 1 << $793;
             $798 = $797 ^ -1;
             $799 = load4((12092));
             $800 = $799 & $798;
             store4((12092),$800);
             break L326;
            } else {
             $801 = load4((12104));
             $802 = ($765>>>0)<($801>>>0);
             if ($802) {
              _abort();
              // unreachable;
             }
             $803 = ((($765)) + 16|0);
             $804 = load4($803);
             $805 = ($804|0)==($714|0);
             if ($805) {
              store4($803,$$3$i$i);
             } else {
              $806 = ((($765)) + 20|0);
              store4($806,$$3$i$i);
             }
             $807 = ($$3$i$i|0)==(0|0);
             if ($807) {
              break L326;
             }
            }
           } while(0);
           $808 = load4((12104));
           $809 = ($$3$i$i>>>0)<($808>>>0);
           if ($809) {
            _abort();
            // unreachable;
           }
           $810 = ((($$3$i$i)) + 24|0);
           store4($810,$765);
           $811 = ((($714)) + 16|0);
           $812 = load4($811);
           $813 = ($812|0)==(0|0);
           do {
            if (!($813)) {
             $814 = ($812>>>0)<($808>>>0);
             if ($814) {
              _abort();
              // unreachable;
             } else {
              $815 = ((($$3$i$i)) + 16|0);
              store4($815,$812);
              $816 = ((($812)) + 24|0);
              store4($816,$$3$i$i);
              break;
             }
            }
           } while(0);
           $817 = ((($811)) + 4|0);
           $818 = load4($817);
           $819 = ($818|0)==(0|0);
           if ($819) {
            break;
           }
           $820 = load4((12104));
           $821 = ($818>>>0)<($820>>>0);
           if ($821) {
            _abort();
            // unreachable;
           } else {
            $822 = ((($$3$i$i)) + 20|0);
            store4($822,$818);
            $823 = ((($818)) + 24|0);
            store4($823,$$3$i$i);
            break;
           }
          }
         } while(0);
         $824 = (($714) + ($738)|0);
         $825 = (($738) + ($719))|0;
         $$0$i18$i = $824;$$0286$i$i = $825;
        } else {
         $$0$i18$i = $714;$$0286$i$i = $719;
        }
        $826 = ((($$0$i18$i)) + 4|0);
        $827 = load4($826);
        $828 = $827 & -2;
        store4($826,$828);
        $829 = $$0286$i$i | 1;
        $830 = ((($718)) + 4|0);
        store4($830,$829);
        $831 = (($718) + ($$0286$i$i)|0);
        store4($831,$$0286$i$i);
        $832 = $$0286$i$i >>> 3;
        $833 = ($$0286$i$i>>>0)<(256);
        if ($833) {
         $834 = $832 << 1;
         $835 = (12128 + ($834<<2)|0);
         $836 = load4(12088);
         $837 = 1 << $832;
         $838 = $836 & $837;
         $839 = ($838|0)==(0);
         do {
          if ($839) {
           $840 = $836 | $837;
           store4(12088,$840);
           $$pre$i19$i = ((($835)) + 8|0);
           $$0294$i$i = $835;$$pre$phi$i20$iZ2D = $$pre$i19$i;
          } else {
           $841 = ((($835)) + 8|0);
           $842 = load4($841);
           $843 = load4((12104));
           $844 = ($842>>>0)<($843>>>0);
           if (!($844)) {
            $$0294$i$i = $842;$$pre$phi$i20$iZ2D = $841;
            break;
           }
           _abort();
           // unreachable;
          }
         } while(0);
         store4($$pre$phi$i20$iZ2D,$718);
         $845 = ((($$0294$i$i)) + 12|0);
         store4($845,$718);
         $846 = ((($718)) + 8|0);
         store4($846,$$0294$i$i);
         $847 = ((($718)) + 12|0);
         store4($847,$835);
         break;
        }
        $848 = $$0286$i$i >>> 8;
        $849 = ($848|0)==(0);
        do {
         if ($849) {
          $$0295$i$i = 0;
         } else {
          $850 = ($$0286$i$i>>>0)>(16777215);
          if ($850) {
           $$0295$i$i = 31;
           break;
          }
          $851 = (($848) + 1048320)|0;
          $852 = $851 >>> 16;
          $853 = $852 & 8;
          $854 = $848 << $853;
          $855 = (($854) + 520192)|0;
          $856 = $855 >>> 16;
          $857 = $856 & 4;
          $858 = $857 | $853;
          $859 = $854 << $857;
          $860 = (($859) + 245760)|0;
          $861 = $860 >>> 16;
          $862 = $861 & 2;
          $863 = $858 | $862;
          $864 = (14 - ($863))|0;
          $865 = $859 << $862;
          $866 = $865 >>> 15;
          $867 = (($864) + ($866))|0;
          $868 = $867 << 1;
          $869 = (($867) + 7)|0;
          $870 = $$0286$i$i >>> $869;
          $871 = $870 & 1;
          $872 = $871 | $868;
          $$0295$i$i = $872;
         }
        } while(0);
        $873 = (12392 + ($$0295$i$i<<2)|0);
        $874 = ((($718)) + 28|0);
        store4($874,$$0295$i$i);
        $875 = ((($718)) + 16|0);
        $876 = ((($875)) + 4|0);
        store4($876,0);
        store4($875,0);
        $877 = load4((12092));
        $878 = 1 << $$0295$i$i;
        $879 = $877 & $878;
        $880 = ($879|0)==(0);
        if ($880) {
         $881 = $877 | $878;
         store4((12092),$881);
         store4($873,$718);
         $882 = ((($718)) + 24|0);
         store4($882,$873);
         $883 = ((($718)) + 12|0);
         store4($883,$718);
         $884 = ((($718)) + 8|0);
         store4($884,$718);
         break;
        }
        $885 = load4($873);
        $886 = ($$0295$i$i|0)==(31);
        $887 = $$0295$i$i >>> 1;
        $888 = (25 - ($887))|0;
        $889 = $886 ? 0 : $888;
        $890 = $$0286$i$i << $889;
        $$0287$i$i = $890;$$0288$i$i = $885;
        while(1) {
         $891 = ((($$0288$i$i)) + 4|0);
         $892 = load4($891);
         $893 = $892 & -8;
         $894 = ($893|0)==($$0286$i$i|0);
         if ($894) {
          label = 278;
          break;
         }
         $895 = $$0287$i$i >>> 31;
         $896 = (((($$0288$i$i)) + 16|0) + ($895<<2)|0);
         $897 = $$0287$i$i << 1;
         $898 = load4($896);
         $899 = ($898|0)==(0|0);
         if ($899) {
          label = 275;
          break;
         } else {
          $$0287$i$i = $897;$$0288$i$i = $898;
         }
        }
        if ((label|0) == 275) {
         $900 = load4((12104));
         $901 = ($896>>>0)<($900>>>0);
         if ($901) {
          _abort();
          // unreachable;
         } else {
          store4($896,$718);
          $902 = ((($718)) + 24|0);
          store4($902,$$0288$i$i);
          $903 = ((($718)) + 12|0);
          store4($903,$718);
          $904 = ((($718)) + 8|0);
          store4($904,$718);
          break;
         }
        }
        else if ((label|0) == 278) {
         $905 = ((($$0288$i$i)) + 8|0);
         $906 = load4($905);
         $907 = load4((12104));
         $908 = ($906>>>0)>=($907>>>0);
         $not$$i22$i = ($$0288$i$i>>>0)>=($907>>>0);
         $909 = $908 & $not$$i22$i;
         if ($909) {
          $910 = ((($906)) + 12|0);
          store4($910,$718);
          store4($905,$718);
          $911 = ((($718)) + 8|0);
          store4($911,$906);
          $912 = ((($718)) + 12|0);
          store4($912,$$0288$i$i);
          $913 = ((($718)) + 24|0);
          store4($913,0);
          break;
         } else {
          _abort();
          // unreachable;
         }
        }
       }
      } while(0);
      $1044 = ((($706)) + 8|0);
      $$0 = $1044;
      STACKTOP = sp;return ($$0|0);
     } else {
      $$0$i$i$i = (12536);
     }
    }
    while(1) {
     $914 = load4($$0$i$i$i);
     $915 = ($914>>>0)>($627>>>0);
     if (!($915)) {
      $916 = ((($$0$i$i$i)) + 4|0);
      $917 = load4($916);
      $918 = (($914) + ($917)|0);
      $919 = ($918>>>0)>($627>>>0);
      if ($919) {
       break;
      }
     }
     $920 = ((($$0$i$i$i)) + 8|0);
     $921 = load4($920);
     $$0$i$i$i = $921;
    }
    $922 = ((($918)) + -47|0);
    $923 = ((($922)) + 8|0);
    $924 = $923;
    $925 = $924 & 7;
    $926 = ($925|0)==(0);
    $927 = (0 - ($924))|0;
    $928 = $927 & 7;
    $929 = $926 ? 0 : $928;
    $930 = (($922) + ($929)|0);
    $931 = ((($627)) + 16|0);
    $932 = ($930>>>0)<($931>>>0);
    $933 = $932 ? $627 : $930;
    $934 = ((($933)) + 8|0);
    $935 = ((($933)) + 24|0);
    $936 = (($$723947$i) + -40)|0;
    $937 = ((($$748$i)) + 8|0);
    $938 = $937;
    $939 = $938 & 7;
    $940 = ($939|0)==(0);
    $941 = (0 - ($938))|0;
    $942 = $941 & 7;
    $943 = $940 ? 0 : $942;
    $944 = (($$748$i) + ($943)|0);
    $945 = (($936) - ($943))|0;
    store4((12112),$944);
    store4((12100),$945);
    $946 = $945 | 1;
    $947 = ((($944)) + 4|0);
    store4($947,$946);
    $948 = (($944) + ($945)|0);
    $949 = ((($948)) + 4|0);
    store4($949,40);
    $950 = load4((12576));
    store4((12116),$950);
    $951 = ((($933)) + 4|0);
    store4($951,27);
    ; store8($934,load8((12536),4),4); store8($934+8 | 0,load8((12536)+8 | 0,4),4);
    store4((12536),$$748$i);
    store4((12540),$$723947$i);
    store4((12548),0);
    store4((12544),$934);
    $$0$i$i = $935;
    while(1) {
     $952 = ((($$0$i$i)) + 4|0);
     store4($952,7);
     $953 = ((($952)) + 4|0);
     $954 = ($953>>>0)<($918>>>0);
     if ($954) {
      $$0$i$i = $952;
     } else {
      break;
     }
    }
    $955 = ($933|0)==($627|0);
    if (!($955)) {
     $956 = $933;
     $957 = $627;
     $958 = (($956) - ($957))|0;
     $959 = load4($951);
     $960 = $959 & -2;
     store4($951,$960);
     $961 = $958 | 1;
     $962 = ((($627)) + 4|0);
     store4($962,$961);
     store4($933,$958);
     $963 = $958 >>> 3;
     $964 = ($958>>>0)<(256);
     if ($964) {
      $965 = $963 << 1;
      $966 = (12128 + ($965<<2)|0);
      $967 = load4(12088);
      $968 = 1 << $963;
      $969 = $967 & $968;
      $970 = ($969|0)==(0);
      if ($970) {
       $971 = $967 | $968;
       store4(12088,$971);
       $$pre$i$i = ((($966)) + 8|0);
       $$0211$i$i = $966;$$pre$phi$i$iZ2D = $$pre$i$i;
      } else {
       $972 = ((($966)) + 8|0);
       $973 = load4($972);
       $974 = load4((12104));
       $975 = ($973>>>0)<($974>>>0);
       if ($975) {
        _abort();
        // unreachable;
       } else {
        $$0211$i$i = $973;$$pre$phi$i$iZ2D = $972;
       }
      }
      store4($$pre$phi$i$iZ2D,$627);
      $976 = ((($$0211$i$i)) + 12|0);
      store4($976,$627);
      $977 = ((($627)) + 8|0);
      store4($977,$$0211$i$i);
      $978 = ((($627)) + 12|0);
      store4($978,$966);
      break;
     }
     $979 = $958 >>> 8;
     $980 = ($979|0)==(0);
     if ($980) {
      $$0212$i$i = 0;
     } else {
      $981 = ($958>>>0)>(16777215);
      if ($981) {
       $$0212$i$i = 31;
      } else {
       $982 = (($979) + 1048320)|0;
       $983 = $982 >>> 16;
       $984 = $983 & 8;
       $985 = $979 << $984;
       $986 = (($985) + 520192)|0;
       $987 = $986 >>> 16;
       $988 = $987 & 4;
       $989 = $988 | $984;
       $990 = $985 << $988;
       $991 = (($990) + 245760)|0;
       $992 = $991 >>> 16;
       $993 = $992 & 2;
       $994 = $989 | $993;
       $995 = (14 - ($994))|0;
       $996 = $990 << $993;
       $997 = $996 >>> 15;
       $998 = (($995) + ($997))|0;
       $999 = $998 << 1;
       $1000 = (($998) + 7)|0;
       $1001 = $958 >>> $1000;
       $1002 = $1001 & 1;
       $1003 = $1002 | $999;
       $$0212$i$i = $1003;
      }
     }
     $1004 = (12392 + ($$0212$i$i<<2)|0);
     $1005 = ((($627)) + 28|0);
     store4($1005,$$0212$i$i);
     $1006 = ((($627)) + 20|0);
     store4($1006,0);
     store4($931,0);
     $1007 = load4((12092));
     $1008 = 1 << $$0212$i$i;
     $1009 = $1007 & $1008;
     $1010 = ($1009|0)==(0);
     if ($1010) {
      $1011 = $1007 | $1008;
      store4((12092),$1011);
      store4($1004,$627);
      $1012 = ((($627)) + 24|0);
      store4($1012,$1004);
      $1013 = ((($627)) + 12|0);
      store4($1013,$627);
      $1014 = ((($627)) + 8|0);
      store4($1014,$627);
      break;
     }
     $1015 = load4($1004);
     $1016 = ($$0212$i$i|0)==(31);
     $1017 = $$0212$i$i >>> 1;
     $1018 = (25 - ($1017))|0;
     $1019 = $1016 ? 0 : $1018;
     $1020 = $958 << $1019;
     $$0206$i$i = $1020;$$0207$i$i = $1015;
     while(1) {
      $1021 = ((($$0207$i$i)) + 4|0);
      $1022 = load4($1021);
      $1023 = $1022 & -8;
      $1024 = ($1023|0)==($958|0);
      if ($1024) {
       label = 304;
       break;
      }
      $1025 = $$0206$i$i >>> 31;
      $1026 = (((($$0207$i$i)) + 16|0) + ($1025<<2)|0);
      $1027 = $$0206$i$i << 1;
      $1028 = load4($1026);
      $1029 = ($1028|0)==(0|0);
      if ($1029) {
       label = 301;
       break;
      } else {
       $$0206$i$i = $1027;$$0207$i$i = $1028;
      }
     }
     if ((label|0) == 301) {
      $1030 = load4((12104));
      $1031 = ($1026>>>0)<($1030>>>0);
      if ($1031) {
       _abort();
       // unreachable;
      } else {
       store4($1026,$627);
       $1032 = ((($627)) + 24|0);
       store4($1032,$$0207$i$i);
       $1033 = ((($627)) + 12|0);
       store4($1033,$627);
       $1034 = ((($627)) + 8|0);
       store4($1034,$627);
       break;
      }
     }
     else if ((label|0) == 304) {
      $1035 = ((($$0207$i$i)) + 8|0);
      $1036 = load4($1035);
      $1037 = load4((12104));
      $1038 = ($1036>>>0)>=($1037>>>0);
      $not$$i$i = ($$0207$i$i>>>0)>=($1037>>>0);
      $1039 = $1038 & $not$$i$i;
      if ($1039) {
       $1040 = ((($1036)) + 12|0);
       store4($1040,$627);
       store4($1035,$627);
       $1041 = ((($627)) + 8|0);
       store4($1041,$1036);
       $1042 = ((($627)) + 12|0);
       store4($1042,$$0207$i$i);
       $1043 = ((($627)) + 24|0);
       store4($1043,0);
       break;
      } else {
       _abort();
       // unreachable;
      }
     }
    }
   }
  } while(0);
  $1045 = load4((12100));
  $1046 = ($1045>>>0)>($$0197>>>0);
  if ($1046) {
   $1047 = (($1045) - ($$0197))|0;
   store4((12100),$1047);
   $1048 = load4((12112));
   $1049 = (($1048) + ($$0197)|0);
   store4((12112),$1049);
   $1050 = $1047 | 1;
   $1051 = ((($1049)) + 4|0);
   store4($1051,$1050);
   $1052 = $$0197 | 3;
   $1053 = ((($1048)) + 4|0);
   store4($1053,$1052);
   $1054 = ((($1048)) + 8|0);
   $$0 = $1054;
   STACKTOP = sp;return ($$0|0);
  }
 }
 $1055 = (___errno_location()|0);
 store4($1055,12);
 $$0 = 0;
 STACKTOP = sp;return ($$0|0);
}
function _free($0) {
 $0 = $0|0;
 var $$0211$i = 0, $$0211$in$i = 0, $$0381 = 0, $$0382 = 0, $$0394 = 0, $$0401 = 0, $$1 = 0, $$1380 = 0, $$1385 = 0, $$1388 = 0, $$1396 = 0, $$1400 = 0, $$2 = 0, $$3 = 0, $$3398 = 0, $$pre = 0, $$pre$phi439Z2D = 0, $$pre$phi441Z2D = 0, $$pre$phiZ2D = 0, $$pre438 = 0;
 var $$pre440 = 0, $1 = 0, $10 = 0, $100 = 0, $101 = 0, $102 = 0, $103 = 0, $104 = 0, $105 = 0, $106 = 0, $107 = 0, $108 = 0, $109 = 0, $11 = 0, $110 = 0, $111 = 0, $112 = 0, $113 = 0, $114 = 0, $115 = 0;
 var $116 = 0, $117 = 0, $118 = 0, $119 = 0, $12 = 0, $120 = 0, $121 = 0, $122 = 0, $123 = 0, $124 = 0, $125 = 0, $126 = 0, $127 = 0, $128 = 0, $129 = 0, $13 = 0, $130 = 0, $131 = 0, $132 = 0, $133 = 0;
 var $134 = 0, $135 = 0, $136 = 0, $137 = 0, $138 = 0, $139 = 0, $14 = 0, $140 = 0, $141 = 0, $142 = 0, $143 = 0, $144 = 0, $145 = 0, $146 = 0, $147 = 0, $148 = 0, $149 = 0, $15 = 0, $150 = 0, $151 = 0;
 var $152 = 0, $153 = 0, $154 = 0, $155 = 0, $156 = 0, $157 = 0, $158 = 0, $159 = 0, $16 = 0, $160 = 0, $161 = 0, $162 = 0, $163 = 0, $164 = 0, $165 = 0, $166 = 0, $167 = 0, $168 = 0, $169 = 0, $17 = 0;
 var $170 = 0, $171 = 0, $172 = 0, $173 = 0, $174 = 0, $175 = 0, $176 = 0, $177 = 0, $178 = 0, $179 = 0, $18 = 0, $180 = 0, $181 = 0, $182 = 0, $183 = 0, $184 = 0, $185 = 0, $186 = 0, $187 = 0, $188 = 0;
 var $189 = 0, $19 = 0, $190 = 0, $191 = 0, $192 = 0, $193 = 0, $194 = 0, $195 = 0, $196 = 0, $197 = 0, $198 = 0, $199 = 0, $2 = 0, $20 = 0, $200 = 0, $201 = 0, $202 = 0, $203 = 0, $204 = 0, $205 = 0;
 var $206 = 0, $207 = 0, $208 = 0, $209 = 0, $21 = 0, $210 = 0, $211 = 0, $212 = 0, $213 = 0, $214 = 0, $215 = 0, $216 = 0, $217 = 0, $218 = 0, $219 = 0, $22 = 0, $220 = 0, $221 = 0, $222 = 0, $223 = 0;
 var $224 = 0, $225 = 0, $226 = 0, $227 = 0, $228 = 0, $229 = 0, $23 = 0, $230 = 0, $231 = 0, $232 = 0, $233 = 0, $234 = 0, $235 = 0, $236 = 0, $237 = 0, $238 = 0, $239 = 0, $24 = 0, $240 = 0, $241 = 0;
 var $242 = 0, $243 = 0, $244 = 0, $245 = 0, $246 = 0, $247 = 0, $248 = 0, $249 = 0, $25 = 0, $250 = 0, $251 = 0, $252 = 0, $253 = 0, $254 = 0, $255 = 0, $256 = 0, $257 = 0, $258 = 0, $259 = 0, $26 = 0;
 var $260 = 0, $261 = 0, $262 = 0, $263 = 0, $264 = 0, $265 = 0, $266 = 0, $267 = 0, $268 = 0, $269 = 0, $27 = 0, $270 = 0, $271 = 0, $272 = 0, $273 = 0, $274 = 0, $275 = 0, $276 = 0, $277 = 0, $278 = 0;
 var $279 = 0, $28 = 0, $280 = 0, $281 = 0, $282 = 0, $283 = 0, $284 = 0, $285 = 0, $286 = 0, $287 = 0, $288 = 0, $289 = 0, $29 = 0, $290 = 0, $291 = 0, $292 = 0, $293 = 0, $294 = 0, $295 = 0, $296 = 0;
 var $297 = 0, $298 = 0, $299 = 0, $3 = 0, $30 = 0, $300 = 0, $301 = 0, $302 = 0, $303 = 0, $304 = 0, $305 = 0, $306 = 0, $307 = 0, $308 = 0, $309 = 0, $31 = 0, $310 = 0, $311 = 0, $312 = 0, $313 = 0;
 var $314 = 0, $315 = 0, $316 = 0, $317 = 0, $318 = 0, $319 = 0, $32 = 0, $320 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0;
 var $44 = 0, $45 = 0, $46 = 0, $47 = 0, $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $54 = 0, $55 = 0, $56 = 0, $57 = 0, $58 = 0, $59 = 0, $6 = 0, $60 = 0, $61 = 0;
 var $62 = 0, $63 = 0, $64 = 0, $65 = 0, $66 = 0, $67 = 0, $68 = 0, $69 = 0, $7 = 0, $70 = 0, $71 = 0, $72 = 0, $73 = 0, $74 = 0, $75 = 0, $76 = 0, $77 = 0, $78 = 0, $79 = 0, $8 = 0;
 var $80 = 0, $81 = 0, $82 = 0, $83 = 0, $84 = 0, $85 = 0, $86 = 0, $87 = 0, $88 = 0, $89 = 0, $9 = 0, $90 = 0, $91 = 0, $92 = 0, $93 = 0, $94 = 0, $95 = 0, $96 = 0, $97 = 0, $98 = 0;
 var $99 = 0, $cond418 = 0, $cond419 = 0, $not$ = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = ($0|0)==(0|0);
 if ($1) {
  return;
 }
 $2 = ((($0)) + -8|0);
 $3 = load4((12104));
 $4 = ($2>>>0)<($3>>>0);
 if ($4) {
  _abort();
  // unreachable;
 }
 $5 = ((($0)) + -4|0);
 $6 = load4($5);
 $7 = $6 & 3;
 $8 = ($7|0)==(1);
 if ($8) {
  _abort();
  // unreachable;
 }
 $9 = $6 & -8;
 $10 = (($2) + ($9)|0);
 $11 = $6 & 1;
 $12 = ($11|0)==(0);
 do {
  if ($12) {
   $13 = load4($2);
   $14 = ($7|0)==(0);
   if ($14) {
    return;
   }
   $15 = (0 - ($13))|0;
   $16 = (($2) + ($15)|0);
   $17 = (($13) + ($9))|0;
   $18 = ($16>>>0)<($3>>>0);
   if ($18) {
    _abort();
    // unreachable;
   }
   $19 = load4((12108));
   $20 = ($16|0)==($19|0);
   if ($20) {
    $105 = ((($10)) + 4|0);
    $106 = load4($105);
    $107 = $106 & 3;
    $108 = ($107|0)==(3);
    if (!($108)) {
     $$1 = $16;$$1380 = $17;
     break;
    }
    store4((12096),$17);
    $109 = $106 & -2;
    store4($105,$109);
    $110 = $17 | 1;
    $111 = ((($16)) + 4|0);
    store4($111,$110);
    $112 = (($16) + ($17)|0);
    store4($112,$17);
    return;
   }
   $21 = $13 >>> 3;
   $22 = ($13>>>0)<(256);
   if ($22) {
    $23 = ((($16)) + 8|0);
    $24 = load4($23);
    $25 = ((($16)) + 12|0);
    $26 = load4($25);
    $27 = $21 << 1;
    $28 = (12128 + ($27<<2)|0);
    $29 = ($24|0)==($28|0);
    if (!($29)) {
     $30 = ($24>>>0)<($3>>>0);
     if ($30) {
      _abort();
      // unreachable;
     }
     $31 = ((($24)) + 12|0);
     $32 = load4($31);
     $33 = ($32|0)==($16|0);
     if (!($33)) {
      _abort();
      // unreachable;
     }
    }
    $34 = ($26|0)==($24|0);
    if ($34) {
     $35 = 1 << $21;
     $36 = $35 ^ -1;
     $37 = load4(12088);
     $38 = $37 & $36;
     store4(12088,$38);
     $$1 = $16;$$1380 = $17;
     break;
    }
    $39 = ($26|0)==($28|0);
    if ($39) {
     $$pre440 = ((($26)) + 8|0);
     $$pre$phi441Z2D = $$pre440;
    } else {
     $40 = ($26>>>0)<($3>>>0);
     if ($40) {
      _abort();
      // unreachable;
     }
     $41 = ((($26)) + 8|0);
     $42 = load4($41);
     $43 = ($42|0)==($16|0);
     if ($43) {
      $$pre$phi441Z2D = $41;
     } else {
      _abort();
      // unreachable;
     }
    }
    $44 = ((($24)) + 12|0);
    store4($44,$26);
    store4($$pre$phi441Z2D,$24);
    $$1 = $16;$$1380 = $17;
    break;
   }
   $45 = ((($16)) + 24|0);
   $46 = load4($45);
   $47 = ((($16)) + 12|0);
   $48 = load4($47);
   $49 = ($48|0)==($16|0);
   do {
    if ($49) {
     $59 = ((($16)) + 16|0);
     $60 = ((($59)) + 4|0);
     $61 = load4($60);
     $62 = ($61|0)==(0|0);
     if ($62) {
      $63 = load4($59);
      $64 = ($63|0)==(0|0);
      if ($64) {
       $$3 = 0;
       break;
      } else {
       $$1385 = $63;$$1388 = $59;
      }
     } else {
      $$1385 = $61;$$1388 = $60;
     }
     while(1) {
      $65 = ((($$1385)) + 20|0);
      $66 = load4($65);
      $67 = ($66|0)==(0|0);
      if (!($67)) {
       $$1385 = $66;$$1388 = $65;
       continue;
      }
      $68 = ((($$1385)) + 16|0);
      $69 = load4($68);
      $70 = ($69|0)==(0|0);
      if ($70) {
       break;
      } else {
       $$1385 = $69;$$1388 = $68;
      }
     }
     $71 = ($$1388>>>0)<($3>>>0);
     if ($71) {
      _abort();
      // unreachable;
     } else {
      store4($$1388,0);
      $$3 = $$1385;
      break;
     }
    } else {
     $50 = ((($16)) + 8|0);
     $51 = load4($50);
     $52 = ($51>>>0)<($3>>>0);
     if ($52) {
      _abort();
      // unreachable;
     }
     $53 = ((($51)) + 12|0);
     $54 = load4($53);
     $55 = ($54|0)==($16|0);
     if (!($55)) {
      _abort();
      // unreachable;
     }
     $56 = ((($48)) + 8|0);
     $57 = load4($56);
     $58 = ($57|0)==($16|0);
     if ($58) {
      store4($53,$48);
      store4($56,$51);
      $$3 = $48;
      break;
     } else {
      _abort();
      // unreachable;
     }
    }
   } while(0);
   $72 = ($46|0)==(0|0);
   if ($72) {
    $$1 = $16;$$1380 = $17;
   } else {
    $73 = ((($16)) + 28|0);
    $74 = load4($73);
    $75 = (12392 + ($74<<2)|0);
    $76 = load4($75);
    $77 = ($16|0)==($76|0);
    if ($77) {
     store4($75,$$3);
     $cond418 = ($$3|0)==(0|0);
     if ($cond418) {
      $78 = 1 << $74;
      $79 = $78 ^ -1;
      $80 = load4((12092));
      $81 = $80 & $79;
      store4((12092),$81);
      $$1 = $16;$$1380 = $17;
      break;
     }
    } else {
     $82 = load4((12104));
     $83 = ($46>>>0)<($82>>>0);
     if ($83) {
      _abort();
      // unreachable;
     }
     $84 = ((($46)) + 16|0);
     $85 = load4($84);
     $86 = ($85|0)==($16|0);
     if ($86) {
      store4($84,$$3);
     } else {
      $87 = ((($46)) + 20|0);
      store4($87,$$3);
     }
     $88 = ($$3|0)==(0|0);
     if ($88) {
      $$1 = $16;$$1380 = $17;
      break;
     }
    }
    $89 = load4((12104));
    $90 = ($$3>>>0)<($89>>>0);
    if ($90) {
     _abort();
     // unreachable;
    }
    $91 = ((($$3)) + 24|0);
    store4($91,$46);
    $92 = ((($16)) + 16|0);
    $93 = load4($92);
    $94 = ($93|0)==(0|0);
    do {
     if (!($94)) {
      $95 = ($93>>>0)<($89>>>0);
      if ($95) {
       _abort();
       // unreachable;
      } else {
       $96 = ((($$3)) + 16|0);
       store4($96,$93);
       $97 = ((($93)) + 24|0);
       store4($97,$$3);
       break;
      }
     }
    } while(0);
    $98 = ((($92)) + 4|0);
    $99 = load4($98);
    $100 = ($99|0)==(0|0);
    if ($100) {
     $$1 = $16;$$1380 = $17;
    } else {
     $101 = load4((12104));
     $102 = ($99>>>0)<($101>>>0);
     if ($102) {
      _abort();
      // unreachable;
     } else {
      $103 = ((($$3)) + 20|0);
      store4($103,$99);
      $104 = ((($99)) + 24|0);
      store4($104,$$3);
      $$1 = $16;$$1380 = $17;
      break;
     }
    }
   }
  } else {
   $$1 = $2;$$1380 = $9;
  }
 } while(0);
 $113 = ($$1>>>0)<($10>>>0);
 if (!($113)) {
  _abort();
  // unreachable;
 }
 $114 = ((($10)) + 4|0);
 $115 = load4($114);
 $116 = $115 & 1;
 $117 = ($116|0)==(0);
 if ($117) {
  _abort();
  // unreachable;
 }
 $118 = $115 & 2;
 $119 = ($118|0)==(0);
 if ($119) {
  $120 = load4((12112));
  $121 = ($10|0)==($120|0);
  if ($121) {
   $122 = load4((12100));
   $123 = (($122) + ($$1380))|0;
   store4((12100),$123);
   store4((12112),$$1);
   $124 = $123 | 1;
   $125 = ((($$1)) + 4|0);
   store4($125,$124);
   $126 = load4((12108));
   $127 = ($$1|0)==($126|0);
   if (!($127)) {
    return;
   }
   store4((12108),0);
   store4((12096),0);
   return;
  }
  $128 = load4((12108));
  $129 = ($10|0)==($128|0);
  if ($129) {
   $130 = load4((12096));
   $131 = (($130) + ($$1380))|0;
   store4((12096),$131);
   store4((12108),$$1);
   $132 = $131 | 1;
   $133 = ((($$1)) + 4|0);
   store4($133,$132);
   $134 = (($$1) + ($131)|0);
   store4($134,$131);
   return;
  }
  $135 = $115 & -8;
  $136 = (($135) + ($$1380))|0;
  $137 = $115 >>> 3;
  $138 = ($115>>>0)<(256);
  do {
   if ($138) {
    $139 = ((($10)) + 8|0);
    $140 = load4($139);
    $141 = ((($10)) + 12|0);
    $142 = load4($141);
    $143 = $137 << 1;
    $144 = (12128 + ($143<<2)|0);
    $145 = ($140|0)==($144|0);
    if (!($145)) {
     $146 = load4((12104));
     $147 = ($140>>>0)<($146>>>0);
     if ($147) {
      _abort();
      // unreachable;
     }
     $148 = ((($140)) + 12|0);
     $149 = load4($148);
     $150 = ($149|0)==($10|0);
     if (!($150)) {
      _abort();
      // unreachable;
     }
    }
    $151 = ($142|0)==($140|0);
    if ($151) {
     $152 = 1 << $137;
     $153 = $152 ^ -1;
     $154 = load4(12088);
     $155 = $154 & $153;
     store4(12088,$155);
     break;
    }
    $156 = ($142|0)==($144|0);
    if ($156) {
     $$pre438 = ((($142)) + 8|0);
     $$pre$phi439Z2D = $$pre438;
    } else {
     $157 = load4((12104));
     $158 = ($142>>>0)<($157>>>0);
     if ($158) {
      _abort();
      // unreachable;
     }
     $159 = ((($142)) + 8|0);
     $160 = load4($159);
     $161 = ($160|0)==($10|0);
     if ($161) {
      $$pre$phi439Z2D = $159;
     } else {
      _abort();
      // unreachable;
     }
    }
    $162 = ((($140)) + 12|0);
    store4($162,$142);
    store4($$pre$phi439Z2D,$140);
   } else {
    $163 = ((($10)) + 24|0);
    $164 = load4($163);
    $165 = ((($10)) + 12|0);
    $166 = load4($165);
    $167 = ($166|0)==($10|0);
    do {
     if ($167) {
      $178 = ((($10)) + 16|0);
      $179 = ((($178)) + 4|0);
      $180 = load4($179);
      $181 = ($180|0)==(0|0);
      if ($181) {
       $182 = load4($178);
       $183 = ($182|0)==(0|0);
       if ($183) {
        $$3398 = 0;
        break;
       } else {
        $$1396 = $182;$$1400 = $178;
       }
      } else {
       $$1396 = $180;$$1400 = $179;
      }
      while(1) {
       $184 = ((($$1396)) + 20|0);
       $185 = load4($184);
       $186 = ($185|0)==(0|0);
       if (!($186)) {
        $$1396 = $185;$$1400 = $184;
        continue;
       }
       $187 = ((($$1396)) + 16|0);
       $188 = load4($187);
       $189 = ($188|0)==(0|0);
       if ($189) {
        break;
       } else {
        $$1396 = $188;$$1400 = $187;
       }
      }
      $190 = load4((12104));
      $191 = ($$1400>>>0)<($190>>>0);
      if ($191) {
       _abort();
       // unreachable;
      } else {
       store4($$1400,0);
       $$3398 = $$1396;
       break;
      }
     } else {
      $168 = ((($10)) + 8|0);
      $169 = load4($168);
      $170 = load4((12104));
      $171 = ($169>>>0)<($170>>>0);
      if ($171) {
       _abort();
       // unreachable;
      }
      $172 = ((($169)) + 12|0);
      $173 = load4($172);
      $174 = ($173|0)==($10|0);
      if (!($174)) {
       _abort();
       // unreachable;
      }
      $175 = ((($166)) + 8|0);
      $176 = load4($175);
      $177 = ($176|0)==($10|0);
      if ($177) {
       store4($172,$166);
       store4($175,$169);
       $$3398 = $166;
       break;
      } else {
       _abort();
       // unreachable;
      }
     }
    } while(0);
    $192 = ($164|0)==(0|0);
    if (!($192)) {
     $193 = ((($10)) + 28|0);
     $194 = load4($193);
     $195 = (12392 + ($194<<2)|0);
     $196 = load4($195);
     $197 = ($10|0)==($196|0);
     if ($197) {
      store4($195,$$3398);
      $cond419 = ($$3398|0)==(0|0);
      if ($cond419) {
       $198 = 1 << $194;
       $199 = $198 ^ -1;
       $200 = load4((12092));
       $201 = $200 & $199;
       store4((12092),$201);
       break;
      }
     } else {
      $202 = load4((12104));
      $203 = ($164>>>0)<($202>>>0);
      if ($203) {
       _abort();
       // unreachable;
      }
      $204 = ((($164)) + 16|0);
      $205 = load4($204);
      $206 = ($205|0)==($10|0);
      if ($206) {
       store4($204,$$3398);
      } else {
       $207 = ((($164)) + 20|0);
       store4($207,$$3398);
      }
      $208 = ($$3398|0)==(0|0);
      if ($208) {
       break;
      }
     }
     $209 = load4((12104));
     $210 = ($$3398>>>0)<($209>>>0);
     if ($210) {
      _abort();
      // unreachable;
     }
     $211 = ((($$3398)) + 24|0);
     store4($211,$164);
     $212 = ((($10)) + 16|0);
     $213 = load4($212);
     $214 = ($213|0)==(0|0);
     do {
      if (!($214)) {
       $215 = ($213>>>0)<($209>>>0);
       if ($215) {
        _abort();
        // unreachable;
       } else {
        $216 = ((($$3398)) + 16|0);
        store4($216,$213);
        $217 = ((($213)) + 24|0);
        store4($217,$$3398);
        break;
       }
      }
     } while(0);
     $218 = ((($212)) + 4|0);
     $219 = load4($218);
     $220 = ($219|0)==(0|0);
     if (!($220)) {
      $221 = load4((12104));
      $222 = ($219>>>0)<($221>>>0);
      if ($222) {
       _abort();
       // unreachable;
      } else {
       $223 = ((($$3398)) + 20|0);
       store4($223,$219);
       $224 = ((($219)) + 24|0);
       store4($224,$$3398);
       break;
      }
     }
    }
   }
  } while(0);
  $225 = $136 | 1;
  $226 = ((($$1)) + 4|0);
  store4($226,$225);
  $227 = (($$1) + ($136)|0);
  store4($227,$136);
  $228 = load4((12108));
  $229 = ($$1|0)==($228|0);
  if ($229) {
   store4((12096),$136);
   return;
  } else {
   $$2 = $136;
  }
 } else {
  $230 = $115 & -2;
  store4($114,$230);
  $231 = $$1380 | 1;
  $232 = ((($$1)) + 4|0);
  store4($232,$231);
  $233 = (($$1) + ($$1380)|0);
  store4($233,$$1380);
  $$2 = $$1380;
 }
 $234 = $$2 >>> 3;
 $235 = ($$2>>>0)<(256);
 if ($235) {
  $236 = $234 << 1;
  $237 = (12128 + ($236<<2)|0);
  $238 = load4(12088);
  $239 = 1 << $234;
  $240 = $238 & $239;
  $241 = ($240|0)==(0);
  if ($241) {
   $242 = $238 | $239;
   store4(12088,$242);
   $$pre = ((($237)) + 8|0);
   $$0401 = $237;$$pre$phiZ2D = $$pre;
  } else {
   $243 = ((($237)) + 8|0);
   $244 = load4($243);
   $245 = load4((12104));
   $246 = ($244>>>0)<($245>>>0);
   if ($246) {
    _abort();
    // unreachable;
   } else {
    $$0401 = $244;$$pre$phiZ2D = $243;
   }
  }
  store4($$pre$phiZ2D,$$1);
  $247 = ((($$0401)) + 12|0);
  store4($247,$$1);
  $248 = ((($$1)) + 8|0);
  store4($248,$$0401);
  $249 = ((($$1)) + 12|0);
  store4($249,$237);
  return;
 }
 $250 = $$2 >>> 8;
 $251 = ($250|0)==(0);
 if ($251) {
  $$0394 = 0;
 } else {
  $252 = ($$2>>>0)>(16777215);
  if ($252) {
   $$0394 = 31;
  } else {
   $253 = (($250) + 1048320)|0;
   $254 = $253 >>> 16;
   $255 = $254 & 8;
   $256 = $250 << $255;
   $257 = (($256) + 520192)|0;
   $258 = $257 >>> 16;
   $259 = $258 & 4;
   $260 = $259 | $255;
   $261 = $256 << $259;
   $262 = (($261) + 245760)|0;
   $263 = $262 >>> 16;
   $264 = $263 & 2;
   $265 = $260 | $264;
   $266 = (14 - ($265))|0;
   $267 = $261 << $264;
   $268 = $267 >>> 15;
   $269 = (($266) + ($268))|0;
   $270 = $269 << 1;
   $271 = (($269) + 7)|0;
   $272 = $$2 >>> $271;
   $273 = $272 & 1;
   $274 = $273 | $270;
   $$0394 = $274;
  }
 }
 $275 = (12392 + ($$0394<<2)|0);
 $276 = ((($$1)) + 28|0);
 store4($276,$$0394);
 $277 = ((($$1)) + 16|0);
 $278 = ((($$1)) + 20|0);
 store4($278,0);
 store4($277,0);
 $279 = load4((12092));
 $280 = 1 << $$0394;
 $281 = $279 & $280;
 $282 = ($281|0)==(0);
 do {
  if ($282) {
   $283 = $279 | $280;
   store4((12092),$283);
   store4($275,$$1);
   $284 = ((($$1)) + 24|0);
   store4($284,$275);
   $285 = ((($$1)) + 12|0);
   store4($285,$$1);
   $286 = ((($$1)) + 8|0);
   store4($286,$$1);
  } else {
   $287 = load4($275);
   $288 = ($$0394|0)==(31);
   $289 = $$0394 >>> 1;
   $290 = (25 - ($289))|0;
   $291 = $288 ? 0 : $290;
   $292 = $$2 << $291;
   $$0381 = $292;$$0382 = $287;
   while(1) {
    $293 = ((($$0382)) + 4|0);
    $294 = load4($293);
    $295 = $294 & -8;
    $296 = ($295|0)==($$2|0);
    if ($296) {
     label = 130;
     break;
    }
    $297 = $$0381 >>> 31;
    $298 = (((($$0382)) + 16|0) + ($297<<2)|0);
    $299 = $$0381 << 1;
    $300 = load4($298);
    $301 = ($300|0)==(0|0);
    if ($301) {
     label = 127;
     break;
    } else {
     $$0381 = $299;$$0382 = $300;
    }
   }
   if ((label|0) == 127) {
    $302 = load4((12104));
    $303 = ($298>>>0)<($302>>>0);
    if ($303) {
     _abort();
     // unreachable;
    } else {
     store4($298,$$1);
     $304 = ((($$1)) + 24|0);
     store4($304,$$0382);
     $305 = ((($$1)) + 12|0);
     store4($305,$$1);
     $306 = ((($$1)) + 8|0);
     store4($306,$$1);
     break;
    }
   }
   else if ((label|0) == 130) {
    $307 = ((($$0382)) + 8|0);
    $308 = load4($307);
    $309 = load4((12104));
    $310 = ($308>>>0)>=($309>>>0);
    $not$ = ($$0382>>>0)>=($309>>>0);
    $311 = $310 & $not$;
    if ($311) {
     $312 = ((($308)) + 12|0);
     store4($312,$$1);
     store4($307,$$1);
     $313 = ((($$1)) + 8|0);
     store4($313,$308);
     $314 = ((($$1)) + 12|0);
     store4($314,$$0382);
     $315 = ((($$1)) + 24|0);
     store4($315,0);
     break;
    } else {
     _abort();
     // unreachable;
    }
   }
  }
 } while(0);
 $316 = load4((12120));
 $317 = (($316) + -1)|0;
 store4((12120),$317);
 $318 = ($317|0)==(0);
 if ($318) {
  $$0211$in$i = (12544);
 } else {
  return;
 }
 while(1) {
  $$0211$i = load4($$0211$in$i);
  $319 = ($$0211$i|0)==(0|0);
  $320 = ((($$0211$i)) + 8|0);
  if ($319) {
   break;
  } else {
   $$0211$in$i = $320;
  }
 }
 store4((12120),-1);
 return;
}
function __Znwj($0) {
 $0 = $0|0;
 var $$ = 0, $1 = 0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $1 = ($0|0)==(0);
 $$ = $1 ? 1 : $0;
 while(1) {
  $2 = (_malloc($$)|0);
  $3 = ($2|0)==(0|0);
  if (!($3)) {
   label = 6;
   break;
  }
  $4 = (__ZSt15get_new_handlerv()|0);
  $5 = ($4|0)==(0|0);
  if ($5) {
   label = 5;
   break;
  }
  FUNCTION_TABLE_v[$4 & 0]();
 }
 if ((label|0) == 5) {
  $6 = (___cxa_allocate_exception(4)|0);
  __ZNSt9bad_allocC2Ev($6);
  ___cxa_throw(($6|0),(1352|0),(16|0));
  // unreachable;
 }
 else if ((label|0) == 6) {
  return ($2|0);
 }
 return (0)|0;
}
function __ZdlPv($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 _free($0);
 return;
}
function __ZN10__cxxabiv116__shim_type_infoD2Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function __ZN10__cxxabiv117__class_type_infoD0Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZdlPv($0);
 return;
}
function __ZNK10__cxxabiv116__shim_type_info5noop1Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function __ZNK10__cxxabiv116__shim_type_info5noop2Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function __ZNK10__cxxabiv117__class_type_info9can_catchEPKNS_16__shim_type_infoERPv($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$0 = 0, $$2 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 64|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(64|0);
 $3 = sp;
 $4 = ($0|0)==($1|0);
 if ($4) {
  $$2 = 1;
 } else {
  $5 = ($1|0)==(0|0);
  if ($5) {
   $$2 = 0;
  } else {
   $6 = (___dynamic_cast($1,1312,1296,0)|0);
   $7 = ($6|0)==(0|0);
   if ($7) {
    $$2 = 0;
   } else {
    $8 = ((($3)) + 4|0);
    ; store8($8,i64_const(0,0),4); store8($8+8|0,i64_const(0,0),4); store8($8+16|0,i64_const(0,0),4); store8($8+24|0,i64_const(0,0),4); store8($8+32|0,i64_const(0,0),4); store8($8+40|0,i64_const(0,0),4); store4($8+48|0,0,4);
    store4($3,$6);
    $9 = ((($3)) + 8|0);
    store4($9,$0);
    $10 = ((($3)) + 12|0);
    store4($10,-1);
    $11 = ((($3)) + 48|0);
    store4($11,1);
    $12 = load4($6);
    $13 = ((($12)) + 28|0);
    $14 = load4($13);
    $15 = load4($2);
    FUNCTION_TABLE_viiii[$14 & 31]($6,$3,$15,1);
    $16 = ((($3)) + 24|0);
    $17 = load4($16);
    $18 = ($17|0)==(1);
    if ($18) {
     $19 = ((($3)) + 16|0);
     $20 = load4($19);
     store4($2,$20);
     $$0 = 1;
    } else {
     $$0 = 0;
    }
    $$2 = $$0;
   }
  }
 }
 STACKTOP = sp;return ($$2|0);
}
function __ZNK10__cxxabiv117__class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = $5|0;
 var $6 = 0, $7 = 0, $8 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $6 = ((($1)) + 8|0);
 $7 = load4($6);
 $8 = ($0|0)==($7|0);
 if ($8) {
  __ZNK10__cxxabiv117__class_type_info29process_static_type_above_dstEPNS_19__dynamic_cast_infoEPKvS4_i(0,$1,$2,$3,$4);
 }
 return;
}
function __ZNK10__cxxabiv117__class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $5 = ((($1)) + 8|0);
 $6 = load4($5);
 $7 = ($0|0)==($6|0);
 do {
  if ($7) {
   $8 = ((($1)) + 4|0);
   $9 = load4($8);
   $10 = ($9|0)==($2|0);
   if ($10) {
    $11 = ((($1)) + 28|0);
    $12 = load4($11);
    $13 = ($12|0)==(1);
    if (!($13)) {
     store4($11,$3);
    }
   }
  } else {
   $14 = load4($1);
   $15 = ($0|0)==($14|0);
   if ($15) {
    $16 = ((($1)) + 16|0);
    $17 = load4($16);
    $18 = ($17|0)==($2|0);
    if (!($18)) {
     $19 = ((($1)) + 20|0);
     $20 = load4($19);
     $21 = ($20|0)==($2|0);
     if (!($21)) {
      $24 = ((($1)) + 32|0);
      store4($24,$3);
      store4($19,$2);
      $25 = ((($1)) + 40|0);
      $26 = load4($25);
      $27 = (($26) + 1)|0;
      store4($25,$27);
      $28 = ((($1)) + 36|0);
      $29 = load4($28);
      $30 = ($29|0)==(1);
      if ($30) {
       $31 = ((($1)) + 24|0);
       $32 = load4($31);
       $33 = ($32|0)==(2);
       if ($33) {
        $34 = ((($1)) + 54|0);
        store1($34,1);
       }
      }
      $35 = ((($1)) + 44|0);
      store4($35,4);
      break;
     }
    }
    $22 = ($3|0)==(1);
    if ($22) {
     $23 = ((($1)) + 32|0);
     store4($23,1);
    }
   }
  }
 } while(0);
 return;
}
function __ZNK10__cxxabiv117__class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $4 = 0, $5 = 0, $6 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $4 = ((($1)) + 8|0);
 $5 = load4($4);
 $6 = ($0|0)==($5|0);
 if ($6) {
  __ZNK10__cxxabiv117__class_type_info24process_found_base_classEPNS_19__dynamic_cast_infoEPvi(0,$1,$2,$3);
 }
 return;
}
function __ZNK10__cxxabiv117__class_type_info24process_found_base_classEPNS_19__dynamic_cast_infoEPvi($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $4 = ((($1)) + 16|0);
 $5 = load4($4);
 $6 = ($5|0)==(0|0);
 do {
  if ($6) {
   store4($4,$2);
   $7 = ((($1)) + 24|0);
   store4($7,$3);
   $8 = ((($1)) + 36|0);
   store4($8,1);
  } else {
   $9 = ($5|0)==($2|0);
   if (!($9)) {
    $13 = ((($1)) + 36|0);
    $14 = load4($13);
    $15 = (($14) + 1)|0;
    store4($13,$15);
    $16 = ((($1)) + 24|0);
    store4($16,2);
    $17 = ((($1)) + 54|0);
    store1($17,1);
    break;
   }
   $10 = ((($1)) + 24|0);
   $11 = load4($10);
   $12 = ($11|0)==(2);
   if ($12) {
    store4($10,$3);
   }
  }
 } while(0);
 return;
}
function __ZNK10__cxxabiv117__class_type_info29process_static_type_above_dstEPNS_19__dynamic_cast_infoEPKvS4_i($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0;
 var $30 = 0, $31 = 0, $32 = 0, $33 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $or$cond = 0, $or$cond22 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $5 = ((($1)) + 53|0);
 store1($5,1);
 $6 = ((($1)) + 4|0);
 $7 = load4($6);
 $8 = ($7|0)==($3|0);
 do {
  if ($8) {
   $9 = ((($1)) + 52|0);
   store1($9,1);
   $10 = ((($1)) + 16|0);
   $11 = load4($10);
   $12 = ($11|0)==(0|0);
   if ($12) {
    store4($10,$2);
    $13 = ((($1)) + 24|0);
    store4($13,$4);
    $14 = ((($1)) + 36|0);
    store4($14,1);
    $15 = ((($1)) + 48|0);
    $16 = load4($15);
    $17 = ($16|0)==(1);
    $18 = ($4|0)==(1);
    $or$cond = $17 & $18;
    if (!($or$cond)) {
     break;
    }
    $19 = ((($1)) + 54|0);
    store1($19,1);
    break;
   }
   $20 = ($11|0)==($2|0);
   if (!($20)) {
    $30 = ((($1)) + 36|0);
    $31 = load4($30);
    $32 = (($31) + 1)|0;
    store4($30,$32);
    $33 = ((($1)) + 54|0);
    store1($33,1);
    break;
   }
   $21 = ((($1)) + 24|0);
   $22 = load4($21);
   $23 = ($22|0)==(2);
   if ($23) {
    store4($21,$4);
    $28 = $4;
   } else {
    $28 = $22;
   }
   $24 = ((($1)) + 48|0);
   $25 = load4($24);
   $26 = ($25|0)==(1);
   $27 = ($28|0)==(1);
   $or$cond22 = $26 & $27;
   if ($or$cond22) {
    $29 = ((($1)) + 54|0);
    store1($29,1);
   }
  }
 } while(0);
 return;
}
function ___dynamic_cast($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $$ = 0, $$0 = 0, $$33 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0;
 var $27 = 0, $28 = 0, $29 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0;
 var $46 = 0, $47 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $or$cond = 0, $or$cond28 = 0, $or$cond30 = 0, $or$cond32 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 64|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(64|0);
 $4 = sp;
 $5 = load4($0);
 $6 = ((($5)) + -8|0);
 $7 = load4($6);
 $8 = (($0) + ($7)|0);
 $9 = ((($5)) + -4|0);
 $10 = load4($9);
 store4($4,$2);
 $11 = ((($4)) + 4|0);
 store4($11,$0);
 $12 = ((($4)) + 8|0);
 store4($12,$1);
 $13 = ((($4)) + 12|0);
 store4($13,$3);
 $14 = ((($4)) + 16|0);
 $15 = ((($4)) + 20|0);
 $16 = ((($4)) + 24|0);
 $17 = ((($4)) + 28|0);
 $18 = ((($4)) + 32|0);
 $19 = ((($4)) + 40|0);
 $20 = ($10|0)==($2|0);
 ; store8($14,i64_const(0,0),4); store8($14+8|0,i64_const(0,0),4); store8($14+16|0,i64_const(0,0),4); store8($14+24|0,i64_const(0,0),4); store4($14+32|0,0,4); store2($14+36|0,0,2); store1($14+38|0,0,1);
 L1: do {
  if ($20) {
   $21 = ((($4)) + 48|0);
   store4($21,1);
   $22 = load4($2);
   $23 = ((($22)) + 20|0);
   $24 = load4($23);
   FUNCTION_TABLE_viiiiii[$24 & 31]($2,$4,$8,$8,1,0);
   $25 = load4($16);
   $26 = ($25|0)==(1);
   $$ = $26 ? $8 : 0;
   $$0 = $$;
  } else {
   $27 = ((($4)) + 36|0);
   $28 = load4($10);
   $29 = ((($28)) + 24|0);
   $30 = load4($29);
   FUNCTION_TABLE_viiiii[$30 & 31]($10,$4,$8,1,0);
   $31 = load4($27);
   switch ($31|0) {
   case 0:  {
    $32 = load4($19);
    $33 = ($32|0)==(1);
    $34 = load4($17);
    $35 = ($34|0)==(1);
    $or$cond = $33 & $35;
    $36 = load4($18);
    $37 = ($36|0)==(1);
    $or$cond28 = $or$cond & $37;
    $38 = load4($15);
    $$33 = $or$cond28 ? $38 : 0;
    $$0 = $$33;
    break L1;
    break;
   }
   case 1:  {
    break;
   }
   default: {
    $$0 = 0;
    break L1;
   }
   }
   $39 = load4($16);
   $40 = ($39|0)==(1);
   if (!($40)) {
    $41 = load4($19);
    $42 = ($41|0)==(0);
    $43 = load4($17);
    $44 = ($43|0)==(1);
    $or$cond30 = $42 & $44;
    $45 = load4($18);
    $46 = ($45|0)==(1);
    $or$cond32 = $or$cond30 & $46;
    if (!($or$cond32)) {
     $$0 = 0;
     break;
    }
   }
   $47 = load4($14);
   $$0 = $47;
  }
 } while(0);
 STACKTOP = sp;return ($$0|0);
}
function __ZN10__cxxabiv120__si_class_type_infoD0Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZdlPv($0);
 return;
}
function __ZNK10__cxxabiv120__si_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = $5|0;
 var $10 = 0, $11 = 0, $12 = 0, $13 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $6 = ((($1)) + 8|0);
 $7 = load4($6);
 $8 = ($0|0)==($7|0);
 if ($8) {
  __ZNK10__cxxabiv117__class_type_info29process_static_type_above_dstEPNS_19__dynamic_cast_infoEPKvS4_i(0,$1,$2,$3,$4);
 } else {
  $9 = ((($0)) + 8|0);
  $10 = load4($9);
  $11 = load4($10);
  $12 = ((($11)) + 20|0);
  $13 = load4($12);
  FUNCTION_TABLE_viiiiii[$13 & 31]($10,$1,$2,$3,$4,$5);
 }
 return;
}
function __ZNK10__cxxabiv120__si_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $$037$off039 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0;
 var $29 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0, $46 = 0, $47 = 0, $48 = 0;
 var $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $not$ = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $5 = ((($1)) + 8|0);
 $6 = load4($5);
 $7 = ($0|0)==($6|0);
 do {
  if ($7) {
   $8 = ((($1)) + 4|0);
   $9 = load4($8);
   $10 = ($9|0)==($2|0);
   if ($10) {
    $11 = ((($1)) + 28|0);
    $12 = load4($11);
    $13 = ($12|0)==(1);
    if (!($13)) {
     store4($11,$3);
    }
   }
  } else {
   $14 = load4($1);
   $15 = ($0|0)==($14|0);
   if (!($15)) {
    $49 = ((($0)) + 8|0);
    $50 = load4($49);
    $51 = load4($50);
    $52 = ((($51)) + 24|0);
    $53 = load4($52);
    FUNCTION_TABLE_viiiii[$53 & 31]($50,$1,$2,$3,$4);
    break;
   }
   $16 = ((($1)) + 16|0);
   $17 = load4($16);
   $18 = ($17|0)==($2|0);
   if (!($18)) {
    $19 = ((($1)) + 20|0);
    $20 = load4($19);
    $21 = ($20|0)==($2|0);
    if (!($21)) {
     $24 = ((($1)) + 32|0);
     store4($24,$3);
     $25 = ((($1)) + 44|0);
     $26 = load4($25);
     $27 = ($26|0)==(4);
     if ($27) {
      break;
     }
     $28 = ((($1)) + 52|0);
     store1($28,0);
     $29 = ((($1)) + 53|0);
     store1($29,0);
     $30 = ((($0)) + 8|0);
     $31 = load4($30);
     $32 = load4($31);
     $33 = ((($32)) + 20|0);
     $34 = load4($33);
     FUNCTION_TABLE_viiiiii[$34 & 31]($31,$1,$2,$2,1,$4);
     $35 = load1($29);
     $36 = ($35<<24>>24)==(0);
     if ($36) {
      $$037$off039 = 0;
      label = 13;
     } else {
      $37 = load1($28);
      $not$ = ($37<<24>>24)==(0);
      if ($not$) {
       $$037$off039 = 1;
       label = 13;
      } else {
       label = 17;
      }
     }
     do {
      if ((label|0) == 13) {
       store4($19,$2);
       $38 = ((($1)) + 40|0);
       $39 = load4($38);
       $40 = (($39) + 1)|0;
       store4($38,$40);
       $41 = ((($1)) + 36|0);
       $42 = load4($41);
       $43 = ($42|0)==(1);
       if ($43) {
        $44 = ((($1)) + 24|0);
        $45 = load4($44);
        $46 = ($45|0)==(2);
        if ($46) {
         $47 = ((($1)) + 54|0);
         store1($47,1);
         if ($$037$off039) {
          label = 17;
          break;
         } else {
          $48 = 4;
          break;
         }
        }
       }
       if ($$037$off039) {
        label = 17;
       } else {
        $48 = 4;
       }
      }
     } while(0);
     if ((label|0) == 17) {
      $48 = 3;
     }
     store4($25,$48);
     break;
    }
   }
   $22 = ($3|0)==(1);
   if ($22) {
    $23 = ((($1)) + 32|0);
    store4($23,1);
   }
  }
 } while(0);
 return;
}
function __ZNK10__cxxabiv120__si_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $10 = 0, $11 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $4 = ((($1)) + 8|0);
 $5 = load4($4);
 $6 = ($0|0)==($5|0);
 if ($6) {
  __ZNK10__cxxabiv117__class_type_info24process_found_base_classEPNS_19__dynamic_cast_infoEPvi(0,$1,$2,$3);
 } else {
  $7 = ((($0)) + 8|0);
  $8 = load4($7);
  $9 = load4($8);
  $10 = ((($9)) + 28|0);
  $11 = load4($10);
  FUNCTION_TABLE_viiii[$11 & 31]($8,$1,$2,$3);
 }
 return;
}
function __ZNSt9type_infoD2Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function __ZNSt9bad_allocD2Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function __ZNSt9bad_allocD0Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZdlPv($0);
 return;
}
function __ZNKSt9bad_alloc4whatEv($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return (11787|0);
}
function __ZNSt9exceptionD2Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 return;
}
function __ZN10__cxxabiv123__fundamental_type_infoD0Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZdlPv($0);
 return;
}
function __ZNK10__cxxabiv123__fundamental_type_info9can_catchEPKNS_16__shim_type_infoERPv($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $3 = ($0|0)==($1|0);
 return ($3|0);
}
function __ZN10__cxxabiv119__pointer_type_infoD0Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZdlPv($0);
 return;
}
function __ZNK10__cxxabiv119__pointer_type_info9can_catchEPKNS_16__shim_type_infoERPv($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $$$i = 0, $$0 = 0, $$4 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0;
 var $27 = 0, $28 = 0, $29 = 0, $3 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $4 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $5 = 0;
 var $6 = 0, $7 = 0, $8 = 0, $9 = 0, $or$cond = 0, label = 0, sp = 0;
 sp = STACKTOP;
 STACKTOP = STACKTOP + 64|0; if ((STACKTOP|0) >= (STACK_MAX|0)) abortStackOverflow(64|0);
 $3 = sp;
 $4 = load4($2);
 $5 = load4($4);
 store4($2,$5);
 $6 = ($0|0)==($1|0);
 $7 = ($1|0)==(1424|0);
 $$$i = $6 | $7;
 if ($$$i) {
  $$4 = 1;
 } else {
  $8 = ($1|0)==(0|0);
  if ($8) {
   $$4 = 0;
  } else {
   $9 = (___dynamic_cast($1,1312,1384,0)|0);
   $10 = ($9|0)==(0|0);
   if ($10) {
    $$4 = 0;
   } else {
    $11 = ((($9)) + 8|0);
    $12 = load4($11);
    $13 = ((($0)) + 8|0);
    $14 = load4($13);
    $15 = $14 ^ -1;
    $16 = $12 & $15;
    $17 = ($16|0)==(0);
    if ($17) {
     $18 = ((($0)) + 12|0);
     $19 = load4($18);
     $20 = ((($9)) + 12|0);
     $21 = load4($20);
     $22 = ($19|0)==($21|0);
     $23 = ($19|0)==(1416|0);
     $or$cond = $23 | $22;
     if ($or$cond) {
      $$4 = 1;
     } else {
      $24 = ($19|0)==(0|0);
      if ($24) {
       $$4 = 0;
      } else {
       $25 = (___dynamic_cast($19,1312,1296,0)|0);
       $26 = ($25|0)==(0|0);
       if ($26) {
        $$4 = 0;
       } else {
        $27 = load4($20);
        $28 = ($27|0)==(0|0);
        if ($28) {
         $$4 = 0;
        } else {
         $29 = (___dynamic_cast($27,1312,1296,0)|0);
         $30 = ($29|0)==(0|0);
         if ($30) {
          $$4 = 0;
         } else {
          $31 = ((($3)) + 4|0);
          ; store8($31,i64_const(0,0),4); store8($31+8|0,i64_const(0,0),4); store8($31+16|0,i64_const(0,0),4); store8($31+24|0,i64_const(0,0),4); store8($31+32|0,i64_const(0,0),4); store8($31+40|0,i64_const(0,0),4); store4($31+48|0,0,4);
          store4($3,$29);
          $32 = ((($3)) + 8|0);
          store4($32,$25);
          $33 = ((($3)) + 12|0);
          store4($33,-1);
          $34 = ((($3)) + 48|0);
          store4($34,1);
          $35 = load4($29);
          $36 = ((($35)) + 28|0);
          $37 = load4($36);
          $38 = load4($2);
          FUNCTION_TABLE_viiii[$37 & 31]($29,$3,$38,1);
          $39 = ((($3)) + 24|0);
          $40 = load4($39);
          $41 = ($40|0)==(1);
          if ($41) {
           $42 = ((($3)) + 16|0);
           $43 = load4($42);
           store4($2,$43);
           $$0 = 1;
          } else {
           $$0 = 0;
          }
          $$4 = $$0;
         }
        }
       }
      }
     }
    } else {
     $$4 = 0;
    }
   }
  }
 }
 STACKTOP = sp;return ($$4|0);
}
function __ZN10__cxxabiv116__enum_type_infoD0Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZdlPv($0);
 return;
}
function __ZNK10__cxxabiv116__enum_type_info9can_catchEPKNS_16__shim_type_infoERPv($0,$1,$2) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 var $3 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $3 = ($0|0)==($1|0);
 return ($3|0);
}
function __ZN10__cxxabiv121__vmi_class_type_infoD0Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 __ZdlPv($0);
 return;
}
function __ZNK10__cxxabiv121__vmi_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = $5|0;
 var $$0 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0;
 var $29 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $6 = ((($1)) + 8|0);
 $7 = load4($6);
 $8 = ($0|0)==($7|0);
 if ($8) {
  __ZNK10__cxxabiv117__class_type_info29process_static_type_above_dstEPNS_19__dynamic_cast_infoEPKvS4_i(0,$1,$2,$3,$4);
 } else {
  $9 = ((($1)) + 52|0);
  $10 = load2($9);
  $11 = $10&255;
  $12 = ((($1)) + 53|0);
  $13 = ($10&65535) >>> 8;
  $14 = $13&255;
  $15 = ((($0)) + 16|0);
  $16 = ((($0)) + 12|0);
  $17 = load4($16);
  $18 = (((($0)) + 16|0) + ($17<<3)|0);
  store1($9,0);
  store1($12,0);
  __ZNK10__cxxabiv122__base_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib($15,$1,$2,$3,$4,$5);
  $19 = ($17|0)>(1);
  L4: do {
   if ($19) {
    $20 = ((($0)) + 24|0);
    $21 = ((($1)) + 24|0);
    $22 = ((($0)) + 8|0);
    $23 = ((($1)) + 54|0);
    $$0 = $20;
    while(1) {
     $24 = load1($23);
     $25 = ($24<<24>>24)==(0);
     if (!($25)) {
      break L4;
     }
     $26 = load2($9);
     $27 = $26&255;
     $28 = ($27<<24>>24)==(0);
     if ($28) {
      $34 = ($26&65535)<(256);
      if (!($34)) {
       $35 = load4($22);
       $36 = $35 & 1;
       $37 = ($36|0)==(0);
       if ($37) {
        break L4;
       }
      }
     } else {
      $29 = load4($21);
      $30 = ($29|0)==(1);
      if ($30) {
       break L4;
      }
      $31 = load4($22);
      $32 = $31 & 2;
      $33 = ($32|0)==(0);
      if ($33) {
       break L4;
      }
     }
     store1($9,0);
     store1($12,0);
     __ZNK10__cxxabiv122__base_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib($$0,$1,$2,$3,$4,$5);
     $38 = ((($$0)) + 8|0);
     $39 = ($38>>>0)<($18>>>0);
     if ($39) {
      $$0 = $38;
     } else {
      break;
     }
    }
   }
  } while(0);
  store1($9,$11);
  store1($12,$14);
 }
 return;
}
function __ZNK10__cxxabiv121__vmi_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $$0 = 0, $$081$off0 = 0, $$084 = 0, $$085$off0 = 0, $$1 = 0, $$182$off0 = 0, $$186$off0 = 0, $$2 = 0, $$283$off0 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0;
 var $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $40 = 0;
 var $41 = 0, $42 = 0, $43 = 0, $44 = 0, $45 = 0, $46 = 0, $47 = 0, $48 = 0, $49 = 0, $5 = 0, $50 = 0, $51 = 0, $52 = 0, $53 = 0, $54 = 0, $55 = 0, $56 = 0, $57 = 0, $58 = 0, $59 = 0;
 var $6 = 0, $60 = 0, $61 = 0, $62 = 0, $63 = 0, $64 = 0, $65 = 0, $66 = 0, $67 = 0, $68 = 0, $69 = 0, $7 = 0, $70 = 0, $71 = 0, $72 = 0, $73 = 0, $74 = 0, $75 = 0, $76 = 0, $77 = 0;
 var $78 = 0, $79 = 0, $8 = 0, $80 = 0, $81 = 0, $82 = 0, $83 = 0, $84 = 0, $85 = 0, $86 = 0, $87 = 0, $88 = 0, $89 = 0, $9 = 0, $90 = 0, $91 = 0, $92 = 0, $93 = 0, $94 = 0, $95 = 0;
 var $96 = 0, $97 = 0, $98 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $5 = ((($1)) + 8|0);
 $6 = load4($5);
 $7 = ($0|0)==($6|0);
 L1: do {
  if ($7) {
   $8 = ((($1)) + 4|0);
   $9 = load4($8);
   $10 = ($9|0)==($2|0);
   if ($10) {
    $11 = ((($1)) + 28|0);
    $12 = load4($11);
    $13 = ($12|0)==(1);
    if (!($13)) {
     store4($11,$3);
    }
   }
  } else {
   $14 = load4($1);
   $15 = ($0|0)==($14|0);
   if (!($15)) {
    $62 = ((($0)) + 16|0);
    $63 = ((($0)) + 12|0);
    $64 = load4($63);
    $65 = (((($0)) + 16|0) + ($64<<3)|0);
    __ZNK10__cxxabiv122__base_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($62,$1,$2,$3,$4);
    $66 = ((($0)) + 24|0);
    $67 = ($64|0)>(1);
    if (!($67)) {
     break;
    }
    $68 = ((($0)) + 8|0);
    $69 = load4($68);
    $70 = $69 & 2;
    $71 = ($70|0)==(0);
    if ($71) {
     $72 = ((($1)) + 36|0);
     $73 = load4($72);
     $74 = ($73|0)==(1);
     if (!($74)) {
      $80 = $69 & 1;
      $81 = ($80|0)==(0);
      if ($81) {
       $84 = ((($1)) + 54|0);
       $$2 = $66;
       while(1) {
        $93 = load1($84);
        $94 = ($93<<24>>24)==(0);
        if (!($94)) {
         break L1;
        }
        $95 = load4($72);
        $96 = ($95|0)==(1);
        if ($96) {
         break L1;
        }
        __ZNK10__cxxabiv122__base_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($$2,$1,$2,$3,$4);
        $97 = ((($$2)) + 8|0);
        $98 = ($97>>>0)<($65>>>0);
        if ($98) {
         $$2 = $97;
        } else {
         break L1;
        }
       }
      }
      $82 = ((($1)) + 24|0);
      $83 = ((($1)) + 54|0);
      $$1 = $66;
      while(1) {
       $85 = load1($83);
       $86 = ($85<<24>>24)==(0);
       if (!($86)) {
        break L1;
       }
       $87 = load4($72);
       $88 = ($87|0)==(1);
       if ($88) {
        $89 = load4($82);
        $90 = ($89|0)==(1);
        if ($90) {
         break L1;
        }
       }
       __ZNK10__cxxabiv122__base_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($$1,$1,$2,$3,$4);
       $91 = ((($$1)) + 8|0);
       $92 = ($91>>>0)<($65>>>0);
       if ($92) {
        $$1 = $91;
       } else {
        break L1;
       }
      }
     }
    }
    $75 = ((($1)) + 54|0);
    $$0 = $66;
    while(1) {
     $76 = load1($75);
     $77 = ($76<<24>>24)==(0);
     if (!($77)) {
      break L1;
     }
     __ZNK10__cxxabiv122__base_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($$0,$1,$2,$3,$4);
     $78 = ((($$0)) + 8|0);
     $79 = ($78>>>0)<($65>>>0);
     if ($79) {
      $$0 = $78;
     } else {
      break L1;
     }
    }
   }
   $16 = ((($1)) + 16|0);
   $17 = load4($16);
   $18 = ($17|0)==($2|0);
   if (!($18)) {
    $19 = ((($1)) + 20|0);
    $20 = load4($19);
    $21 = ($20|0)==($2|0);
    if (!($21)) {
     $24 = ((($1)) + 32|0);
     store4($24,$3);
     $25 = ((($1)) + 44|0);
     $26 = load4($25);
     $27 = ($26|0)==(4);
     if ($27) {
      break;
     }
     $28 = ((($0)) + 16|0);
     $29 = ((($0)) + 12|0);
     $30 = load4($29);
     $31 = (((($0)) + 16|0) + ($30<<3)|0);
     $32 = ((($1)) + 52|0);
     $33 = ((($1)) + 53|0);
     $34 = ((($1)) + 54|0);
     $35 = ((($0)) + 8|0);
     $36 = ((($1)) + 24|0);
     $$081$off0 = 0;$$084 = $28;$$085$off0 = 0;
     L34: while(1) {
      $37 = ($$084>>>0)<($31>>>0);
      if (!($37)) {
       $$283$off0 = $$081$off0;
       label = 20;
       break;
      }
      store1($32,0);
      store1($33,0);
      __ZNK10__cxxabiv122__base_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib($$084,$1,$2,$2,1,$4);
      $38 = load1($34);
      $39 = ($38<<24>>24)==(0);
      if (!($39)) {
       $$283$off0 = $$081$off0;
       label = 20;
       break;
      }
      $40 = load1($33);
      $41 = ($40<<24>>24)==(0);
      do {
       if ($41) {
        $$182$off0 = $$081$off0;$$186$off0 = $$085$off0;
       } else {
        $42 = load1($32);
        $43 = ($42<<24>>24)==(0);
        if ($43) {
         $49 = load4($35);
         $50 = $49 & 1;
         $51 = ($50|0)==(0);
         if ($51) {
          $$283$off0 = 1;
          label = 20;
          break L34;
         } else {
          $$182$off0 = 1;$$186$off0 = $$085$off0;
          break;
         }
        }
        $44 = load4($36);
        $45 = ($44|0)==(1);
        if ($45) {
         label = 25;
         break L34;
        }
        $46 = load4($35);
        $47 = $46 & 2;
        $48 = ($47|0)==(0);
        if ($48) {
         label = 25;
         break L34;
        } else {
         $$182$off0 = 1;$$186$off0 = 1;
        }
       }
      } while(0);
      $52 = ((($$084)) + 8|0);
      $$081$off0 = $$182$off0;$$084 = $52;$$085$off0 = $$186$off0;
     }
     do {
      if ((label|0) == 20) {
       if (!($$085$off0)) {
        store4($19,$2);
        $53 = ((($1)) + 40|0);
        $54 = load4($53);
        $55 = (($54) + 1)|0;
        store4($53,$55);
        $56 = ((($1)) + 36|0);
        $57 = load4($56);
        $58 = ($57|0)==(1);
        if ($58) {
         $59 = load4($36);
         $60 = ($59|0)==(2);
         if ($60) {
          store1($34,1);
          if ($$283$off0) {
           label = 25;
           break;
          } else {
           $61 = 4;
           break;
          }
         }
        }
       }
       if ($$283$off0) {
        label = 25;
       } else {
        $61 = 4;
       }
      }
     } while(0);
     if ((label|0) == 25) {
      $61 = 3;
     }
     store4($25,$61);
     break;
    }
   }
   $22 = ($3|0)==(1);
   if ($22) {
    $23 = ((($1)) + 32|0);
    store4($23,1);
   }
  }
 } while(0);
 return;
}
function __ZNK10__cxxabiv121__vmi_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $$0 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $4 = ((($1)) + 8|0);
 $5 = load4($4);
 $6 = ($0|0)==($5|0);
 L1: do {
  if ($6) {
   __ZNK10__cxxabiv117__class_type_info24process_found_base_classEPNS_19__dynamic_cast_infoEPvi(0,$1,$2,$3);
  } else {
   $7 = ((($0)) + 16|0);
   $8 = ((($0)) + 12|0);
   $9 = load4($8);
   $10 = (((($0)) + 16|0) + ($9<<3)|0);
   __ZNK10__cxxabiv122__base_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi($7,$1,$2,$3);
   $11 = ($9|0)>(1);
   if ($11) {
    $12 = ((($0)) + 24|0);
    $13 = ((($1)) + 54|0);
    $$0 = $12;
    while(1) {
     __ZNK10__cxxabiv122__base_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi($$0,$1,$2,$3);
     $14 = load1($13);
     $15 = ($14<<24>>24)==(0);
     if (!($15)) {
      break L1;
     }
     $16 = ((($$0)) + 8|0);
     $17 = ($16>>>0)<($10>>>0);
     if ($17) {
      $$0 = $16;
     } else {
      break;
     }
    }
   }
  }
 } while(0);
 return;
}
function __ZNK10__cxxabiv122__base_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi($0,$1,$2,$3) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 var $$0 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $4 = ((($0)) + 4|0);
 $5 = load4($4);
 $6 = $5 >> 8;
 $7 = $5 & 1;
 $8 = ($7|0)==(0);
 if ($8) {
  $$0 = $6;
 } else {
  $9 = load4($2);
  $10 = (($9) + ($6)|0);
  $11 = load4($10);
  $$0 = $11;
 }
 $12 = load4($0);
 $13 = load4($12);
 $14 = ((($13)) + 28|0);
 $15 = load4($14);
 $16 = (($2) + ($$0)|0);
 $17 = $5 & 2;
 $18 = ($17|0)!=(0);
 $19 = $18 ? $3 : 2;
 FUNCTION_TABLE_viiii[$15 & 31]($12,$1,$16,$19);
 return;
}
function __ZNK10__cxxabiv122__base_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib($0,$1,$2,$3,$4,$5) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 $5 = $5|0;
 var $$0 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $6 = ((($0)) + 4|0);
 $7 = load4($6);
 $8 = $7 >> 8;
 $9 = $7 & 1;
 $10 = ($9|0)==(0);
 if ($10) {
  $$0 = $8;
 } else {
  $11 = load4($3);
  $12 = (($11) + ($8)|0);
  $13 = load4($12);
  $$0 = $13;
 }
 $14 = load4($0);
 $15 = load4($14);
 $16 = ((($15)) + 20|0);
 $17 = load4($16);
 $18 = (($3) + ($$0)|0);
 $19 = $7 & 2;
 $20 = ($19|0)!=(0);
 $21 = $20 ? $4 : 2;
 FUNCTION_TABLE_viiiiii[$17 & 31]($14,$1,$2,$18,$21,$5);
 return;
}
function __ZNK10__cxxabiv122__base_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib($0,$1,$2,$3,$4) {
 $0 = $0|0;
 $1 = $1|0;
 $2 = $2|0;
 $3 = $3|0;
 $4 = $4|0;
 var $$0 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $5 = ((($0)) + 4|0);
 $6 = load4($5);
 $7 = $6 >> 8;
 $8 = $6 & 1;
 $9 = ($8|0)==(0);
 if ($9) {
  $$0 = $7;
 } else {
  $10 = load4($2);
  $11 = (($10) + ($7)|0);
  $12 = load4($11);
  $$0 = $12;
 }
 $13 = load4($0);
 $14 = load4($13);
 $15 = ((($14)) + 24|0);
 $16 = load4($15);
 $17 = (($2) + ($$0)|0);
 $18 = $6 & 2;
 $19 = ($18|0)!=(0);
 $20 = $19 ? $3 : 2;
 FUNCTION_TABLE_viiiii[$16 & 31]($13,$1,$17,$20,$4);
 return;
}
function __ZNSt9bad_allocC2Ev($0) {
 $0 = $0|0;
 var label = 0, sp = 0;
 sp = STACKTOP;
 store4($0,(8708));
 return;
}
function __ZSt15get_new_handlerv() {
 var $0 = 0, $1 = 0, $2 = 0, label = 0, sp = 0;
 sp = STACKTOP;
 $0 = load4(12584);
 $1 = (($0) + 0)|0;
 store4(12584,$1);
 $2 = $0;
 return ($2|0);
}
function runPostSets() {
}
function _memset(ptr, value, num) {
    ptr = ptr|0; value = value|0; num = num|0;
    var stop = 0, value4 = 0, stop4 = 0, unaligned = 0;
    stop = (ptr + num)|0;
    if ((num|0) >= 20) {
      // This is unaligned, but quite large, so work hard to get to aligned settings
      value = value & 0xff;
      unaligned = ptr & 3;
      value4 = value | (value << 8) | (value << 16) | (value << 24);
      stop4 = stop & ~3;
      if (unaligned) {
        unaligned = (ptr + 4 - unaligned)|0;
        while ((ptr|0) < (unaligned|0)) { // no need to check for stop, since we have large num
          HEAP8[((ptr)>>0)]=value;
          ptr = (ptr+1)|0;
        }
      }
      while ((ptr|0) < (stop4|0)) {
        HEAP32[((ptr)>>2)]=value4;
        ptr = (ptr+4)|0;
      }
    }
    while ((ptr|0) < (stop|0)) {
      HEAP8[((ptr)>>0)]=value;
      ptr = (ptr+1)|0;
    }
    return (ptr-num)|0;
}
function _memcpy(dest, src, num) {
    dest = dest|0; src = src|0; num = num|0;
    var ret = 0;
    if ((num|0) >= 4096) return _emscripten_memcpy_big(dest|0, src|0, num|0)|0;
    ret = dest|0;
    if ((dest&3) == (src&3)) {
      while (dest & 3) {
        if ((num|0) == 0) return ret|0;
        HEAP8[((dest)>>0)]=((HEAP8[((src)>>0)])|0);
        dest = (dest+1)|0;
        src = (src+1)|0;
        num = (num-1)|0;
      }
      while ((num|0) >= 4) {
        HEAP32[((dest)>>2)]=((HEAP32[((src)>>2)])|0);
        dest = (dest+4)|0;
        src = (src+4)|0;
        num = (num-4)|0;
      }
    }
    while ((num|0) > 0) {
      HEAP8[((dest)>>0)]=((HEAP8[((src)>>0)])|0);
      dest = (dest+1)|0;
      src = (src+1)|0;
      num = (num-1)|0;
    }
    return ret|0;
}
function _sbrk(increment) {
    increment = increment|0;
    var oldDynamicTop = 0;
    var oldDynamicTopOnChange = 0;
    var newDynamicTop = 0;
    var totalMemory = 0;
    increment = ((increment + 15) & -16)|0;
    oldDynamicTop = HEAP32[DYNAMICTOP_PTR>>2]|0;
    newDynamicTop = oldDynamicTop + increment | 0;

    if (((increment|0) > 0 & (newDynamicTop|0) < (oldDynamicTop|0)) // Detect and fail if we would wrap around signed 32-bit int.
      | (newDynamicTop|0) < 0) { // Also underflow, sbrk() should be able to be used to subtract.
      abortOnCannotGrowMemory()|0;
      ___setErrNo(12);
      return -1;
    }

    HEAP32[DYNAMICTOP_PTR>>2] = newDynamicTop;
    totalMemory = getTotalMemory()|0;
    if ((newDynamicTop|0) > (totalMemory|0)) {
      if ((enlargeMemory()|0) == 0) {
        ___setErrNo(12);
        HEAP32[DYNAMICTOP_PTR>>2] = oldDynamicTop;
        return -1;
      }
    }
    return oldDynamicTop|0;
}
function _pthread_self() {
    return 0;
}

  
function dynCall_viiiii(index,a1,a2,a3,a4,a5) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0; a4=a4|0; a5=a5|0;
  FUNCTION_TABLE_viiiii[index&31](a1|0,a2|0,a3|0,a4|0,a5|0);
}


function dynCall_vif(index,a1,a2) {
  index = index|0;
  a1=a1|0; a2=Math_fround(a2);
  FUNCTION_TABLE_vif[index&127](a1|0,Math_fround(a2));
}


function dynCall_fiff(index,a1,a2,a3) {
  index = index|0;
  a1=a1|0; a2=Math_fround(a2); a3=Math_fround(a3);
  return Math_fround(FUNCTION_TABLE_fiff[index&127](a1|0,Math_fround(a2),Math_fround(a3)));
}


function dynCall_vi(index,a1) {
  index = index|0;
  a1=a1|0;
  FUNCTION_TABLE_vi[index&127](a1|0);
}


function dynCall_vii(index,a1,a2) {
  index = index|0;
  a1=a1|0; a2=a2|0;
  FUNCTION_TABLE_vii[index&127](a1|0,a2|0);
}


function dynCall_ii(index,a1) {
  index = index|0;
  a1=a1|0;
  return FUNCTION_TABLE_ii[index&63](a1|0)|0;
}


function dynCall_fiiffff(index,a1,a2,a3,a4,a5,a6) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=Math_fround(a3); a4=Math_fround(a4); a5=Math_fround(a5); a6=Math_fround(a6);
  return Math_fround(FUNCTION_TABLE_fiiffff[index&127](a1|0,a2|0,Math_fround(a3),Math_fround(a4),Math_fround(a5),Math_fround(a6)));
}


function dynCall_fifff(index,a1,a2,a3,a4) {
  index = index|0;
  a1=a1|0; a2=Math_fround(a2); a3=Math_fround(a3); a4=Math_fround(a4);
  return Math_fround(FUNCTION_TABLE_fifff[index&127](a1|0,Math_fround(a2),Math_fround(a3),Math_fround(a4)));
}


function dynCall_fiiiiii(index,a1,a2,a3,a4,a5,a6) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0; a4=a4|0; a5=a5|0; a6=a6|0;
  return Math_fround(FUNCTION_TABLE_fiiiiii[index&127](a1|0,a2|0,a3|0,a4|0,a5|0,a6|0));
}


function dynCall_fiffff(index,a1,a2,a3,a4,a5) {
  index = index|0;
  a1=a1|0; a2=Math_fround(a2); a3=Math_fround(a3); a4=Math_fround(a4); a5=Math_fround(a5);
  return Math_fround(FUNCTION_TABLE_fiffff[index&127](a1|0,Math_fround(a2),Math_fround(a3),Math_fround(a4),Math_fround(a5)));
}


function dynCall_iiii(index,a1,a2,a3) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0;
  return FUNCTION_TABLE_iiii[index&127](a1|0,a2|0,a3|0)|0;
}


function dynCall_fiiff(index,a1,a2,a3,a4) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=Math_fround(a3); a4=Math_fround(a4);
  return Math_fround(FUNCTION_TABLE_fiiff[index&127](a1|0,a2|0,Math_fround(a3),Math_fround(a4)));
}


function dynCall_fii(index,a1,a2) {
  index = index|0;
  a1=a1|0; a2=a2|0;
  return Math_fround(FUNCTION_TABLE_fii[index&63](a1|0,a2|0));
}


function dynCall_fiifff(index,a1,a2,a3,a4,a5) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=Math_fround(a3); a4=Math_fround(a4); a5=Math_fround(a5);
  return Math_fround(FUNCTION_TABLE_fiifff[index&127](a1|0,a2|0,Math_fround(a3),Math_fround(a4),Math_fround(a5)));
}


function dynCall_fiii(index,a1,a2,a3) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0;
  return Math_fround(FUNCTION_TABLE_fiii[index&127](a1|0,a2|0,a3|0));
}


function dynCall_fiiiii(index,a1,a2,a3,a4,a5) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0; a4=a4|0; a5=a5|0;
  return Math_fround(FUNCTION_TABLE_fiiiii[index&127](a1|0,a2|0,a3|0,a4|0,a5|0));
}


function dynCall_fi(index,a1) {
  index = index|0;
  a1=a1|0;
  return Math_fround(FUNCTION_TABLE_fi[index&127](a1|0));
}


function dynCall_iii(index,a1,a2) {
  index = index|0;
  a1=a1|0; a2=a2|0;
  return FUNCTION_TABLE_iii[index&63](a1|0,a2|0)|0;
}


function dynCall_viiiiii(index,a1,a2,a3,a4,a5,a6) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0; a4=a4|0; a5=a5|0; a6=a6|0;
  FUNCTION_TABLE_viiiiii[index&31](a1|0,a2|0,a3|0,a4|0,a5|0,a6|0);
}


function dynCall_fiiii(index,a1,a2,a3,a4) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0; a4=a4|0;
  return Math_fround(FUNCTION_TABLE_fiiii[index&127](a1|0,a2|0,a3|0,a4|0));
}


function dynCall_viii(index,a1,a2,a3) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0;
  FUNCTION_TABLE_viii[index&63](a1|0,a2|0,a3|0);
}


function dynCall_v(index) {
  index = index|0;
  
  FUNCTION_TABLE_v[index&0]();
}


function dynCall_viif(index,a1,a2,a3) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=Math_fround(a3);
  FUNCTION_TABLE_viif[index&63](a1|0,a2|0,Math_fround(a3));
}


function dynCall_viiii(index,a1,a2,a3,a4) {
  index = index|0;
  a1=a1|0; a2=a2|0; a3=a3|0; a4=a4|0;
  FUNCTION_TABLE_viiii[index&31](a1|0,a2|0,a3|0,a4|0);
}

function b0(p0,p1,p2,p3,p4) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0;p3 = p3|0;p4 = p4|0; nullFunc_viiiii(0);
}
function b1(p0,p1) {
 p0 = p0|0;p1 = Math_fround(p1); nullFunc_vif(1);
}
function b2(p0,p1,p2) {
 p0 = p0|0;p1 = Math_fround(p1);p2 = Math_fround(p2); nullFunc_fiff(2);return Math_fround(0);
}
function b3(p0) {
 p0 = p0|0; nullFunc_vi(3);
}
function b4(p0,p1) {
 p0 = p0|0;p1 = p1|0; nullFunc_vii(4);
}
function b5(p0) {
 p0 = p0|0; nullFunc_ii(5);return 0;
}
function b6(p0,p1,p2,p3,p4,p5) {
 p0 = p0|0;p1 = p1|0;p2 = Math_fround(p2);p3 = Math_fround(p3);p4 = Math_fround(p4);p5 = Math_fround(p5); nullFunc_fiiffff(6);return Math_fround(0);
}
function b7(p0,p1,p2,p3) {
 p0 = p0|0;p1 = Math_fround(p1);p2 = Math_fround(p2);p3 = Math_fround(p3); nullFunc_fifff(7);return Math_fround(0);
}
function b8(p0,p1,p2,p3,p4,p5) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0;p3 = p3|0;p4 = p4|0;p5 = p5|0; nullFunc_fiiiiii(8);return Math_fround(0);
}
function b9(p0,p1,p2,p3,p4) {
 p0 = p0|0;p1 = Math_fround(p1);p2 = Math_fround(p2);p3 = Math_fround(p3);p4 = Math_fround(p4); nullFunc_fiffff(9);return Math_fround(0);
}
function b10(p0,p1,p2) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0; nullFunc_iiii(10);return 0;
}
function b11(p0,p1,p2,p3) {
 p0 = p0|0;p1 = p1|0;p2 = Math_fround(p2);p3 = Math_fround(p3); nullFunc_fiiff(11);return Math_fround(0);
}
function b12(p0,p1) {
 p0 = p0|0;p1 = p1|0; nullFunc_fii(12);return Math_fround(0);
}
function b13(p0,p1,p2,p3,p4) {
 p0 = p0|0;p1 = p1|0;p2 = Math_fround(p2);p3 = Math_fround(p3);p4 = Math_fround(p4); nullFunc_fiifff(13);return Math_fround(0);
}
function b14(p0,p1,p2) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0; nullFunc_fiii(14);return Math_fround(0);
}
function b15(p0,p1,p2,p3,p4) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0;p3 = p3|0;p4 = p4|0; nullFunc_fiiiii(15);return Math_fround(0);
}
function b16(p0) {
 p0 = p0|0; nullFunc_fi(16);return Math_fround(0);
}
function b17(p0,p1) {
 p0 = p0|0;p1 = p1|0; nullFunc_iii(17);return 0;
}
function b18(p0,p1,p2,p3,p4,p5) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0;p3 = p3|0;p4 = p4|0;p5 = p5|0; nullFunc_viiiiii(18);
}
function b19(p0,p1,p2,p3) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0;p3 = p3|0; nullFunc_fiiii(19);return Math_fround(0);
}
function b20(p0,p1,p2) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0; nullFunc_viii(20);
}
function b21() {
 ; nullFunc_v(21);
}
function b22(p0,p1,p2) {
 p0 = p0|0;p1 = p1|0;p2 = Math_fround(p2); nullFunc_viif(22);
}
function b23(p0,p1,p2,p3) {
 p0 = p0|0;p1 = p1|0;p2 = p2|0;p3 = p3|0; nullFunc_viiii(23);
}

// EMSCRIPTEN_END_FUNCS
var FUNCTION_TABLE_viiiii = [b0,b0,b0,b0,b0,b0,b0,b0,b0,b0,__ZNK10__cxxabiv117__class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib,b0,b0,b0,__ZNK10__cxxabiv120__si_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib,b0,b0,b0,b0,b0,b0,b0,b0,b0,b0,b0,b0,__ZNK10__cxxabiv121__vmi_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib,b0
,b0,b0,b0];
var FUNCTION_TABLE_vif = [b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1
,b1,b1,b1,b1,b1,b1,b1,b1,b1,__ZN9FastNoise12SetFrequencyEf,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,__ZN9FastNoise20SetFractalLacunarityEf,b1,__ZN9FastNoise14SetFractalGainEf,b1,b1,b1,b1
,b1,b1,b1,b1,b1,__ZN9FastNoise17SetCellularJitterEf,b1,__ZN9FastNoise21SetGradientPerturbAmpEf,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1
,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1
,b1,b1,b1,b1,b1,b1,b1,b1,b1];
var FUNCTION_TABLE_fiff = [b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2
,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2
,b2,b2,b2,b2,b2,b2,b2,b2,__ZNK9FastNoise8GetValueEff,b2,__ZNK9FastNoise15GetValueFractalEff,__ZNK9FastNoise9GetPerlinEff,__ZNK9FastNoise16GetPerlinFractalEff,__ZNK9FastNoise10GetSimplexEff,__ZNK9FastNoise17GetSimplexFractalEff,__ZNK9FastNoise11GetCellularEff,__ZNK9FastNoise13GetWhiteNoiseEff,b2,b2,__ZNK9FastNoise8GetCubicEff,__ZNK9FastNoise15GetCubicFractalEff,__ZNK9FastNoise8GetNoiseEff,b2,b2,b2,b2,b2,b2,b2,b2
,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2,b2
,b2,b2,b2,b2,b2,b2,b2,b2,b2];
var FUNCTION_TABLE_vi = [b3,b3,b3,b3,__ZN10__cxxabiv116__shim_type_infoD2Ev,__ZN10__cxxabiv117__class_type_infoD0Ev,__ZNK10__cxxabiv116__shim_type_info5noop1Ev,__ZNK10__cxxabiv116__shim_type_info5noop2Ev,b3,b3,b3,b3,__ZN10__cxxabiv120__si_class_type_infoD0Ev,b3,b3,b3,__ZNSt9bad_allocD2Ev,__ZNSt9bad_allocD0Ev,b3,__ZN10__cxxabiv123__fundamental_type_infoD0Ev,b3,__ZN10__cxxabiv119__pointer_type_infoD0Ev,b3,__ZN10__cxxabiv116__enum_type_infoD0Ev,b3,__ZN10__cxxabiv121__vmi_class_type_infoD0Ev,b3,b3,b3
,b3,__ZN10emscripten8internal14raw_destructorI9FastNoiseEEvPT_,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3
,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3
,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,_cleanup_448,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3,b3
,b3,b3,b3,b3,b3,b3,b3,b3,b3];
var FUNCTION_TABLE_vii = [b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4
,b4,b4,b4,b4,b4,__ZN9FastNoise7SetSeedEi,b4,b4,b4,b4,b4,b4,b4,__ZN9FastNoise9SetInterpENS_6InterpE,b4,b4,b4,__ZN9FastNoise12SetNoiseTypeENS_9NoiseTypeE,b4,b4,b4,__ZN9FastNoise17SetFractalOctavesEi,b4,b4,b4,b4,b4,__ZN9FastNoise14SetFractalTypeENS_11FractalTypeE,b4,b4
,b4,__ZN9FastNoise27SetCellularDistanceFunctionENS_24CellularDistanceFunctionE,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4
,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,__ZN9FastNoiseC2Ei,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4,b4
,b4,b4,b4,b4,b4,b4,b4,b4,b4];
var FUNCTION_TABLE_ii = [b5,___stdio_close,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5,__ZNKSt9bad_alloc4whatEv,b5,b5,b5,b5,b5,b5,b5,b5,b5,b5
,__ZN10emscripten8internal13getActualTypeI9FastNoiseEEPKvPT_,b5,__ZN10emscripten8internal12operator_newI9FastNoiseJiEEEPT_DpOT0_,b5,__ZNK9FastNoise7GetSeedEv,b5,b5,b5,b5,b5,b5,b5,__ZNK9FastNoise9GetInterpEv,b5,b5,b5,__ZNK9FastNoise12GetNoiseTypeEv,b5,b5,b5,__ZNK9FastNoise17GetFractalOctavesEv,b5,b5,b5,b5,b5,__ZNK9FastNoise14GetFractalTypeEv,b5,b5,b5
,__ZNK9FastNoise27GetCellularDistanceFunctionEv,b5,b5,b5,b5];
var FUNCTION_TABLE_fiiffff = [b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6
,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6
,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6
,b6,b6,b6,b6,b6,b6,b6,__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffffEfPKS2_JffffEE6invokeERKS4_S6_ffff,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6,b6
,b6,b6,b6,b6,b6,b6,b6,b6,b6];
var FUNCTION_TABLE_fifff = [b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7
,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7
,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,__ZNK9FastNoise8GetValueEfff,b7,__ZNK9FastNoise15GetValueFractalEfff,__ZNK9FastNoise9GetPerlinEfff,__ZNK9FastNoise16GetPerlinFractalEfff,__ZNK9FastNoise10GetSimplexEfff,__ZNK9FastNoise17GetSimplexFractalEfff,__ZNK9FastNoise11GetCellularEfff
,__ZNK9FastNoise13GetWhiteNoiseEfff,b7,b7,__ZNK9FastNoise8GetCubicEfff,__ZNK9FastNoise15GetCubicFractalEfff,__ZNK9FastNoise8GetNoiseEfff,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7,b7
,b7,b7,b7,b7,b7,b7,b7,b7,b7];
var FUNCTION_TABLE_fiiiiii = [b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8
,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8
,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8
,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiiEfPKS2_JiiiiEE6invokeERKS4_S6_iiii,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8,b8
,b8,b8,b8,b8,b8,b8,b8,b8,b8];
var FUNCTION_TABLE_fiffff = [b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9
,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9
,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9
,b9,b9,b9,b9,b9,b9,__ZNK9FastNoise10GetSimplexEffff,b9,__ZNK9FastNoise13GetWhiteNoiseEffff,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9,b9
,b9,b9,b9,b9,b9,b9,b9,b9,b9];
var FUNCTION_TABLE_iiii = [b10,b10,___stdout_write,___stdio_seek,b10,b10,b10,b10,__ZNK10__cxxabiv117__class_type_info9can_catchEPKNS_16__shim_type_infoERPv,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,__ZNK10__cxxabiv123__fundamental_type_info9can_catchEPKNS_16__shim_type_infoERPv,b10,__ZNK10__cxxabiv119__pointer_type_info9can_catchEPKNS_16__shim_type_infoERPv,b10,__ZNK10__cxxabiv116__enum_type_info9can_catchEPKNS_16__shim_type_infoERPv,b10,b10,b10,b10
,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10
,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10
,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,___stdio_write,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10,b10
,b10,b10,b10,b10,b10,b10,b10,b10,b10];
var FUNCTION_TABLE_fiiff = [b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11
,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11
,b11,b11,b11,b11,b11,b11,b11,b11,b11,__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffEfPKS2_JffEE6invokeERKS4_S6_ff,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11
,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11,b11
,b11,b11,b11,b11,b11,b11,b11,b11,b11];
var FUNCTION_TABLE_fii = [b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12
,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE3getIS2_EEfRKS4_RKT_,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12,b12
,b12,b12,b12,b12,b12];
var FUNCTION_TABLE_fiifff = [b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13
,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13
,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFffffEfPKS2_JfffEE6invokeERKS4_S6_fff,b13,b13,b13,b13,b13,b13
,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13,b13
,b13,b13,b13,b13,b13,b13,b13,b13,b13];
var FUNCTION_TABLE_fiii = [b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14
,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14
,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,__ZNK9FastNoise16GetWhiteNoiseIntEii,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14
,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14,b14
,b14,b14,b14,b14,b14,b14,b14,b14,b14];
var FUNCTION_TABLE_fiiiii = [b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15
,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15
,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15
,b15,b15,__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiEfPKS2_JiiiEE6invokeERKS4_S6_iii,b15,b15,b15,b15,b15,b15,__ZNK9FastNoise16GetWhiteNoiseIntEiiii,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15,b15
,b15,b15,b15,b15,b15,b15,b15,b15,b15];
var FUNCTION_TABLE_fi = [b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16
,b16,b16,b16,b16,b16,b16,b16,b16,__ZNK9FastNoise12GetFrequencyEv,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,__ZNK9FastNoise20GetFractalLacunarityEv,b16,__ZNK9FastNoise14GetFractalGainEv,b16,b16,b16,b16,b16
,b16,b16,b16,b16,__ZNK9FastNoise17GetCellularJitterEv,b16,__ZNK9FastNoise21GetGradientPerturbAmpEv,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16
,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16,b16
,b16,b16,b16,b16,b16,b16,b16,b16,b16];
var FUNCTION_TABLE_iii = [b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17,b17
,b17,b17,b17,__ZN10emscripten8internal7InvokerIP9FastNoiseJOiEE6invokeEPFS3_S4_Ei,b17,b17,__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE3getIS2_EEiRKS4_RKT_,b17,b17,b17,b17,b17,b17,b17,__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE3getIS2_EES3_RKS5_RKT_,b17,b17,b17,__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE3getIS2_EES3_RKS5_RKT_,b17,b17,b17,b17,b17,b17,b17,b17,b17,__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE3getIS2_EES3_RKS5_RKT_,b17
,b17,b17,__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE3getIS2_EES3_RKS5_RKT_,b17,b17];
var FUNCTION_TABLE_viiiiii = [b18,b18,b18,b18,b18,b18,b18,b18,b18,__ZNK10__cxxabiv117__class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib,b18,b18,b18,__ZNK10__cxxabiv120__si_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib,b18,b18,b18,b18,b18,b18,b18,b18,b18,b18,b18,b18,__ZNK10__cxxabiv121__vmi_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib,b18,b18
,b18,b18,b18];
var FUNCTION_TABLE_fiiii = [b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19
,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19
,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiEfPKS2_JiiEE6invokeERKS4_S6_ii,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19
,b19,__ZNK9FastNoise16GetWhiteNoiseIntEiii,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19,b19
,b19,b19,b19,b19,b19,b19,b19,b19,b19];
var FUNCTION_TABLE_viii = [b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20,b20
,b20,b20,b20,b20,b20,b20,b20,__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE3setIS2_EEvRKS4_RT_i,b20,b20,b20,b20,b20,b20,b20,__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE3setIS2_EEvRKS5_RT_S3_,b20,b20,b20,__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE3setIS2_EEvRKS5_RT_S3_,b20,b20,b20,b20,b20,b20,b20,b20,b20,__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE3setIS2_EEvRKS5_RT_S3_
,b20,b20,b20,__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE3setIS2_EEvRKS5_RT_S3_,b20];
var FUNCTION_TABLE_v = [b21];
var FUNCTION_TABLE_viif = [b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22
,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE3setIS2_EEvRKS4_RT_f,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22,b22
,b22,b22,b22,b22,b22];
var FUNCTION_TABLE_viiii = [b23,b23,b23,b23,b23,b23,b23,b23,b23,b23,b23,__ZNK10__cxxabiv117__class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi,b23,b23,b23,__ZNK10__cxxabiv120__si_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi,b23,b23,b23,b23,b23,b23,b23,b23,b23,b23,b23,b23,__ZNK10__cxxabiv121__vmi_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi
,b23,b23,b23];

  return { _sbrk: _sbrk, _fflush: _fflush, _pthread_self: _pthread_self, _memset: _memset, _malloc: _malloc, _memcpy: _memcpy, ___getTypeName: ___getTypeName, _free: _free, ___errno_location: ___errno_location, __GLOBAL__sub_I_EMBindings_cpp: __GLOBAL__sub_I_EMBindings_cpp, __GLOBAL__sub_I_FastNoise_cpp: __GLOBAL__sub_I_FastNoise_cpp, __GLOBAL__sub_I_bind_cpp: __GLOBAL__sub_I_bind_cpp, runPostSets: runPostSets, stackAlloc: stackAlloc, stackSave: stackSave, stackRestore: stackRestore, establishStackSpace: establishStackSpace, setThrew: setThrew, setTempRet0: setTempRet0, getTempRet0: getTempRet0, dynCall_viiiii: dynCall_viiiii, dynCall_vif: dynCall_vif, dynCall_fiff: dynCall_fiff, dynCall_vi: dynCall_vi, dynCall_vii: dynCall_vii, dynCall_ii: dynCall_ii, dynCall_fiiffff: dynCall_fiiffff, dynCall_fifff: dynCall_fifff, dynCall_fiiiiii: dynCall_fiiiiii, dynCall_fiffff: dynCall_fiffff, dynCall_iiii: dynCall_iiii, dynCall_fiiff: dynCall_fiiff, dynCall_fii: dynCall_fii, dynCall_fiifff: dynCall_fiifff, dynCall_fiii: dynCall_fiii, dynCall_fiiiii: dynCall_fiiiii, dynCall_fi: dynCall_fi, dynCall_iii: dynCall_iii, dynCall_viiiiii: dynCall_viiiiii, dynCall_fiiii: dynCall_fiiii, dynCall_viii: dynCall_viii, dynCall_v: dynCall_v, dynCall_viif: dynCall_viif, dynCall_viiii: dynCall_viiii };
})
;