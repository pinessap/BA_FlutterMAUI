using System;
using System.ComponentModel;

namespace bamauiapp.tabs
{
    public partial class Math : ContentPage, INotifyPropertyChanged
    {
        int primeCount = 0;
        bool isCalculating = false;

        public event PropertyChangedEventHandler PropertyChanged;

        public bool IsCalculating
        {
            get { return isCalculating; }
            set
            {
                if (isCalculating != value)
                {
                    isCalculating = value;
                    OnPropertyChanged(nameof(IsCalculating));
                }
            }
        }

        public string PrimeCountText
        {
            get { return $"Prime Count: {primeCount}"; }
        }

        public Math()
        {
            InitializeComponent();
            BindingContext = this;
        }

        private void CalculatePrimeCount_Clicked(object sender, EventArgs e)
        {
            IsCalculating = true;
            GeneratePrimes(23000000);
            IsCalculating = false;
        }

        private void GeneratePrimes(int limit)
        {
            bool[] isPrime = new bool[limit + 1];
            if (limit > 2) isPrime[2] = true;
            if (limit > 3) isPrime[3] = true;

            for (int x = 1; x * x <= limit; x++)
            {
                for (int y = 1; y * y <= limit; y++)
                {
                    int n = (4 * x * x) + (y * y);
                    if (n <= limit && (n % 12 == 1 || n % 12 == 5))
                    {
                        isPrime[n] = !isPrime[n];
                    }

                    n = (3 * x * x) + (y * y);
                    if (n <= limit && n % 12 == 7)
                    {
                        isPrime[n] = !isPrime[n];
                    }

                    n = (3 * x * x) - (y * y);
                    if (x > y && n <= limit && n % 12 == 11)
                    {
                        isPrime[n] = !isPrime[n];
                    }
                }
            }

            for (int n = 5; n * n <= limit; n++)
            {
                if (isPrime[n])
                {
                    for (int k = n * n; k <= limit; k += n * n)
                    {
                        isPrime[k] = false;
                    }
                }
            }

            int count = 0;
            for (int i = 2; i <= limit; i++)
            {
                if (isPrime[i])
                {
                    count++;
                }
            }

            PrimeCount = count;
        }

        public int PrimeCount
        {
            get { return primeCount; }
            set
            {
                if (primeCount != value)
                {
                    primeCount = value;
                    OnPropertyChanged(nameof(PrimeCount));
                    OnPropertyChanged(nameof(PrimeCountText));
                }
            }
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
