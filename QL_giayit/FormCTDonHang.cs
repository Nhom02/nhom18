using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QL_giayit
{
    public partial class FormCTDonHang : Form
    {
        ServiceReferenceChiTietHoaDon.ServiceChiTietHoaDonClient CTHD = new ServiceReferenceChiTietHoaDon.ServiceChiTietHoaDonClient();
        public FormCTDonHang()
        {
            InitializeComponent();
        }
        public FormCTDonHang(int mahd)
            : this()
        {
            var list = (from n in CTHD.Getallchitiethoadon() where n.mahoadon == mahd select n).ToList();
            gvchitiethd.AutoGenerateColumns = false;
            gvchitiethd.DataSource = list;
            //  MessageBox.Show(mahd.ToString());
            gvchitiethd.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }
        private void bntclose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
