<?xml version="1.0"?>
<globals>
    <global id="hasFab" type="boolean" value="${(features == 'fab')?string}"/>
    <global id="textOnly" type="boolean" value="${(features == 'TextOnly')?string}"/>
    <global id="IconText" type="boolean" value="${(features == 'IconText')?string}"/>
    <global id="AvatarText" type="boolean" value="${(features == 'AvatarText')?string}"/>
    <global id="AvatarWithTextAndIcon" type="boolean" value="${(features == 'AvatarWithTextAndIcon')?string}"/>
    <global id="viewContainer" type="string"
            value="<#if features == 'spinner'>android.support.v4.widget.NestedScrollView<#else>android.support.v4.view.ViewPager</#if>"/>
    <#include "../common/common_globals.xml.ftl" />
</globals>
