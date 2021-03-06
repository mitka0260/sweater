<#import "parts/common.ftl" as c>

<@c.page>
    <div class="form-row mb-3">
        <div class="form-group col-md-6">
            <form method="get" action="main" class="row row-cols-lg-auto g-3 align-items-center">
                <div class="col-12">
                    <div class="input-group">
                        <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag" />
                        <button type="submit" class="btn btn-primary ms-2">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new message
    </a>

    <div class="collapse <#if message??>show</#if>" id="collapseExample">

        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group mb-3">
                    <input type="text" name="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                           value="<#if message??>${message.text}</#if>"
                           placeholder="enter message" autofocus="autofocus" />
                    <#if textError??>
                        <div class="invalid-feedback">
                            ${textError}
                        </div>
                    </#if>
                </div>

                <div class="form-group mb-3">
                    <input type="text" name="tag" value="<#if message??>${message.tag}</#if>" class="form-control" placeholder="tag" />
                    <#if tagError??>
                        <div class="invalid-feedback">
                            ${tagError}
                        </div>
                    </#if>
                </div>

                <div class="form-group">
                    <div class="custom-file mb-3">
                        <input type="file" name="file" id="customFile" />
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>

                <input type="hidden" name="_csrf" value="${_csrf.token}"/>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Add Message</button>
                </div>

            </form>
        </div>
    </div>
    <br /><br />

<#include "parts/messageEdit.ftl" />

<#include "parts/messageList.ftl" />

</@c.page>