namespace bamauiapp.tabs;

public partial class List : ContentPage
{
    private List<string> _listItems = new List<string>();

    public List()
	{
		InitializeComponent();
	}

    private void GenerateListItems(int itemCount)
    {
        List<string> items = new List<string>();
        for (int index = 0; index < itemCount; index++)
        {
            items.Add($"Item {index + 1}");
        }

        _listItems = items;
        RefreshList();
    }

    private void RefreshList()
    {
        ListView.ItemsSource = null;
        ListView.ItemsSource = _listItems;
    }

    private void RefreshButton_Clicked(object sender, EventArgs e)
    {
        GenerateListItems(10000);
    }
}