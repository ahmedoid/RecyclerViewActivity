<?xml version="1.0" encoding="utf-8"?>
<#if textOnly>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
                xmlns:tools="http://schemas.android.com/tools"
                android:layout_width="match_parent"
                android:layout_height="88dp"
                android:paddingBottom="8dp"
                android:paddingEnd="16dp"
                android:paddingStart="16dp"
                android:paddingTop="8dp">


<android.support.v7.widget.AppCompatTextView
        android:id="@+id/title"
        style="@style/Base.TextAppearance.AppCompat.Subhead"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:gravity="center_vertical"
        tools:text="Test Test"/>

<android.support.v7.widget.AppCompatTextView
        android:id="@+id/subtitle"
        style="@style/Base.TextAppearance.AppCompat.Caption"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:layout_below="@id/title"
        tools:text="Test Test \n test test \n test test"/>
</RelativeLayout>
<#elseif IconText>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
                xmlns:app="http://schemas.android.com/apk/res-auto"
                xmlns:tools="http://schemas.android.com/tools"
                android:layout_width="match_parent"
                android:layout_height="56dp"
                android:orientation="horizontal"
                android:paddingBottom="8dp"
                android:paddingEnd="16dp"
                android:paddingStart="16dp"
                android:paddingTop="8dp">

<android.support.v7.widget.AppCompatImageView
        android:layout_width="24dp"
        android:layout_height="24dp"
        android:layout_centerVertical="true"
        tools:src="@drawable/ic_person_black_24dp"/>

<android.support.v7.widget.AppCompatTextView
        android:id="@+id/title"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:gravity="center_vertical"
        android:paddingStart="56dp"
        android:textSize="16sp"
        tools:text="Test Test"/>
</RelativeLayout>
<#elseif AvatarText || AvatarWithTextAndIcon>
<RelativeLayout
                xmlns:android="http://schemas.android.com/apk/res/android"
                xmlns:tools="http://schemas.android.com/tools"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:minHeight="72dp">

<ImageView
        android:id="@+id/avatar_imageview"
        android:layout_width="40dp"
        android:layout_height="40dp"
        android:layout_alignParentLeft="true"
        android:layout_centerVertical="true"
        android:layout_marginLeft="16dp"
        android:layout_marginTop="16dp"
        android:contentDescription="@string/app_name"
        android:src="@mipmap/ic_launcher_round" />

<LinearLayout
        android:id="@+id/textview_container"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_alignWithParentIfMissing="true"
        android:layout_centerVertical="true"
        android:layout_marginLeft="16dp"
        android:layout_marginRight="16dp"
        android:layout_toLeftOf="@+id/icon_imageview"
        android:layout_toRightOf="@+id/avatar_imageview"
        android:orientation="vertical"
        android:paddingBottom="16dp"
        android:paddingTop="16dp">

    <TextView
            android:id="@+id/title_textview"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textAppearance="@style/TextAppearance.AppCompat.Body2"
            tools:text="Ahmed" />

    <TextView
            android:id="@+id/subtitle_textview"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textAppearance="@style/TextAppearance.AppCompat.Body1"
            tools:text="www.a7med.name" />

</LinearLayout>
<#if AvatarWithTextAndIcon>
<ImageView
        android:id="@+id/icon_imageview"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_alignParentRight="true"
        android:layout_centerVertical="true"
        android:layout_marginRight="16dp"
        android:layout_marginTop="16dp"
        android:contentDescription="@string/app_name"
        android:src="@drawable/ic_person_black_24dp" />
</#if>
</RelativeLayout>
        </#if>