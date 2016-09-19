<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>SCOREP_MetricPlugins.h</name>
    <path>/home/roessel/work/scorep/src/tags/REL-2.0.2/include/scorep/</path>
    <filename>SCOREP__MetricPlugins_8h</filename>
    <includes id="SCOREP__MetricTypes_8h" name="SCOREP_MetricTypes.h" local="no" imported="no">scorep/SCOREP_MetricTypes.h</includes>
    <class kind="struct">SCOREP_Metric_Plugin_Info</class>
    <class kind="struct">SCOREP_Metric_Plugin_MetricProperties</class>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_METRIC_PLUGIN_ENTRY</name>
      <anchorfile>SCOREP__MetricPlugins_8h.html</anchorfile>
      <anchor>a6107d9468ac980a94ad707bd40a40e40</anchor>
      <arglist>(_name)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_METRIC_PLUGIN_VERSION</name>
      <anchorfile>SCOREP__MetricPlugins_8h.html</anchorfile>
      <anchor>a19947f3f006b54f239f9131e32191392</anchor>
      <arglist></arglist>
      <docanchor file="SCOREP__MetricPlugins_8h" title="Mandatory functions">mandatoryF</docanchor>
      <docanchor file="SCOREP__MetricPlugins_8h" title="Mandatory variables">mandatoryV</docanchor>
      <docanchor file="SCOREP__MetricPlugins_8h" title="Optional functions">optionalF</docanchor>
      <docanchor file="SCOREP__MetricPlugins_8h" title="Optional variables">optionalV</docanchor>
    </member>
  </compound>
  <compound kind="file">
    <name>SCOREP_MetricTypes.h</name>
    <path>/home/roessel/work/scorep/src/tags/REL-2.0.2/include/scorep/</path>
    <filename>SCOREP__MetricTypes_8h</filename>
    <class kind="struct">SCOREP_Metric_Properties</class>
    <class kind="struct">SCOREP_MetricTimeValuePair</class>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricBase</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a44a476f4e1ff9d8f010b2cad01fad08b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_BASE_BINARY</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a44a476f4e1ff9d8f010b2cad01fad08ba80effb7642d619f1ebe5a03553004a72</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_BASE_DECIMAL</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a44a476f4e1ff9d8f010b2cad01fad08ba60c93a26cb5239ffe9b4192b038f22b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_INVALID_METRIC_BASE</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a44a476f4e1ff9d8f010b2cad01fad08ba2f56c515a03590389aacc4a8abaaa2bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricMode</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_ACCUMULATED_START</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1a1523880fac41eb5f214655e551e8331c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_ACCUMULATED_POINT</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1a53d324f5a73bcdbe0b56f0305ee6f72d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_ACCUMULATED_LAST</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1a155ba618cb2500d06962a4bd2977cca5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_ACCUMULATED_NEXT</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1aad196b4e1290ca2118da88a277732ee5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_ABSOLUTE_POINT</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1ab57b46315b7ae9d9da213f1bb0892530</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_ABSOLUTE_LAST</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1a87945633571d47847896b0b8e4f520d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_ABSOLUTE_NEXT</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1abe02d7ca978b2b6b2e68abef950296de</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_RELATIVE_POINT</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1a795e4bac81ba322b81c897899b7e7c29</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_RELATIVE_LAST</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1a11f9de353156ce841d9d965f60e0e63b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_MODE_RELATIVE_NEXT</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a27443ff10acf8b8aa54688ba3b4407c1aa2d6f44cbcb14de64aa82452ca62d5a1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricPer</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>abfae3f6ae1b708da035525116e338245</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PER_THREAD</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>abfae3f6ae1b708da035525116e338245a4a79d82b45c7a256756e9d6dde0e51c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PER_PROCESS</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>abfae3f6ae1b708da035525116e338245ade5c4a019b657b981905237519e02fde</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PER_HOST</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>abfae3f6ae1b708da035525116e338245a118a012081c7f1908c92410953bec33a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_ONCE</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>abfae3f6ae1b708da035525116e338245ae4adc2bc72f27846350e75967a9dfac4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricProfilingType</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a5c0180d27e7a7861b2a8b24ced498ab6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PROFILING_TYPE_EXCLUSIVE</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a5c0180d27e7a7861b2a8b24ced498ab6a6ff7d5353f60547d01eb0140729dae32</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PROFILING_TYPE_INCLUSIVE</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a5c0180d27e7a7861b2a8b24ced498ab6af1d335becd3735b0986eddf8ed3741a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PROFILING_TYPE_SIMPLE</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a5c0180d27e7a7861b2a8b24ced498ab6ac0a2e32fa635ae077314d666efc1d77a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PROFILING_TYPE_MAX</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a5c0180d27e7a7861b2a8b24ced498ab6aba21587d84682c92f7249cb0460d4635</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_PROFILING_TYPE_MIN</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a5c0180d27e7a7861b2a8b24ced498ab6a9ba2a456fcd1080a011b577f1dca4162</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricSourceType</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SOURCE_TYPE_PAPI</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4a2fa4b248da0f479a28eb04c8bbda6ac8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SOURCE_TYPE_RUSAGE</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4aab2a4e9e7592aea4ec361e5cc1bc0c9d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SOURCE_TYPE_USER</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4a8f070d2bc3c58c50173108a81f4d1a7b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SOURCE_TYPE_OTHER</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4acf8d21a2eba969d661813d8a7ff3c28a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SOURCE_TYPE_TASK</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4a2929e2e50528ebd619e94515a788edbe</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SOURCE_TYPE_PLUGIN</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4ab6c5192ea65ba9b5e75f6490c7d8e57a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SOURCE_TYPE_PERF</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a9819288f6647ff03ba1589a5853a05c4ab4e113900ff974dac0b6d2549acff9bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricSynchronicity</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ad198cb9c6534dacbcde6f042eace2341</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_STRICTLY_SYNC</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ad198cb9c6534dacbcde6f042eace2341ac4acad57bd5b2a240a15541222ac9d59</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SYNC</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ad198cb9c6534dacbcde6f042eace2341aa5bf272316d91eaafe1664733da364ba</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_ASYNC_EVENT</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ad198cb9c6534dacbcde6f042eace2341ace115a7497931915d75d8afc71f52270</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_ASYNC</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ad198cb9c6534dacbcde6f042eace2341acb9358355339d8cbb1c0c8ab2dc56479</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricSynchronizationMode</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ab58c0207741a7f569fa79a2fe51cfb07</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SYNCHRONIZATION_MODE_BEGIN</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ab58c0207741a7f569fa79a2fe51cfb07a7cebcddcf52a7e18fcdb8bf6d1f59702</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SYNCHRONIZATION_MODE_BEGIN_MPP</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ab58c0207741a7f569fa79a2fe51cfb07aff352f9029057fe4f7682aa13837ba44</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_SYNCHRONIZATION_MODE_END</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>ab58c0207741a7f569fa79a2fe51cfb07ade4688e8160b1a49246b7037e8283112</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>SCOREP_MetricValueType</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a50126f1b0189d8b91d0dd07cdc02bbda</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_VALUE_INT64</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a50126f1b0189d8b91d0dd07cdc02bbdaa6e85992a0b697c98bafd0d45b5e80d9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_VALUE_UINT64</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a50126f1b0189d8b91d0dd07cdc02bbdaabf99f2109aef94657fe3c9eedec1ed95</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SCOREP_METRIC_VALUE_DOUBLE</name>
      <anchorfile>SCOREP__MetricTypes_8h.html</anchorfile>
      <anchor>a50126f1b0189d8b91d0dd07cdc02bbdaa6bf160fff786c637c3c1e9778eee8fb0</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>SCOREP_User.h</name>
    <path>/home/roessel/work/scorep/src/tags/REL-2.0.2/include/scorep/</path>
    <filename>SCOREP__User_8h</filename>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga23e865fc48814d8f1a73f2138a69c749</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_OA_PHASE_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga29ac37ade6a925fb766470223a34eb61</anchor>
      <arglist>(handle, name, type )</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_OA_PHASE_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gadc3d51e99a65b4094ce8d14be406c713</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8fff2e6053e2a36a4c3421e8114a912e</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_ENTER</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8c8f772145f95dce57dcf86b6998365c</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaab4b3ccc2b169320c1d3bf7fe19165f9</anchor>
      <arglist>(handle, name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_INIT</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gad481ce21b169390edb4cf6d206359672</anchor>
      <arglist>(handle, name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga36bc4808f2cbdfd75f9a05d2124698d1</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga6cd32d0be80a23887723f728a6a9d0eb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaf86321e31c824a10c9907e9961052f88</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_GLOBAL_REGION_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga7019f070cfc0ff854e701a9aeb9e8988</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_GLOBAL_REGION_EXTERNAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaf0c9dfaad79f9844fe0cb2464763bb65</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gad4d135ed8a7f81100125658cd402d78e</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga08175aaf74cc890748fdd8d858e7f993</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_STRING</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga4cf20238efa2cfa9098c52d71921430a</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_LOCAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga5ff73525b7503a91cebfadabd347af50</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_GLOBAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8aec5246b3ffd6d5ed8cd33fef73932f</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_EXTERNAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga1f457747020689dd37f02977132805e4</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_INIT</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaabf4d21272e8abbfab5db78a1f932687</anchor>
      <arglist>(metricHandle, name, unit, type, context)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gac4808a743c67e6f1284dce290695ecff</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gae56cb2e66065f563f0b7ab030c17c538</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_DOUBLE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga31e598aa18b69054fcdfb28e0032fad0</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga20640122ace776d083a163fd86fb46f9</anchor>
      <arglist>(name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_ON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga4a74d67519387ca834adbd6661afa818</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_OFF</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gafa31b2ab267a4997f7b62bcc38ed5ac9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_IS_ON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaa477c37a05e90ed79d1d7ae9c1b9a691</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga23e865fc48814d8f1a73f2138a69c749</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_OA_PHASE_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga29ac37ade6a925fb766470223a34eb61</anchor>
      <arglist>(handle, name, type )</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_OA_PHASE_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gadc3d51e99a65b4094ce8d14be406c713</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8fff2e6053e2a36a4c3421e8114a912e</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_ENTER</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8c8f772145f95dce57dcf86b6998365c</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaab4b3ccc2b169320c1d3bf7fe19165f9</anchor>
      <arglist>(handle, name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_INIT</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gad481ce21b169390edb4cf6d206359672</anchor>
      <arglist>(handle, name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga36bc4808f2cbdfd75f9a05d2124698d1</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga6cd32d0be80a23887723f728a6a9d0eb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaf86321e31c824a10c9907e9961052f88</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_GLOBAL_REGION_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga7019f070cfc0ff854e701a9aeb9e8988</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_GLOBAL_REGION_EXTERNAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaf0c9dfaad79f9844fe0cb2464763bb65</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gad4d135ed8a7f81100125658cd402d78e</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga08175aaf74cc890748fdd8d858e7f993</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_STRING</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga4cf20238efa2cfa9098c52d71921430a</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_LOCAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga5ff73525b7503a91cebfadabd347af50</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_GLOBAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8aec5246b3ffd6d5ed8cd33fef73932f</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_EXTERNAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga1f457747020689dd37f02977132805e4</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_INIT</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaabf4d21272e8abbfab5db78a1f932687</anchor>
      <arglist>(metricHandle, name, unit, type, context)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gac4808a743c67e6f1284dce290695ecff</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gae56cb2e66065f563f0b7ab030c17c538</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_DOUBLE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga31e598aa18b69054fcdfb28e0032fad0</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga20640122ace776d083a163fd86fb46f9</anchor>
      <arglist>(name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_ON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga4a74d67519387ca834adbd6661afa818</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_OFF</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gafa31b2ab267a4997f7b62bcc38ed5ac9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_IS_ON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaa477c37a05e90ed79d1d7ae9c1b9a691</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>SCOREP_User_Types.h</name>
    <path>/home/roessel/work/scorep/src/tags/REL-2.0.2/include/scorep/</path>
    <filename>SCOREP__User__Types_8h</filename>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_INVALID_PARAMETER</name>
      <anchorfile>SCOREP__User__Types_8h.html</anchorfile>
      <anchor>a8255dceb835519d1a95b5812d99be9c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_INVALID_REGION</name>
      <anchorfile>SCOREP__User__Types_8h.html</anchorfile>
      <anchor>a46062b8aeffded08e6eb63d9d70d734b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_COMMON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga96dcf81f3fa148d0fc2a3858a1e182d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_FUNCTION</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gae52916626f11ce0adb0b952c99f7c4b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_LOOP</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gacdf69e2b56c75e550dec7207c6aa2243</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_DYNAMIC</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga21f6417ac8c1c15291bcf0e78331c988</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_PHASE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8697e0979e050043887e238c33df83f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gacfaf06b575d4862f1b5324a075ea335b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga6eab5108fecda6f8d231158609285913</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_DOUBLE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga22239a02a57f190daf85a04fb2e790c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_CONTEXT_GLOBAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga198befe14fea1cd37c30293dfd41c0c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_CONTEXT_CALLPATH</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga0870aa787dc35f57815c33537efe02cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint32_t</type>
      <name>SCOREP_User_MetricType</name>
      <anchorfile>SCOREP__User__Types_8h.html</anchorfile>
      <anchor>a256f8f899fe697e970f6b785c17c7914</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint64_t</type>
      <name>SCOREP_User_ParameterHandle</name>
      <anchorfile>SCOREP__User__Types_8h.html</anchorfile>
      <anchor>aa00c20701de660fba257bdf3128b41cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>struct SCOREP_User_Region *</type>
      <name>SCOREP_User_RegionHandle</name>
      <anchorfile>SCOREP__User__Types_8h.html</anchorfile>
      <anchor>a5456c4b230a64442e9280f47e2dac962</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>uint32_t</type>
      <name>SCOREP_User_RegionType</name>
      <anchorfile>SCOREP__User__Types_8h.html</anchorfile>
      <anchor>aeebec87dcfc82b990cb2164f36dd4f72</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_COMMON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga96dcf81f3fa148d0fc2a3858a1e182d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_FUNCTION</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gae52916626f11ce0adb0b952c99f7c4b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_LOOP</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gacdf69e2b56c75e550dec7207c6aa2243</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_DYNAMIC</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga21f6417ac8c1c15291bcf0e78331c988</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_PHASE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8697e0979e050043887e238c33df83f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gacfaf06b575d4862f1b5324a075ea335b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga6eab5108fecda6f8d231158609285913</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_DOUBLE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga22239a02a57f190daf85a04fb2e790c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_CONTEXT_GLOBAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga198befe14fea1cd37c30293dfd41c0c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_CONTEXT_CALLPATH</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga0870aa787dc35f57815c33537efe02cd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>SCOREP_Metric_Plugin_Info</name>
    <filename>structSCOREP__Metric__Plugin__Info.html</filename>
    <member kind="variable">
      <type>int32_t(*</type>
      <name>add_counter</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a772e897a7e8113b5c82792d8899f1d4c</anchor>
      <arglist>)(char *metric_name)</arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>delta_t</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a44a2ab20307bb9f44c986772df922c6f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>finalize</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a47c7086fff6e72e3ca197d483aba2502</anchor>
      <arglist>)(void)</arglist>
    </member>
    <member kind="variable">
      <type>uint64_t(*</type>
      <name>get_all_values</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a45a52a4753ab3c601981041552fd9c5e</anchor>
      <arglist>)(int32_t id, SCOREP_MetricTimeValuePair **time_value_list)</arglist>
    </member>
    <member kind="variable">
      <type>uint64_t(*</type>
      <name>get_current_value</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>aeb1db6b96675dac81bfbb6effa81366f</anchor>
      <arglist>)(int32_t id)</arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_Metric_Plugin_MetricProperties *(*</type>
      <name>get_event_info</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a087f24f475a628a1ac92b35824393fe8</anchor>
      <arglist>)(char *token)</arglist>
    </member>
    <member kind="variable">
      <type>bool(*</type>
      <name>get_optional_value</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a9040874b7af59b330559472623c3a428</anchor>
      <arglist>)(int32_t id, uint64_t *value)</arglist>
    </member>
    <member kind="variable">
      <type>int32_t(*</type>
      <name>initialize</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>aeeaad74fc73eab3cba16e49c2476ee5a</anchor>
      <arglist>)(void)</arglist>
    </member>
    <member kind="variable">
      <type>uint32_t</type>
      <name>plugin_version</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a4f17bc4134f44442e43623bc7e587266</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>reserved</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>af0cfb67a7b18826065a11700dd0d230d</anchor>
      <arglist>[92]</arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricPer</type>
      <name>run_per</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>ad0f4d332ca0a1122dfa7ab3d6e1b94c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>set_clock_function</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>ac9ad0f2a8f6d1e1e987ed43d3db5f9a6</anchor>
      <arglist>)(uint64_t(*clock_time)(void))</arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricSynchronicity</type>
      <name>sync</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>ae0ce349e670408edd2d6b827eb651d98</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>void(*</type>
      <name>synchronize</name>
      <anchorfile>structSCOREP__Metric__Plugin__Info.html</anchorfile>
      <anchor>a3e7baaaacd022944211dcfe716c9395a</anchor>
      <arglist>)(bool is_responsible, SCOREP_MetricSynchronizationMode sync_mode)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>SCOREP_Metric_Plugin_MetricProperties</name>
    <filename>structSCOREP__Metric__Plugin__MetricProperties.html</filename>
    <member kind="variable">
      <type>SCOREP_MetricBase</type>
      <name>base</name>
      <anchorfile>structSCOREP__Metric__Plugin__MetricProperties.html</anchorfile>
      <anchor>a946859e0e1fa6bca9e42f8eee3e8022f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>description</name>
      <anchorfile>structSCOREP__Metric__Plugin__MetricProperties.html</anchorfile>
      <anchor>a9b1e96a0ae6c5a6d45da057ce2cbde3e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int64_t</type>
      <name>exponent</name>
      <anchorfile>structSCOREP__Metric__Plugin__MetricProperties.html</anchorfile>
      <anchor>a071dd5a962fc15fc0e3fa2eb6e97bbec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricMode</type>
      <name>mode</name>
      <anchorfile>structSCOREP__Metric__Plugin__MetricProperties.html</anchorfile>
      <anchor>a5a9e17152a991a44a3e074119bb7f07c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>name</name>
      <anchorfile>structSCOREP__Metric__Plugin__MetricProperties.html</anchorfile>
      <anchor>ace618c2d2a50f423b963e5615ed6c502</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>char *</type>
      <name>unit</name>
      <anchorfile>structSCOREP__Metric__Plugin__MetricProperties.html</anchorfile>
      <anchor>ab2f211fce95a8b3ad2fa5781cdc44458</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricValueType</type>
      <name>value_type</name>
      <anchorfile>structSCOREP__Metric__Plugin__MetricProperties.html</anchorfile>
      <anchor>a8461d69ecfd5ba60ccecd0da2921090c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>SCOREP_Metric_Properties</name>
    <filename>structSCOREP__Metric__Properties.html</filename>
    <member kind="variable">
      <type>SCOREP_MetricBase</type>
      <name>base</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>ad536799cc8bed9c092d6381d45c9a0dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>description</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>adf3a2f5393a286e208a400d464cbec8e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int64_t</type>
      <name>exponent</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>a1f9cbbd369dc26e41146af09d7bc9238</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricMode</type>
      <name>mode</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>a84d31ac6a1ece2881b223584b8fc0b4c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>name</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>a2b2b1c12e1ed5db0cdd2cb39ddd5a103</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricProfilingType</type>
      <name>profiling_type</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>af4ce9e42e171a4d80802e6f03659c14b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricSourceType</type>
      <name>source_type</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>aed9d787efc1e2e2ab54c75b67bbbf966</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const char *</type>
      <name>unit</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>a51e41e457b2ea4746467fd6eb42c19f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>SCOREP_MetricValueType</type>
      <name>value_type</name>
      <anchorfile>structSCOREP__Metric__Properties.html</anchorfile>
      <anchor>a42951d8da790a1511c3daa25c1f4c1eb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>SCOREP_MetricTimeValuePair</name>
    <filename>structSCOREP__MetricTimeValuePair.html</filename>
    <member kind="variable">
      <type>uint64_t</type>
      <name>timestamp</name>
      <anchorfile>structSCOREP__MetricTimeValuePair.html</anchorfile>
      <anchor>aaaf11b68a483378fe20e163f789a543a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>uint64_t</type>
      <name>value</name>
      <anchorfile>structSCOREP__MetricTimeValuePair.html</anchorfile>
      <anchor>abb30a90bd4d2ed6bd6e3db924fe73ab6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>SCOREP_User</name>
    <title>Score-P User Adapter</title>
    <filename>group__SCOREP__User.html</filename>
    <file>SCOREP_User.h</file>
    <file>SCOREP_User_Types.h</file>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_OA_PHASE_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga29ac37ade6a925fb766470223a34eb61</anchor>
      <arglist>(handle, name, type )</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_OA_PHASE_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gadc3d51e99a65b4094ce8d14be406c713</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaab4b3ccc2b169320c1d3bf7fe19165f9</anchor>
      <arglist>(handle, name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_INIT</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gad481ce21b169390edb4cf6d206359672</anchor>
      <arglist>(handle, name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga36bc4808f2cbdfd75f9a05d2124698d1</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_ENTER</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8c8f772145f95dce57dcf86b6998365c</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8fff2e6053e2a36a4c3421e8114a912e</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga23e865fc48814d8f1a73f2138a69c749</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_BEGIN</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga6cd32d0be80a23887723f728a6a9d0eb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_FUNC_END</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaf86321e31c824a10c9907e9961052f88</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_GLOBAL_REGION_DEFINE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga7019f070cfc0ff854e701a9aeb9e8988</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_GLOBAL_REGION_EXTERNAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaf0c9dfaad79f9844fe0cb2464763bb65</anchor>
      <arglist>(handle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gad4d135ed8a7f81100125658cd402d78e</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga08175aaf74cc890748fdd8d858e7f993</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_PARAMETER_STRING</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga4cf20238efa2cfa9098c52d71921430a</anchor>
      <arglist>(name, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_LOCAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga5ff73525b7503a91cebfadabd347af50</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_GLOBAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8aec5246b3ffd6d5ed8cd33fef73932f</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_EXTERNAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga1f457747020689dd37f02977132805e4</anchor>
      <arglist>(metricHandle)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_INIT</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaabf4d21272e8abbfab5db78a1f932687</anchor>
      <arglist>(metricHandle, name, unit, type, context)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gac4808a743c67e6f1284dce290695ecff</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gae56cb2e66065f563f0b7ab030c17c538</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_DOUBLE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga31e598aa18b69054fcdfb28e0032fad0</anchor>
      <arglist>(metricHandle, value)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga20640122ace776d083a163fd86fb46f9</anchor>
      <arglist>(name, type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_ON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga4a74d67519387ca834adbd6661afa818</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_OFF</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gafa31b2ab267a4997f7b62bcc38ed5ac9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_RECORDING_IS_ON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gaa477c37a05e90ed79d1d7ae9c1b9a691</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_COMMON</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga96dcf81f3fa148d0fc2a3858a1e182d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_FUNCTION</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gae52916626f11ce0adb0b952c99f7c4b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_LOOP</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gacdf69e2b56c75e550dec7207c6aa2243</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_DYNAMIC</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga21f6417ac8c1c15291bcf0e78331c988</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_REGION_TYPE_PHASE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga8697e0979e050043887e238c33df83f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_INT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>gacfaf06b575d4862f1b5324a075ea335b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_UINT64</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga6eab5108fecda6f8d231158609285913</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_TYPE_DOUBLE</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga22239a02a57f190daf85a04fb2e790c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_CONTEXT_GLOBAL</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga198befe14fea1cd37c30293dfd41c0c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>SCOREP_USER_METRIC_CONTEXT_CALLPATH</name>
      <anchorfile>group__SCOREP__User.html</anchorfile>
      <anchor>ga0870aa787dc35f57815c33537efe02cd</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>quickstart</name>
    <title>Getting Started</title>
    <filename>quickstart</filename>
    <docanchor file="/home/roessel/work/scorep/src/tags/REL-2.0.2/doc/doxygen-user/02_quickstart.dox" title="Score-P Quick Installation">quickinstallation</docanchor>
    <docanchor file="quickstart" title="Prerequisites">prerequisites</docanchor>
    <docanchor file="quickstart" title="General Autotools Build Options">general_autotools</docanchor>
    <docanchor file="quickstart" title="Score-P Specific Build Options">scorep_specific</docanchor>
    <docanchor file="quickstart" title="Instrumentation">quick_instrumentation</docanchor>
    <docanchor file="quickstart" title="Measurement and Analysis">quick_measurement</docanchor>
    <docanchor file="quickstart" title="Report Examination">quick_examination</docanchor>
    <docanchor file="quickstart" title="Simple Example">quick_example</docanchor>
  </compound>
  <compound kind="page">
    <name>instrumentation</name>
    <title>Application Instrumentation</title>
    <filename>instrumentation</filename>
    <docanchor file="instrumentation" title="Automatic Compiler Instrumentation">compiler_instrumentation</docanchor>
    <docanchor file="instrumentation" title="Manual Region Instrumentation">manual_instrumentation</docanchor>
    <docanchor file="instrumentation" title="Instrumentation for Parameter-Based Profiling">parameter_instrumentation</docanchor>
    <docanchor file="instrumentation" title="Measurement Control Instrumentation">control_instrumentation</docanchor>
    <docanchor file="instrumentation" title="Source-Code Instrumentation Enabling Online Access">online_access</docanchor>
    <docanchor file="instrumentation" title="Semi-Automatic Instrumentation of POMP2 User Regions">pomp_instrumentation</docanchor>
    <docanchor file="instrumentation" title="Preprocessing before POMP2 and OpenMP instrumentation">opari2_preprocessing</docanchor>
    <docanchor file="instrumentation" title="Source-Code Instrumentation Using PDT">tau_instrumentation</docanchor>
    <docanchor file="instrumentation" title="Limitations">tau_inst_limitations</docanchor>
    <docanchor file="instrumentation" title="Enforce Linking of Static/Shared Score-P Libraries">scorep_link_mode</docanchor>
  </compound>
  <compound kind="page">
    <name>sampling</name>
    <title>Application Sampling</title>
    <filename>sampling</filename>
    <docanchor file="sampling" title="Introduction">sampling_introduction</docanchor>
    <docanchor file="sampling" title="Prerequisites">sampling_prerequisites</docanchor>
    <docanchor file="sampling" title="Configure Options">sampling_configure_options</docanchor>
    <docanchor file="sampling" title="libunwind">sampling_configure_options_libunwind</docanchor>
    <docanchor file="sampling" title="Sampling Related Score-P Measurement Configuration Variables">sampling_confvars</docanchor>
    <docanchor file="sampling" title="Use Cases">sampling_use_cases</docanchor>
    <docanchor file="sampling" title="Enable unwinding in instrumented programs">sampling_use_cases_unwind_instrumented_app</docanchor>
    <docanchor file="sampling" title="Instrument a hybrid parallel program and enable sampling">sampling_use_cases_instrumented_hybrid_app</docanchor>
    <docanchor file="sampling" title="Test Environment">sampling_test_environment</docanchor>
    <docanchor file="sampling" title="Instrument NAS BT-MZ code">sampling_test_environment__instrument</docanchor>
    <docanchor file="sampling" title="Run instrumented binary">sampling_test_environment_run_instrumented</docanchor>
  </compound>
  <compound kind="page">
    <name>measurement</name>
    <title>Application Measurement</title>
    <filename>measurement</filename>
    <docanchor file="/home/roessel/work/scorep/src/tags/REL-2.0.2/doc/doxygen-user/05_measurement.dox" title="Profiling">profiling</docanchor>
    <docanchor file="measurement" title="Parameter-Based Profiling">parameter_profiling</docanchor>
    <docanchor file="measurement" title="Phase Profiling">phase_profiling</docanchor>
    <docanchor file="measurement" title="Dynamic Region Profiling">dynamic_profiling</docanchor>
    <docanchor file="measurement" title="Clustering">clustering</docanchor>
    <docanchor file="measurement" title="Enabling additional debug output on inconsistent profiles">profile_debug_output</docanchor>
    <docanchor file="measurement" title="Tracing">tracing</docanchor>
    <docanchor file="measurement" title="Filtering">filtering</docanchor>
    <docanchor file="measurement" title="Source File Name Filter Block">source_filtering</docanchor>
    <docanchor file="measurement" title="Region Name Filter Block">region_filtering</docanchor>
    <docanchor file="measurement" title="Selective Recording">selective_recording</docanchor>
    <docanchor file="measurement" title="Trace Buffer Rewind">rewind</docanchor>
    <docanchor file="measurement" title="Selection of MPI Groups">mpi_groups</docanchor>
    <docanchor file="measurement" title="Recording MPI Communicator Names">mpi_comm_name</docanchor>
    <docanchor file="measurement" title="Recording Performance Metrics">perf_counters</docanchor>
    <docanchor file="measurement" title="PAPI Hardware Performance Counters">papi_counters</docanchor>
    <docanchor file="measurement" title="Resource Usage Counters">rusage_counters</docanchor>
    <docanchor file="measurement" title="Recording Linux Perf Metrics">metric_perf</docanchor>
    <docanchor file="measurement" title="Metric Plugins">metric_plugins</docanchor>
    <docanchor file="measurement" title="CUDA Performance Measurement">cuda_adapter</docanchor>
    <docanchor file="measurement" title="OpenCL Performance Measurement">opencl_adapter</docanchor>
    <docanchor file="measurement" title="Online Access Interface">online_access_measurement</docanchor>
  </compound>
  <compound kind="page">
    <name>score</name>
    <title>Usage of scorep-score</title>
    <filename>score</filename>
    <docanchor file="score" title="Basic usage">score_basic_usage</docanchor>
    <docanchor file="score" title="Additional per-region information">score_region_output</docanchor>
    <docanchor file="score" title="Defining and testing a filter">scorep_filter</docanchor>
    <docanchor file="score" title="Calculating the effects of recording hardware counters">score_metrics</docanchor>
  </compound>
  <compound kind="page">
    <name>workflow</name>
    <title>Performance Analysis Workflow Using Score-P</title>
    <filename>workflow</filename>
    <docanchor file="workflow" title="Program Instrumentation">program_instrumentation</docanchor>
    <docanchor file="/home/roessel/work/scorep/src/tags/REL-2.0.2/doc/doxygen-user/07_example.dox" title="Summary Measurement Collection">summary_measurement</docanchor>
    <docanchor file="workflow" title="Summary report examination">summary_examination</docanchor>
    <docanchor file="workflow" title="Summary experiment scoring">summary_scoring</docanchor>
    <docanchor file="/home/roessel/work/scorep/src/tags/REL-2.0.2/doc/doxygen-user/07_example.dox" title="Advanced summary measurement collection">advanced_summary_collection</docanchor>
    <docanchor file="workflow" title="Advanced summary report examination">advanced_summary_examination</docanchor>
    <docanchor file="workflow" title="Event trace collection and examination">trace_collection_exploration</docanchor>
  </compound>
  <compound kind="page">
    <name>installationfile</name>
    <title>Score-P INSTALL</title>
    <filename>installationfile</filename>
  </compound>
  <compound kind="page">
    <name>wrapperannex</name>
    <title>MPI wrapper affiliation</title>
    <filename>wrapperannex</filename>
    <docanchor file="wrapperannex" title="Function to group">f2g</docanchor>
    <docanchor file="wrapperannex" title="Group to function">g2f</docanchor>
  </compound>
  <compound kind="page">
    <name>metricpluginexample</name>
    <title>Score-P Metric Plugin Example</title>
    <filename>metricpluginexample</filename>
  </compound>
  <compound kind="page">
    <name>scoreptools</name>
    <title>Score-P Tools</title>
    <filename>scoreptools</filename>
    <docanchor file="scoreptools" title="scorep">scorep-main</docanchor>
    <docanchor file="scoreptools" title="scorep-config">scorep-config</docanchor>
    <docanchor file="scoreptools" title="scorep-info">scorep-info</docanchor>
    <docanchor file="scoreptools" title="scorep-score">scorep-score-tool</docanchor>
    <docanchor file="scoreptools" title="scorep-backend-info">scorep-backend-info</docanchor>
  </compound>
  <compound kind="page">
    <name>scorepmeasurementconfig</name>
    <title>Score-P Measurement Configuration</title>
    <filename>scorepmeasurementconfig</filename>
    <docanchor file="scorepmeasurementconfig">SCOREP_ENABLE_PROFILING</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_ENABLE_TRACING</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_ENABLE_UNWINDING</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_VERBOSE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_TOTAL_MEMORY</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PAGE_SIZE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_EXPERIMENT_DIRECTORY</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_OVERWRITE_EXPERIMENT_DIRECTORY</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MACHINE_NAME</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_TIMER</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_EXECUTABLE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_NM_SYMBOLS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_TASK_EXCHANGE_NUM</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_MAX_CALLPATH_DEPTH</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_BASE_NAME</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_FORMAT</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_ENABLE_CLUSTERING</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_CLUSTER_COUNT</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_CLUSTERING_MODE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_CLUSTERED_REGION</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_PROFILING_ENABLE_CORE_FILES</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_TRACING_USE_SION</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_TRACING_MAX_PROCS_PER_SION_FILE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_TRACING_COMPRESS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_TRACING_CONVERT_CALLING_CONTEXT_EVENTS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_ONLINEACCESS_ENABLE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_ONLINEACCESS_REG_PORT</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_ONLINEACCESS_REG_HOST</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_ONLINEACCESS_BASE_PORT</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_ONLINEACCESS_APPL_NAME</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_FILTERING_FILE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PAPI</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PAPI_PER_PROCESS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PAPI_SEP</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_RUSAGE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_RUSAGE_PER_PROCESS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_RUSAGE_SEP</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PLUGINS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PLUGINS_SEP</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PERF</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PERF_PER_PROCESS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_METRIC_PERF_SEP</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_SAMPLING_EVENTS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_SAMPLING_SEP</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_SELECTIVE_CONFIG_FILE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MPI_MAX_COMMUNICATORS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MPI_MAX_WINDOWS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MPI_MAX_ACCESS_EPOCHS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MPI_MAX_GROUPS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MPI_ENABLE_GROUPS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MPI_MEMORY_RECORDING</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MPI_ONLINE_ANALYSIS</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_SHMEM_MEMORY_RECORDING</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_CUDA_ENABLE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_CUDA_BUFFER</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_CUDA_BUFFER_CHUNK</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_OPENCL_ENABLE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_OPENCL_BUFFER_QUEUE</docanchor>
    <docanchor file="scorepmeasurementconfig">SCOREP_MEMORY_RECORDING</docanchor>
  </compound>
  <compound kind="page">
    <name>scorepwrapper</name>
    <title>Score-P wrapper usage</title>
    <filename>scorepwrapper</filename>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>Introduction</title>
    <filename>index</filename>
    <docanchor file="index" title="About this Document">about_doc</docanchor>
    <docanchor file="/home/roessel/work/scorep/src/tags/REL-2.0.2/doc/doxygen-user/01_introduction.dox" title="Getting Help and Support">getting_help</docanchor>
    <docanchor file="index" title="Basics of Performance Optimization">basic_idea</docanchor>
    <docanchor file="index" title="Score-P Software Architecture Overview">overview</docanchor>
    <docanchor file="index" title="Acknowledgment">acknowledgment</docanchor>
  </compound>
</tagfile>
