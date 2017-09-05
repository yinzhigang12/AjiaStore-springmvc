package com.ajiatech.yzg.pojo;

import java.util.List;

public class GroupParam {
    private String group;
    private List<Params> params;

    public GroupParam() {
    }

    public GroupParam(String group, List<Params> params) {
        super();
        this.group = group;
        this.params = params;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public List<Params> getParams() {
        return params;
    }

    public void setParams(List<Params> params) {
        this.params = params;
    }
}
