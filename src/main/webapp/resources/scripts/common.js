
var common = {
		remind: function(content) {
     		$.confirm({
 				backgroundDismiss: true,
 				title: "提示",
 				"content": content,
 				buttons: {
 					"关闭": function(){},
 				}
 			})
		}
}