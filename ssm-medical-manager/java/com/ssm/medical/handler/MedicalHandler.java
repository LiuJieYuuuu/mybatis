package com.ssm.medical.handler;

import com.ssm.medical.pojo.MedClassify;
import com.ssm.medical.pojo.Medical;
import com.ssm.medical.service.MClassifyService;
import com.ssm.medical.service.MedicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/")
public class MedicalHandler {
    @Autowired
    private MClassifyService mClassifyServiceimpl;
    @Autowired
    private MedicalService medicalServiceimpl;

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

    /**
     * 修改药品分类
     * @param mcid
     * @return
     */
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

    /**
     * 添加药品信息
     * @return
     */
    @RequestMapping("medical/addmedical")
    public ModelAndView addMedicalBefore(){
        ModelAndView mv=new ModelAndView("baseData/med_save");
        List<MedClassify> list=mClassifyServiceimpl.getM_classifys();
        mv.addObject("list",list);
        return mv;
    }
    @RequestMapping("medical/addmedicalInfo")
    public String addMedicalInfo(Medical medical, MultipartFile img, HttpSession session){
        medical.setMiimg(img.getOriginalFilename());
        System.out.println(medical);
        medicalServiceimpl.addmedical(medical);
        String path=session.getServletContext().getRealPath("upload/");
        File f=new File(path);
        if(!f.exists())
            f.mkdir();
        File file=new File(path+"/"+img.getOriginalFilename());
        try {
            img.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/medical/MedClassify";
    }
}
