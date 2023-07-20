using System;
using System.Reflection;
using Autodesk.Revit.UI;

namespace Common
{
    public class Startup : IExternalApplication
    {
        public Result OnStartup(UIControlledApplication application)
        {
            try
            {
                AddRibbonButtons(application);
                return Autodesk.Revit.UI.Result.Succeeded;
            }
            catch (Exception ex)
            {
                TaskDialog.Show($"OnStartup Error!", ex.ToString());
                return Autodesk.Revit.UI.Result.Failed;
            }
        }

        public Result OnShutdown(UIControlledApplication application)
        {
            return Result.Succeeded;
        }

        private void AddRibbonButtons(UIControlledApplication application)
        {
            Assembly assembly = Assembly.GetExecutingAssembly();
            string executingAssemblyPath = assembly.Location;
            string eTabName = "e-verse"; // configure your tab name here!

            try
            {
                application.CreateRibbonTab(eTabName);
            }
            catch (Autodesk.Revit.Exceptions.ArgumentException)
            {
                // tab already exists
            }

            #region Example code to create buttons and panels, you can use it as reference an remove it!
            //PushButtonData pbd = new PushButtonData("Sample", "Click Me", executingAssemblyPath, "SampleRevitAddin.Common.SampleRevitPopup");
            //RibbonPanel panel = application.CreateRibbonPanel(eTabName, "Revit Snack");
            //// Create the main button.
            //PushButton pb = panel.AddItem(pbd) as PushButton;
            //pb.ToolTip = "This is a sample Revit button";
            //pb.LargeImage = ResourceImage.GetIcon("e-verselogo.png");
            #endregion
        }
    }
}
