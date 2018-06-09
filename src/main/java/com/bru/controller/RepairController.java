package com.bru.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.RepairDao;
import com.bru.model.RepairBean;

@Controller
public class RepairController {

	@Autowired
	RepairDao repairDao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String goHome(Model model) {
		return "repair";
	}

	// insert
	@RequestMapping(value = { "/insertRepair" }, method = RequestMethod.POST, produces = "application/json")
	public Map<String, String> insertRepair(@RequestBody RepairBean repairBean) {
		try {
			repairDao.insert(repairBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String, String> repair = new HashMap<String, String>();
		return repair;
	}

	// table
	@RequestMapping(path = "/table", method = RequestMethod.GET)
	public String goHome() {
		return "table";
	}

	// repairmen
	@RequestMapping(path = "/repairmen", method = RequestMethod.GET)
	public String repairmen() {
		return "repairmen";
	}

	// tabel to repairmen
	@RequestMapping(value = "/gotorepairmen")
	public String gotorepairmen(Model model, String repairId, HttpServletRequest request) {
		try {
			model.addAttribute("repairId", repairId);
			request.getSession().setAttribute("repairId", repairId);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "repairmen";
	}
}
