<div class="widget">
    <div class="widget-hd">
        <h3>博文编辑</h3>
    </div>
    <div class="widget-bd">
        <div class="admin-post">
            <form action="${Request.contextPath}/blog/post/edit" method="post">
                <div>
                    <label>分类</label>
                    <select name="categoryId">
                        <option value="-1">未分类</option>
                        <#list Request.blogCategories as blogCategory>
                        <option value="${blogCategory.id}">${blogCategory.label}</option>
                        </#list>
                    </select>
                </div>
                <div class="title">
                    <label>标题</label>
                    <input name="title" value="" />
                </div>
                <div class="summary">
                    <label>简介</label>
                    <textarea id="summary" name="summary"></textarea>
                </div>
                <div class="content">
                    <label>内容</label>
                    <textarea id="content" name="content"></textarea>
                </div>
                <div class="submit">
                    <input type="hidden" name="createdById" value="${Session.user.id}" />
                    <input type="hidden" name="projectId" value="${Session.project.id}" />
                    <button type="submit" name="action" value="create">提交</button>
                <div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
$(function(){
    $('#summary').xheditor({skin:'nostyle', tools:'simple'});
    $('#content').xheditor({skin:'nostyle'});
});
</script>