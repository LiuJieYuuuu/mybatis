package com.ssm.medical.dao;

import com.ssm.medical.pojo.MedClassify;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MedicalDao {
    /**
     * 获取所有药品类别
     * @return
     */
    List<MedClassify> getM_classifys();

    /**
     * 添加药品分类
     * @param medClassify
     * @return
     */
    int addM_classify(MedClassify medClassify);

    /**
     * 删除药品分类
     * @param mcid
     * @return
     */
    boolean deletemClassify(@Param("mcid") Integer mcid);

    /**
     * 获取对应ID的药品类别
     * @param mcid
     * @return
     */
    MedClassify getmClassify(@Param("mcid")Integer mcid);

    /**
     * 修改对应的药品类别
     * @param medClassify
     * @return
     */
    boolean updatemClassify(MedClassify medClassify);
}
