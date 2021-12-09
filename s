using System;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        private const string V = "x^2";

        public Form1()
        {
            InitializeComponent();
        }

        private void buttonStart_Click(object sender, EventArgs e)
        {
            try
            {
                double b = double.Parse(textBoxXmax.Text);
                double h = double.Parse(textBoxStep.Text);
                double a = double.Parse(textBoxXmin.Text);
                this.chart1.Series[0].Points.Clear();
                double x = a + h;
                while (x <= b)
                {
                    double y = Math.Sin(V) + Math.Cos(x);
                    this.chart1.Series[0].Points.AddXY(x, y);
                    x += h;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }


        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
