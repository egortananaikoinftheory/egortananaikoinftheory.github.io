using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            double b = 0;
            double b1 = 0;
            double a1 = Convert.ToDouble(textBox1.Text);
            double a2 = Convert.ToDouble(textBox2.Text);
            b = (System.Math.Pow(2, a1 * a2) % 11);
            b1 = (System.Math.Pow(2, a2 * a1) % 11);
            textBox3.Text = Convert.ToString(b);
            textBox4.Text = Convert.ToString(b1);
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}