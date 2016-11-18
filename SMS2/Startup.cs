using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SMS2.Startup))]
namespace SMS2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
