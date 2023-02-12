using DataAccessLayer.Concrete;
using DocumentFormat.OpenXml.Office2016.Drawing.ChartDrawing;
using EntityLayer.Concrete;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc.Authorization;

internal class Program
{
    private static void Main(string[] args)
    {
        var builder = WebApplication.CreateBuilder(args);

        //123.video
        builder.Services.AddDbContext<Context>();
        builder.Services.AddIdentity<AppUser, AppRole>(x =>
        {
            x.Password.RequireUppercase = false;
            x.Password.RequireNonAlphanumeric = false;
        })
            .AddEntityFrameworkStores<Context>();




        // Add services to the container.
        builder.Services.AddControllersWithViews();
        builder.Services.AddSession(); //48 de kald�rd�
        builder.Services.AddMvc(config =>
        {
            var policy = new AuthorizationPolicyBuilder()
                            .RequireAuthenticatedUser()
                            .Build();
            config.Filters.Add(new AuthorizeFilter(policy));
        });
        builder.Services.AddMvc();
        builder.Services.AddAuthentication(
            CookieAuthenticationDefaults.AuthenticationScheme)
            .AddCookie(x =>
            {
                x.LoginPath = "/Login/Index";
            }
            );
        builder.Services.ConfigureApplicationCookie(options =>
        {
            options.Cookie.HttpOnly = true;
            options.ExpireTimeSpan = TimeSpan.FromMinutes(100);
            options.LoginPath = "/Login/Index/";
            options.SlidingExpiration = true;
        });


        var app = builder.Build();

        // Configure the HTTP request pipeline.
        if (!app.Environment.IsDevelopment())
        {
            app.UseExceptionHandler("/Home/Error");
            // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
            app.UseHsts();
        }
        // app.UseStatusCodePages(); //40.video
        app.UseStatusCodePagesWithReExecute("/ErrorPage/Error1", "?code={0}");


        app.UseHttpsRedirection();
        app.UseStaticFiles();
        app.UseAuthentication(); //48.video
        app.UseSession();//46.Video

        app.UseRouting();

        app.UseAuthorization();

        //90.video arae tanımlamazsak hata verir.
        app.MapControllerRoute(
             name: "areas",
             pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
           );
        //Bu alan zaten mevcut
        app.MapControllerRoute(
             name: "default",
             pattern: "{controller=Home}/{action=Index}/{id?}");



        app.Run();
    }
}