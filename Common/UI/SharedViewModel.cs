using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace Common.UI
{
    /// <summary>
    /// Base class for ViewModels (MVVM)
    /// </summary>
    public abstract class SharedViewModel
    {
        protected event PropertyChangedEventHandler PropertyChanged;
        protected void NotifyPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }
}
