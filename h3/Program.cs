using Microsoft.EntityFrameworkCore;
using hw3.Models;




var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddSwaggerGen();


builder.Services.AddDbContext<BokaiContext>(options => options.UseSqlServer(
    builder.Configuration.GetConnectionString("default")
    ));
//Console.WriteLine(builder.Configuration.GetConnectionString("default"));
//Console.WriteLine(builder.Configuration["corsweb"]);

builder.Services.AddCors(options =>
{
    options.AddPolicy("CorsPolicy",
       builder => builder.AllowAnyOrigin()
       .AllowAnyMethod()
       .AllowAnyHeader());
});

//========================================
var app = builder.Build();
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
//app.UseStaticFiles();
//app.UseAuthorization();
app.UseCors("CorsPolicy");
app.MapControllers();
app.Run();