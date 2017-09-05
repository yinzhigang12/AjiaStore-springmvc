package com.ajiatech.yzg.pojo;

import java.util.List;

public class Params {
    private String key;
    private String form;
    private List<String> values;

    public Params() {
    }

    public Params(String key, String form, List<String> values) {
        super();
        this.key = key;
        this.form = form;
        this.values = values;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getForm() {
        return form;
    }

    public void setForm(String form) {
        this.form = form;
    }

    public List<String> getValues() {
        return values;
    }

    public void setValues(List<String> values) {
        this.values = values;
    }
}
