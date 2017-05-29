package ${packageName};

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import java.util.List;
public class ${adapterClass} extends RecyclerView.Adapter<${adapterClass}.${adapterClass}Holder> {

    private List<Object> objectList;

    public class ${adapterClass}Holder extends RecyclerView.ViewHolder {
        //public TextView ??;

        public ${adapterClass}Holder(View view) {
            super(view);
            //?? = (TextView) view.findViewById(R.id.??);

        }
    }


    public ${adapterClass}(List<Object> objectList) {
        this.objectList = objectList;
    }

    @Override
    public ${adapterClass}Holder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.${itemLayoutName}, parent, false);

        return new ${adapterClass}Holder(itemView);
    }

    @Override
    public void onBindViewHolder(${adapterClass}Holder holder, int position) {
        Object object = objectList.get(position);
        //holder.???.setText(.???());

    }

    @Override
    public int getItemCount() {
        return objectList.size();
    }
}