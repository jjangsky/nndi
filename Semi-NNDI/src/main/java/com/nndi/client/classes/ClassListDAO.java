package com.nndi.client.classes;

import java.util.List;

import com.nndi.model.commondto.ClassDTO;

public interface ClassListDAO {

	List<ClassDTO> ClassList();

	ClassDTO ClassListDetail(int num);
}
