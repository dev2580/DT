﻿using System;
using System.Globalization;
using System.Windows.Data;

namespace DesignerTool.Styles.Wpf.Converters
{
    public class ToUpperConverter : MarkupConverter
    {
        protected override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var val = value as string;
            return val != null ? val.ToUpper() : value;
        }

        protected override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }

    public class ToLowerConverter : MarkupConverter
    {
        protected override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var val = value as string;
            return val != null ? val.ToLower() : value;
        }

        protected override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return Binding.DoNothing;
        }
    }
}
