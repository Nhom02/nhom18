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
    public partial class FormQLDonHang : Form
    {
        ServiceReferenceHoaDon.ServiceHoaDonClient HD = new ServiceReferenceHoaDon.ServiceHoaDonClient();
        ServiceReferenceChiTietHoaDon.ServiceChiTietHoaDonClient CTHD = new ServiceReferenceChiTietHoaDon.ServiceChiTietHoaDonClient();
        ServiceReferenceSanPham.ServiceSanPhamClient SP = new ServiceReferenceSanPham.ServiceSanPhamClient();

        int k = 1;
        int flag = 0;
        string s;
        public FormQLDonHang()
        {

            InitializeComponent();

            load();
        }
        public void load()
        {

            gvdonhang.AutoGenerateColumns = false;
            gvdonhang.DataSource = HD.Getallhoadon();
            gvdonhang.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void gvdonhang_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                k = 0;
                comboBox1.Items.Clear();
                comboBox1.Show();
                comboBox1.Items.Add("chưa liên lạc");
                comboBox1.Items.Add("chưa giao");
                comboBox1.Items.Add("đã giao");
                DataGridViewRow dr = gvdonhang.SelectedRows[0];
                txtmahoadon.Text = dr.Cells[0].Value.ToString();
                txtmkh.Text = dr.Cells[1].Value.ToString();
                txttkh.Text = dr.Cells[2].Value.ToString();
                txtdiachi.Text = dr.Cells[3].Value.ToString();
                txtemail.Text = dr.Cells[4].Value.ToString();
                txtsdt.Text = dr.Cells[5].Value.ToString();
                txttt.Text = dr.Cells[6].Value.ToString();
                txtnmh.Text = dr.Cells[7].Value.ToString();
                txttr.Text = dr.Cells[8].Value.ToString();
                if (txttr.Text == "chưa giao")
                {
                    comboBox1.Items.Remove("chưa liên lạc");
                }
                if (txttr.Text == "chưa giao")
                {
                    comboBox1.Items.Remove("chưa liên lạc");
                    comboBox1.Items.Remove("chưa giao");
                }
                if (txttr.Text == "đã giao")
                {
                    comboBox1.Hide();
                }
            }
            catch { }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            load();
        }

        private void bntchitiet_Click(object sender, EventArgs e)
        {
            if (k == 0)
            {
               FormCTDonHang ct = new FormCTDonHang(int.Parse(txtmahoadon.Text));
                ct.ShowDialog();
            }
        }

        private void bntsua_Click(object sender, EventArgs e)
        {
            if (k == 0)
            {
                try
                {
                    if (flag == 1 && txttr.Text == "đã giao")
                    {
                        var listsp = SP.Getallsanpham();
                        int flat = 0;
                        s = "";
                        // MessageBox.Show("đã tới");
                        var listcthd = CTHD.Select_chitiethoadon_theomahd(int.Parse(txtmahoadon.Text));
                        foreach (var item in listsp)
                        {
                            foreach (var sp in listcthd)
                            {
                                if (item.masanpham.Trim() == sp.masanpham.Trim() && item.soluongcon < sp.soluong)
                                {
                                    int sl = int.Parse(sp.soluong.ToString()) - item.soluongcon;
                                    flat = 1;
                                    s += "Sản phẩm " + item.tensanpham + "không đủ số lượng,thiếu " + sl + " đôi \n";
                                    MessageBox.Show(s);
                                }

                            }
                        }
                        if (flat == 1)
                        {
                            throw new OverflowException();
                        }
                        CTHD.trusoluongdathang(int.Parse(txtmahoadon.Text));
                    }
                    HD.editdonhang(txtmahoadon.Text, txttr.Text);
                    MessageBox.Show("Sửa thành công");
                    load();
                }
                catch { MessageBox.Show("Sửa thất bại"); }
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string s = txttr.Text;
            txttr.Text = comboBox1.SelectedItem.ToString();
            if (s != txttr.Text)
                flag = 1;

        }

        private void btntimkiem_Click(object sender, EventArgs e)
        {

            gvdonhang.DataSource = null;
            gvdonhang.Rows.Clear();
            // var listhd = ;
            foreach (var item in HD.Getallhoadon())
            {
                DateTime t = DateTime.Parse(DateTime.Parse(item.ngaygiaohang.ToString()).ToShortDateString());
                DateTime m = DateTime.Parse(dtpk_tu.Value.ToString());
                DateTime k = DateTime.Parse(dtpk_den.Value.ToString());
                string s = cbb_tinhtang.Text;
                //  MessageBox.Show(s);
                if (cbb_tinhtang.Text == "tất cả" && t >= m && t <= k)
                {
                    gvdonhang.Rows.Add(item.mahoadon, item.makhachhang, item.tenkhachhang, item.diachi, item.email, item.sdt, item.tongtien, item.ngaygiaohang, item.tinhtrang);
                }
                else if (item.tinhtrang.Trim() == cbb_tinhtang.Text && t >= m && t <= k)
                { gvdonhang.Rows.Add(item.mahoadon, item.makhachhang, item.tenkhachhang, item.diachi, item.email, item.sdt, item.tongtien, item.ngaygiaohang, item.tinhtrang); }
            }

        }

        private void bntclose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
