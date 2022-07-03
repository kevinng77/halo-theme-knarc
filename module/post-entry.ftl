<#list posts.content as post>
    <div class="post-entry post animated fadeInDown">
        <div class="post-title">
            <h3>
                <a href="${post.fullPath!}">${post.title}</a>
            </h3>
        </div>
        <div class="post-mid">
            <div class="meta">
                <div class="info">
                    <svg class="link-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle>
                    <polyline points="12 6 12 12 16 14"></polyline></svg>                    
                    <span class="info-text">${post.createTime?string("yyyy-MM-dd")}</span>
<#--  
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle">
                    <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>                    
                    <a  class="info-item" href="${post.fullPath!}#comment_widget">Comments</a>  -->
                    <#if post.tags?size gt 0>
                        <svg class="link-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-tag"><path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path><line x1="7" y1="7" x2="7.01" y2="7"></line></svg>
                        <#list post.tags as tag>
                            <a class="info-text" href="${tag.fullPath}">${tag.name}</a>
                        </#list>
                    </#if>
                </div>
            </div>
        </div>
        <div class="post-content">
            <div class="p_part">
                <p>${post.summary!}...</p>
            </div>
            <div class="p_part">
                <p></p>
            </div>
        </div>
        <div class="post-entry-footer">
            <div class="meta">
                <div class='more'>
                    <a href="${post.fullPath!}" style="color:#4786d6">阅读全文</a>
                </div>
            </div>
        </div>
    </div>
</#list>
