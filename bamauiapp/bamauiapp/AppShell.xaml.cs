using System.Diagnostics;

namespace bamauiapp
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Debug.WriteLine("loaded");
        }
    }
}
