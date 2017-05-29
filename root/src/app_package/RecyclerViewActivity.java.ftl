package ${packageName};

<#if hasAppBar>
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
<#else>  <#-- hasAppBar -->
import ${superClassFqcn};
import android.<#if appCompat>support.v7.</#if>app.ActionBar;
</#if>   <#-- hasAppBar -->import android.os.Bundle;
import android.support.v7.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

public class ${activityClass} extends ${superClass} {
    private List<Object> objectListList = new ArrayList<>();
    private RecyclerView recyclerView;
    private ${adapterClass} objectAdapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
         <#if hasAppBar>
                Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
                setSupportActionBar(toolbar);
            </#if>
        recyclerView = (RecyclerView) findViewById(R.id.recycler_view);

        objectAdapter = new ${adapterClass}(objectListList);
    }
}
