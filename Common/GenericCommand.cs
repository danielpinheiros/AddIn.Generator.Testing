using System;
using Autodesk.Revit.DB;
using Autodesk.Revit.UI;
using Common.Utils;

namespace Common
{
    /// <summary>
    /// Baseclass for IExternalCommands
    /// </summary>
    public abstract class GenericCommand : IExternalCommand
    {
        /// <summary>
        /// IExternalCommand.Execute
        /// </summary>
        public Result Execute(ExternalCommandData commandData, ref string message, ElementSet elements)
        {
            try
            {
                this.InyectCommandDataToEVerseContext(commandData);
                return this.ExecuteAction(commandData, ref message, elements);
            }
            catch (Exception ex)
            {
                OnException(ex);
            }

            return Result.Succeeded;
        }

        /// <summary>
        /// Inyect data to Context
        /// </summary>
        protected virtual void InyectCommandDataToEVerseContext(ExternalCommandData data)
        {
            ApplicationContext.Instance.SetContext(data);
        }

        /// <summary>
        /// Main Action for the Command
        /// </summary>
        public abstract Result ExecuteAction(ExternalCommandData commandData, ref string message, ElementSet elements);

        /// <summary>
        /// Optional -> Custom OnException Action for Configure
        /// </summary>
        protected virtual void OnException(Exception ex)
        {
            AppLogger.Instance.AddEx(ex, ex.StackTrace);
        }
    }
}
