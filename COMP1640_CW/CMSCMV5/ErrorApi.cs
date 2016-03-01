using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http.Filters;
using log4net;
using CMSCMV5.Models;
using Newtonsoft.Json;

public class ErrorApi : ExceptionFilterAttribute
{
    private static readonly ILog log = LogManager.GetLogger(typeof(ErrorApi));

    public override void OnException(HttpActionExecutedContext context)
    {

        log.ErrorFormat("[{0}]: {1}", context.Request.RequestUri, context.Exception.Message);
        log.ErrorFormat("[{0}]: {1}", context.Request.RequestUri, context.Exception.StackTrace);
        //base.OnException(context);
        var data = new ReturnData<string>();
        data.success = false;
        data.error = 10;
        context.Response = new HttpResponseMessage(HttpStatusCode.OK);
        context.Response.Content = new StringContent(JsonConvert.SerializeObject(data), System.Text.Encoding.UTF8, "application/json");
    }
}
