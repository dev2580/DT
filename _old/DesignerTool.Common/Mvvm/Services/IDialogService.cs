﻿using System.Collections.ObjectModel;
using System.Diagnostics.Contracts;
using System.Windows;
using System.Windows.Forms;

namespace DesignerTool.Common.Mvvm.Services
{
	/// <summary>
	/// Interface responsible for abstracting ViewModels from Views.
	/// </summary>
	public interface IDialogService
	{
		/// <summary>
		/// Gets the registered views.
		/// </summary>
		ReadOnlyCollection<FrameworkElement> Views { get; }

		/// <summary>
		/// Registers a View.
		/// </summary>
		/// <param name="view">The registered View.</param>
		void Register(FrameworkElement view);


		/// <summary>
		/// Unregisters a View.
		/// </summary>
		/// <param name="view">The unregistered View.</param>
		void Unregister(FrameworkElement view);

		/// <summary>
		/// Shows a dialog.
		/// </summary>
		/// <remarks>
		/// The dialog used to represent the ViewModel is retrieved from the registered mappings.
		/// </remarks>
		/// <param name="ownerViewModel">
		/// A ViewModel that represents the owner window of the dialog.
		/// </param>
		/// <param name="viewModel">The ViewModel of the new dialog.</param>
		/// <returns>
		/// A nullable value of type bool that signifies how a window was closed by the user.
		/// </returns>
		bool? ShowDialog(object ownerViewModel, object viewModel);


		/// <summary>
		/// Shows a message box.
		/// </summary>
		/// <param name="ownerViewModel">
		/// A ViewModel that represents the owner window of the message box.
		/// </param>
		/// <param name="messageBoxText">A string that specifies the text to display.</param>
		/// <param name="caption">A string that specifies the title bar caption to display.</param>
		/// <param name="button">
		/// A MessageBoxButton value that specifies which button or buttons to display.
		/// </param>
		/// <param name="icon">A MessageBoxImage value that specifies the icon to display.</param>
		/// <returns>
		/// A MessageBoxResult value that specifies which message box button is clicked by the user.
		/// </returns>
		MessageBoxResult ShowMessageBox(
			object ownerViewModel,
			string messageBoxText,
			string caption = null,
			MessageBoxButton button = MessageBoxButton.OK,
			MessageBoxImage icon = MessageBoxImage.Information);


		/// <summary>
		/// Shows the OpenFileDialog.
		/// </summary>
		/// <param name="ownerViewModel">
		/// A ViewModel that represents the owner window of the dialog.
		/// </param>
		/// <param name="openFileDialog">The interface of a open file dialog.</param>
		/// <returns>DialogResult.OK if successful; otherwise DialogResult.Cancel.</returns>
        bool? ShowOpenFileDialog(object ownerViewModel, IOpenFileDialog openFileDialog);


		/// <summary>
		/// Shows the FolderBrowserDialog.
		/// </summary>
		/// <param name="ownerViewModel">
		/// A ViewModel that represents the owner window of the dialog.
		/// </param>
		/// <param name="folderBrowserDialog">The interface of a folder browser dialog.</param>
		/// <returns>The DialogResult.OK if successful; otherwise DialogResult.Cancel.</returns>
		DialogResult ShowFolderBrowserDialog(object ownerViewModel, IFolderBrowserDialog folderBrowserDialog);
	}
}
