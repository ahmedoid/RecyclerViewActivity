<?xml version="1.0" encoding="utf-8"?>
<android.support.design.widget.CoordinatorLayout xmlns:android="http://schemas.android.com/apk/res/android"
                                                 xmlns:app="http://schemas.android.com/apk/res-auto"
                                                 xmlns:tools="http://schemas.android.com/tools"
                                                 android:id="@+id/main_content"
                                                 android:layout_width="match_parent"
                                                 android:layout_height="match_parent"
                                                 android:fitsSystemWindows="true"
                                                 tools:context="${relativePackage}.${activityClass}">

    <android.support.design.widget.AppBarLayout
            android:id="@+id/appbar"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:paddingTop="@dimen/appbar_padding_top"
            android:theme="@style/${themeNameAppBarOverlay}">

        <android.support.v7.widget.Toolbar
                android:id="@+id/toolbar"
                android:layout_width="match_parent"
                android:layout_height="?attr/actionBarSize"
                android:background="?attr/colorPrimary"
                app:layout_scrollFlags="scroll|enterAlways"
                app:popupTheme="@style/${themeNamePopupOverlay}">

        </android.support.v7.widget.Toolbar>


    </android.support.design.widget.AppBarLayout>

    <android.support.v7.widget.RecyclerView
            android:id="@+id/recycler_view"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:layoutManager="android.support.v7.widget.LinearLayoutManager"
            app:layout_behavior="@string/appbar_scrolling_view_behavior"
            tools:listitem="@layout/${itemLayoutName}" />

</android.support.design.widget.CoordinatorLayout>