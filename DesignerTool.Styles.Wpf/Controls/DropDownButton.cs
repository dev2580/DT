﻿using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Markup;

namespace DesignerTool.Styles.Wpf.Controls
{
    [ContentProperty("ItemsSource")]
    [TemplatePart(Name = "PART_Button", Type = typeof(Button)),
    TemplatePart(Name = "PART_Image", Type = typeof(Image)),
    TemplatePart(Name = "PART_ButtonContent", Type = typeof(ContentControl)),
    TemplatePart(Name = "PART_Menu", Type = typeof(ContextMenu))]
    public class DropDownButton : ItemsControl
    {
        public static readonly RoutedEvent ClickEvent =
            EventManager.RegisterRoutedEvent("Click", RoutingStrategy.Bubble,
                typeof(RoutedEventHandler), typeof(DropDownButton));

        public event RoutedEventHandler Click
        {
            add { AddHandler(ClickEvent, value); }
            remove { RemoveHandler(ClickEvent, value); }
        }

        public static readonly DependencyProperty IsExpandedProperty =
            DependencyProperty.Register("IsExpanded", typeof(bool), typeof(DropDownButton), new FrameworkPropertyMetadata(new PropertyChangedCallback(Target)));

        private static void Target(DependencyObject dependencyObject, DependencyPropertyChangedEventArgs dependencyPropertyChangedEventArgs)
        {
            DropDownButton button = (DropDownButton) dependencyObject;
            if (button.clickButton != null)
            {
                button.menu.Placement = PlacementMode.Bottom;
                button.menu.PlacementTarget = button.clickButton;
            }
        }

        public static readonly DependencyProperty ExtraTagProperty =
            DependencyProperty.Register("ExtraTag", typeof(Object), typeof(DropDownButton));

        public static readonly DependencyProperty OrientationProperty =
            DependencyProperty.Register("Orientation", typeof(Orientation), typeof(DropDownButton),
                new FrameworkPropertyMetadata(Orientation.Horizontal));

        public static readonly DependencyProperty IconProperty =
            DependencyProperty.Register("Icon", typeof(Object), typeof(DropDownButton));

        public static readonly DependencyProperty CommandProperty =
            DependencyProperty.Register("Command", typeof(ICommand), typeof(DropDownButton));

        public static readonly DependencyProperty CommandTargetProperty =
            DependencyProperty.Register("CommandTarget", typeof(IInputElement), typeof(DropDownButton));

        public static readonly DependencyProperty CommandParameterProperty =
            DependencyProperty.Register("CommandParameter", typeof(Object), typeof(DropDownButton));

        public static readonly DependencyProperty ContentProperty =
            DependencyProperty.Register("Content", typeof(Object), typeof(DropDownButton));

        public Object Content
        {
            get { return (Object)GetValue(ContentProperty); }
            set { SetValue(ContentProperty, value); }
        }

        public Object CommandParameter
        {
            get { return (Object)GetValue(CommandParameterProperty); }
            set { SetValue(CommandParameterProperty, value); }
        }

        public IInputElement CommandTarget
        {
            get { return (IInputElement)GetValue(CommandTargetProperty); }
            set { SetValue(CommandTargetProperty, value); }
        }

        public ICommand Command
        {
            get { return (ICommand)GetValue(CommandProperty); }
            set { SetValue(CommandProperty, value); }
        }

        public Boolean IsExpanded
        {
            get { return (bool)GetValue(IsExpandedProperty); }
            set { SetValue(IsExpandedProperty, value); }
        }

        public Object ExtraTag
        {
            get { return GetValue(ExtraTagProperty); }
            set { SetValue(ExtraTagProperty, value); }
        }

        public Orientation Orientation
        {
            get { return (Orientation)GetValue(OrientationProperty); }
            set { SetValue(OrientationProperty, value); }
        }

        public Object Icon
        {
            get { return GetValue(IconProperty); }
            set { SetValue(IconProperty, value); }
        }

        private Button clickButton;
        private ContextMenu menu;

        static DropDownButton()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(DropDownButton), new FrameworkPropertyMetadata(typeof(DropDownButton)));
        }

        private void ButtonClick(object sender, RoutedEventArgs e)
        {
            e.RoutedEvent = ClickEvent;
            RaiseEvent(e);
        }

        private void ExpanderClick(object sender, RoutedEventArgs e)
        {
            menu.Placement = PlacementMode.Bottom;
            menu.PlacementTarget = clickButton;
            IsExpanded = true;
        }

        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();
            clickButton = EnforceInstance<Button>("PART_Button");
            menu = EnforceInstance<ContextMenu>("PART_Menu");
            InitializeVisualElementsContainer();
        }

        //Get element from name. If it exist then element instance return, if not, new will be created
        T EnforceInstance<T>(string partName) where T : FrameworkElement, new()
        {
            T element = GetTemplateChild(partName) as T ?? new T();
            return element;
        }

        private void InitializeVisualElementsContainer()
        {
            MouseRightButtonUp += DropDownButton_MouseRightButtonUp;
            clickButton.Click += ExpanderClick;
            clickButton.Click += ButtonClick;
        }

        void DropDownButton_MouseRightButtonUp(object sender, MouseButtonEventArgs e)
        {
            e.Handled = true;
        }
    }
}
