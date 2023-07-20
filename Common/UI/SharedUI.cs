using System.Windows;

namespace Common.UI
{
    public abstract class SharedUI : Window
    {
        public SharedUI()
        {
            OnInitialized();
        }

        protected virtual void OnInitialized()
        {
            this.Title = ApplicationContext.Instance.AppFormsTitle;
        }
    }

    public abstract class SharedUI<T> : SharedUI
    where T : SharedViewModel, new()
    {
        protected T ViewModel { get; set; } = new T();

        public SharedUI() : base()
        {
            this.DataContext = ViewModel;
        }
    }
}
