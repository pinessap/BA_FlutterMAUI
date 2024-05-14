using Microsoft.Maui.Controls.Maps;
using Microsoft.Maui.Maps;

namespace bamauiapp.tabs;

public partial class Map : ContentPage
{
    MapSpan _initialMapSpan = MapSpan.FromCenterAndRadius(new Location(37.422131, -122.084801), Distance.FromKilometers(10));
    Location _location = new Location();
    Location? _currentLocation;

    public Map()
	{
		InitializeComponent();
        InitializeMap();
    }

    private void InitializeMap()
    {
        map.MapType = MapType.Street;
        map.MoveToRegion(_initialMapSpan);
    }

    private async Task AddCurrentLocationMarker()
    {
        try
        {
            var locationData = await Geolocation.Default.GetLastKnownLocationAsync();
            if (locationData != null)
            {
                _currentLocation = new Location(locationData.Latitude, locationData.Longitude);
                map.Pins.Clear();
                map.Pins.Add(new Pin
                {
                    Label = "Current Location",
                    Location = _currentLocation,
                    Type = PinType.Generic
                });
            }
        }
        catch (Exception e)
        {
            Console.WriteLine($"Failed to get current location: {e}");
        }
    }

    private async void RefreshButton_Clicked(object sender, EventArgs e)
    {
        await AddCurrentLocationMarker();
    }
}