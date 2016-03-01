using System;
using Hangfire;
using Hangfire.Dashboard;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(CMSCMV5.Startup))]
namespace CMSCMV5
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit http://go.microsoft.com/fwlink/?LinkID=316888
            //app.MapSignalR();

            //GlobalConfiguration.Configuration.UseSqlServerStorage("SQLServerForHangfire");

            //var options = new DashboardOptions
            //{
            //    AuthorizationFilters = new[]
            //    {
            //        new AuthorizationFilter { Roles = "0" }                        
            //    }
            //};
            //app.UseHangfireDashboard("/admin/hangfire", options);
            //app.UseHangfireServer();

            //RecurringJob.AddOrUpdate("RequestOnPay20", () => PushNotificationFunction.Test(), Cron.Hourly(20), TimeZoneInfo.Local);
        }
    }
}
