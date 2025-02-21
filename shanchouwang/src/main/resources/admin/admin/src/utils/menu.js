const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"商品类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryShangpin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"众筹类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZhongchou"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"商品管理",
                        "menuJump":"列表",
                        "tableName":"shangpin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"商品留言管理",
                        "menuJump":"列表",
                        "tableName":"shangpinLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"商品收藏管理",
                        "menuJump":"列表",
                        "tableName":"shangpinCollection"
                    }
                ],
                "menu":"商品管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"用户管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"众筹管理",
                        "menuJump":"列表",
                        "tableName":"zhongchou"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"众筹留言管理",
                        "menuJump":"列表",
                        "tableName":"zhongchouLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"众筹收藏管理",
                        "menuJump":"列表",
                        "tableName":"zhongchouCollection"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"参与的众筹管理",
                        "menuJump":"列表",
                        "tableName":"canyuzhongchou"
                    }
                ],
                "menu":"众筹管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"商品管理",
                        "menuJump":"列表",
                        "tableName":"shangpin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"商品留言管理",
                        "menuJump":"列表",
                        "tableName":"shangpinLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"商品收藏管理",
                        "menuJump":"列表",
                        "tableName":"shangpinCollection"
                    }
                ],
                "menu":"商品管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除"
                        ],
                        "menu":"我发起的众筹",
                        "menuJump":"列表",
                        "tableName":"zhongchou"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"众筹留言管理",
                        "menuJump":"列表",
                        "tableName":"zhongchouLiuyan"
                    }
                    ,{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"参与的众筹项目",
                        "menuJump":"列表",
                        "tableName":"canyuzhongchou"
                    }
                ],
                "menu":"众筹管理"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"用户",
        "tableName":"yonghu"
    }
	
]
    }
}
export default menu;
