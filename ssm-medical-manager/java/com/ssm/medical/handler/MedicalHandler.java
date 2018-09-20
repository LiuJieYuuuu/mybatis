package com.ssm.medical.handler;

import com.ssm.medical.pojo.MedClassify;
import com.ssm.medical.service.MClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/")
public class MedicalHandler {
    @Autowired
    private MClassifyService mClassifyServiceimpl;

    @RequestMapping("medical/MedClassify")
    public ModelAndView getMedClassifys(){
        ModelAndView mv=new ModelAndView("baseData/category_list");
        List<MedClassify> list=mClassifyServiceimpl.getM_classifys();
        mv.addObject("list",list);
        return mv;
    }

    @RequestMapping("medical/mclassifyadd")
    public String addMedClassify(@RequestParam("mcname")String mcname,@RequestParam("mcdes")String mcdes){
        MedClassify mc=new MedClassify();
        mc.setMcname(mcname);
        mc.setMcdes(mcdes);
        mClassifyServiceimpl.addM_classify(mc);
        return "redirect:/medical/MedClassify";
    }

    @RequestMapping("medical/deletemClassify")
    public String deletemClassify(@RequestParam("mcid")Integer mcid){
        mClassifyServiceimpl.deletemClassify(mcid);
        return "redirect:/medical/MedClassify";
    }

    @RequestMapping("medical/updatemClassify")
    public ModelAndView updatemClassifybefore(@RequestParam("mcid")Integer mcid){
        ModelAndView mv=new ModelAndView("baseData/category_update");
        MedClassify medClassify=mClassifyServiceimpl.getmClassify(mcid);
        mv.addObject("mc",medClassify);
        return mv;
    }

    @RequestMapping("medical/mclassifyUpdate")
    public String updatemClassifyafter(MedClassify medClassify){
        mClassifyServiceimpl.updatemClassify(medClassify);
        return "redirect:/medical/MedClassify";
    }
}
