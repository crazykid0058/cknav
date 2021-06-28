package com.ruoyi.project.system.site.controller;


import com.ruoyi.project.system.kind.domain.Kind;
import com.ruoyi.project.system.kind.service.impl.KindServiceImpl;
import com.ruoyi.project.system.site.domain.Site;
import com.ruoyi.project.system.site.service.impl.SiteServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class SiteShowController {

    @Resource
    SiteServiceImpl siteService;

    @Resource
    KindServiceImpl kindService;

    @GetMapping("show")
    public String show(HttpServletRequest httpServletRequest){

        List<Kind> kinds = kindService.selectKindList(null);
        httpServletRequest.setAttribute("kinds",kinds);
        ArrayList<List<Site>> arrayList = new ArrayList<>();

        for (Kind kind:kinds){
            arrayList.add(siteService.selectSiteListByKind(kind.getId()));
        }

        httpServletRequest.setAttribute("sitesList",arrayList);

        return "show";
    }

}
