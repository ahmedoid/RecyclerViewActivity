<?xml version="1.0"?>
<recipe>

    <#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
</#if>

<#if !appCompat && !(hasDependency('com.android.support:support-v4'))>
<dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
        </#if>

<#if !appCompat && !(hasDependency('com.android.support:support-v13'))>
<dependency mavenUrl="com.android.support:support-v13:${buildApi}.+"/>
        </#if>

<#if hasAppBar && !(hasDependency('com.android.support:design'))>
<dependency mavenUrl="com.android.support:design:${buildApi}.+"/>
        </#if>

<#if  !(hasDependency('com.android.support:recyclerview-v7'))>
<dependency mavenUrl="com.android.support:recyclerview-v7:${buildApi}.+"/>
        </#if>

<#include "../common/recipe_manifest.xml.ftl" />

<!--<instantiate from="root/res/menu/main.xml.ftl"-->
             <!--to="${escapeXmlAttribute(resOut)}/menu/${menuName}.xml"/>-->

<merge from="root/res/values/strings.xml.ftl"
       to="${escapeXmlAttribute(resOut)}/values/strings.xml"/>

<merge from="root/res/values/dimens.xml.ftl"
       to="${escapeXmlAttribute(resOut)}/values/dimens.xml"/>


<#if hasAppBar>
<#include "../common/recipe_no_actionbar.xml.ftl" />
        </#if>

        <!-- Decide what kind of layout(s) to add -->
<#if AvatarWithTextAndIcon || IconText>
<copy from="root/res/drawable"
      to="${escapeXmlAttribute(resOut)}/drawable" />
        </#if>
<#if hasAppBar>
<instantiate from="root/res/layout/recyclerview_layout.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
<instantiate from="root/res/layout/item_list.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml"/>
        </#if>


        <!-- Decide which activity code to add -->
<#if textOnly || hasAppBar>
<instantiate from="root/src/app_package/Adapter.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/${adapterClass}.java"/>
<instantiate from="root/src/app_package/RecyclerViewActivity.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/${activityClass}.java"/>
        </#if>

<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java"/>
<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
        </recipe>
