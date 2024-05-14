using bamauiapp.Models;

namespace bamauiapp.tabs;

public partial class Api : ContentPage
{
	public Api()
	{
		InitializeComponent();
	}

    private async void FetchDataButton_Clicked(object sender, EventArgs e)
    {
        var album = await FetchAlbum();
        if (album != null)
        {
            AlbumIdLabel.Text = $"Album ID: {album.Id}";
            TitleLabel.Text = $"Title: {album.Title}";
        }
    }

    private async Task<Album> FetchAlbum()
    {
        using (var client = new HttpClient())
        {
            var response = await client.GetAsync("https://jsonplaceholder.typicode.com/albums/1");
            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                return Album.FromJson(json);
            }
            else
            {
                throw new Exception("Failed to load album");
            }
        }
    }
}