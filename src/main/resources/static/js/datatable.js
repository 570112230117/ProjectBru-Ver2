$(document).ready(function () {
	var table = $('#employeesTable').DataTable({
		"sAjaxSource": "/all",
		"sAjaxDataProp": "",
		"order": [[0, "asc"]],
		"aoColumns": [
			{ "mData": "repairDateStr" },
			{ "mData": "repairname" },
			{ "mData": "repairWarranty" },
			{ "mData": "repairProduct" },
			{ "mData": "repairWaste" },
			{ "mData": "repairAppointment" },

			{
				"mData": "",
				"mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
					return '<a href=#>' + 'สาเหตุ / วิธีแก้' + '</a>';
				}
			},
			{
				"mData": "",
				"mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
					return '<a href=#>' + 'ผู้รับแจ้ง' + '</a>';
				}
			},{
				"mData": "",
				"mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
					return '<a href=#>' + 'ช่าง A' + '</a>';
				}
			},{
				"mData": "",
				"mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
					return '<a href=#>' + 'สถานะ' + '</a>';
				}
			},
			{
				"mData": "",
				"mRender": function (data, type, full) {//full คือ  ข้อมูลของ ตาราง
//					return '<a onclick="gotorepairmen(repairId)">' + '<span class="glyphicon glyphicon-edit">Edit</span>' + '</a>';
					return '<a href="/repairmen">' + '<span class="glyphicon glyphicon-edit">เพิ่มเติม</span>' + '</a>';
					// return  '<a href="'+url+'">' + url + '</a>';
					//<td><a onclick="gotoRepair(<%=list.get(i).getRepairId()%>)"><span class="glyphicon glyphicon-file">รายละเอียด</span></a></td>
				}
			},
			
		]
	})
});