using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Diagnostics;


namespace WordSearcher {
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 

    public class RecentSearch {
        public string search { get; set; }
        public string date { get; set; }

        //public RecentSearch(string s, string n) {
        //    this.search = s;
        //    this.date = n;
        //}

        //public static RecentSearch getRecent(string n, string now) {
        //    return new RecentSearch(n, now);
        //}
    }

    public class FoundFiles {
        public string name { get; set; }
        public string path { get; set; }

        //public FoundFiles(string n, string p) {
        //    this.name = n;
        //    this.path = p;
        //}

        //public static FoundFiles getFile(string n, string p) {
        //    return new FoundFiles(n, p);
        //}
    }

    public partial class MainWindow : Window {

        List<RecentSearch> reSearch = new List<RecentSearch>();
        List<FoundFiles> foundList = new List<FoundFiles>();

        public MainWindow() {
            InitializeComponent();

            // Init List -> Load at Beginning -> Save right Before Exit?
            // Same for Search Folder && Extension

            reSearch.Add(new RecentSearch() { search="fermented", date="16/12/2018" });
            reSearch.Add(new RecentSearch() { search="grass", date="15/12/2018" });
            //reSearch.Add(new RecentSearch("tree", "14/12/2018"));
            //reSearch.Add(new RecentSearch("oak", "13/12/2018"));
            //reSearch.Add(new RecentSearch("maple", "12/12/2018"));

            //foundList.Add(new FoundFiles("battle.sql", "C:\\Desktop\\Battle\\battle.sql"));
            //foundList.Add(new FoundFiles("some.sql", "C:\\Desktop\\some.sql"));
            //foundList.Add(new FoundFiles("lorem.sql", "C:\\Desktop\\Fix\\lorem.sql"));
            //foundList.Add(new FoundFiles("ipsum.sql", "C:\\Desktop\\Battle\\ipsum.sql"));
            //foundList.Add(new FoundFiles("test.sql", "C:\\Desktop\\Battle\\test.sql"));
            //foundList.Add(new FoundFiles("red.sql", "C:\\Desktop\\Battle\\red.sql"));

            search_List.ItemsSource = reSearch;
            found_List.ItemsSource = foundList;
        }

        private void Start_Search_Click(object sender, RoutedEventArgs e) {
            foundList.Clear();

            string ext = extension_Box.Text;
            string search = search_Word.Text;
            string path = directory_Path.Text;
            if (ext == "" || search == "" || path == "") {
                MessageBox.Show("Do Not Leave Extension, Search or Path Values Blank.");
                return;
            }

            DateTime time = DateTime.Now;
            string d = time.ToString("dd/MM/yyyy hh:mm:ss");
            List<RecentSearch> newRe = new List<RecentSearch>();
            foreach (RecentSearch r in reSearch) {
                newRe.Add(r);
            }
            newRe.Add(new RecentSearch() { search = search, date = d});
            
            search_List.ItemsSource = newRe;
            reSearch = newRe;
        }

        private void Open_Folder_Click(object sender, RoutedEventArgs e) {
            var dialog = new Microsoft.Win32.SaveFileDialog();
            dialog.Title = "Select a Directory";
            dialog.Filter = "Directory|*.this.directory";
            dialog.FileName = "select";
            
            if (dialog.ShowDialog() == true) {
                string path = dialog.FileName;
                path = path.Replace("\\select.this.directory", "");
                path = path.Replace(".this.directory", "");

                //if (!System.IO.Directory.Exists(path)) {
                //    System.IO.Directory.CreateDirectory(path);
                //}

                directory_Path.Text = path;


            }
        }

        

        private void Add_To_Search(object sender, MouseButtonEventArgs e) {
            var sel = search_List.SelectedItem as RecentSearch;
            if (sel == null) { return; }
            string s = sel.search;
            search_Word.Text = s;
        }

        private void Save_Current_Data() {

        }

        private void Load_Last_Data() {

        }
    }
}
