package com.github.app.api.utils;

import com.github.app.api.dao.domain.Popedom;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class PopedomContext {
    private List<Popedom> popedoms = new ArrayList<>();

    private static PopedomContext context;

    public static PopedomContext getInstance() {
        if(context == null)
            context = new PopedomContext();
        return context;
    }

    private PopedomContext() {
    }

    public void addPopedoms(List<Popedom> popedoms) {
        this.popedoms.addAll(popedoms);
    }

    public Popedom match(String uri) {
        for (Popedom popedom : popedoms) {
            if(Pattern.matches(popedom.getCode(), uri)) {
                return popedom;
            }
        }
        return null;
    }
}