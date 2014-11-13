using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QL_giayit
{
    public partial class FormQuanLySanPham : Form
    {
        ServiceReferenceSanPham.ServiceSanPhamClient sp = new ServiceReferenceSanPham.ServiceSanPhamClient();
        ServiceReferenceTonKho.ServiceTonKhoClient tk = new ServiceReferenceTonKho.ServiceTonKhoClient();
        String[] text = new String[3];
        string url;
        string state=null;
        int flag;
        public FormQuanLySanPham()
        {
            InitializeComponent();
        }

        private void Lammoi()
        {
            btnThem.Enabled = true;
            btnSua.Enabled = false;      
            txtMaSP.Enabled = true;

            txtMaSP.Text = "";
            txtTenSP.Text = "";            
            txtGiaBan.Text = "";
            txtChatLieu.Text = "";
            txtGiaBan.Text = "";
            txtMoTa.Text = "";

            var lsp = sp.Getallloaisanpham();
            cbLoaiSP.DataSource = lsp;
            cbLoaiSP.DisplayMember = "tenloai";
            cbLoaiSP.ValueMember = "maloai";
            txtHinhAnh.Text = "";
            pchinhanh.Image = null;

            txtTimKiem.Text = "";

            gvSanPham.Rows.Clear();
            var dssanpham = sp.Getallsanpham();
            var dslsp = sp.Getallloaisanpham();
            foreach (var sanpham in dssanpham)
            {
                foreach (var loai in dslsp)
                {
                    if (loai.maloai == sanpham.maloai)
                    {
                        if (sanpham.sanphammoi == 1)
                        {
                            state = "Enable";
                        }
                        else
                        {
                            state = "Disable";
                        }
                        gvSanPham.Rows.Add(sanpham.masanpham, sanpham.tensanpham, sanpham.chatlieu, sanpham.giasanpham, sanpham.motasanpham, sanpham.ghichu, sanpham.hinhanh, sanpham.soluongcon, loai.tenloai, state);
                    }
                }
            }
        }

        private void gvSanPham_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
           
        }

        private void FormQuanLySanPham_Load(object sender, EventArgs e)
        {
            btnSua.Enabled = false;

            var dssanpham = sp.Getallsanpham();
            var dslsp = sp.Getallloaisanpham();
            foreach (var sanpham in dssanpham)
            {
                foreach (var loai in dslsp)
                {
                    if (loai.maloai == sanpham.maloai)
                    {
                        if (sanpham.sanphammoi == 1)
                        {
                            state = "Enable";
                        }
                        else
                        {
                            state = "Disable";
                        }
                        gvSanPham.Rows.Add(sanpham.masanpham, sanpham.tensanpham, sanpham.chatlieu, sanpham.giasanpham, sanpham.motasanpham, sanpham.ghichu, sanpham.hinhanh, sanpham.soluongcon, loai.tenloai, state);
                    }
                }
            }

            var lsp = sp.Getallloaisanpham();
            cbLoaiSP.DataSource = dslsp;
            cbLoaiSP.DisplayMember = "tenloai";
            cbLoaiSP.ValueMember = "maloai";
        }

        private void gvSanPham_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            btnThem.Enabled = false;
            btnSua.Enabled = true;
            txtMaSP.Enabled = false;

            string m = System.IO.Directory.GetCurrentDirectory().ToString();
            int t = m.Length - 19;
            m = m.Substring(0, t);
            m = m.Replace("\\", "/");

            string masp = gvSanPham.CurrentRow.Cells[0].Value.ToString();
            foreach (var sanpham in sp.Getallsanpham())
            {
                foreach (var loai in sp.Getallloaisanpham())
                {
                    if (sanpham.masanpham == masp && sanpham.maloai == loai.maloai)
                    {

                        txtMaSP.Text = sanpham.masanpham;
                        txtTenSP.Text = sanpham.tensanpham;
                        cbLoaiSP.Text = loai.tenloai;
                        txtChatLieu.Text = sanpham.chatlieu;
                        txtGiaBan.Text = sanpham.giasanpham.ToString();
                        txtHinhAnh.Text = sanpham.hinhanh;
                        txtMoTa.Text = sanpham.motasanpham;

                        string s;
                        s = m + "giayit/" + gvSanPham.CurrentRow.Cells["Hinhanh"].Value.ToString();
                        //       MessageBox.Show(s);
                        //             try
                        //             {
                        pchinhanh.Image = Image.FromFile(s);
                        pchinhanh.SizeMode = PictureBoxSizeMode.CenterImage;
                        pchinhanh.BorderStyle = BorderStyle.Fixed3D;
                        pchinhanh.SizeMode = PictureBoxSizeMode.StretchImage;
                        //           }
                        //           catch (Exception)
                        //           {

                        //              MessageBox.Show("Hình bị lỗi!");
                        //          }
                        if (e.ColumnIndex == gvSanPham.Columns["xoa"].Index )
                        {
                            if (sanpham.sanphammoi == 1)
                            {
                                if (sp.deletesp(txtMaSP.Text))
                                {
                                    MessageBox.Show("Xóa thành công");
                                    Lammoi();
                                }
                                else
                                {
                                    MessageBox.Show("Xóa thất bại");

                                }
                            }
                            else
                            {
                                if (sp.kichhoat(txtMaSP.Text))
                                {
                                    MessageBox.Show("kích hoạt thành công");
                                    Lammoi();
                                }
                                else
                                {
                                    MessageBox.Show("Kích hoạt thất bại");

                                }
                            }
                            
                        }
                    }
                }

            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btChonHinh_Click(object sender, EventArgs e)
        {
            OpenFileDialog open = new OpenFileDialog();
            string m = System.IO.Directory.GetCurrentDirectory().ToString();
      //      MessageBox.Show(m);
            int t = m.Length - 19;
        //    MessageBox.Show(t.ToString());
            m = m.Substring(0, t);
            // m = m.Replace("\\", "/");
            String path = @"giayit\Image\";
            open.Filter = "Hình ảnh *.jpg,*.jpeg,*.png,*.gif|*.jpg;*.jpeg;*.png;*.gif";
            if (open.ShowDialog() == DialogResult.OK)
            {
                String filename = Path.GetFileNameWithoutExtension(open.FileName);
                string extension = Path.GetExtension(open.FileName);
                string dir = Path.GetDirectoryName(open.FileName);
                if (File.Exists(path + filename + extension))
                {
                    MessageBox.Show("Hình bị trùng tên rồi!!!");
                    //filename += "_";
                }
                else
                {

                    String hinh = m + path + filename + extension;
                    text[0] = open.FileName;
                    text[1] = hinh;
              //      MessageBox.Show(hinh);
                    String hinh1 = hinh.Replace("\\", "/");

                    String h = "Image/";
                    String hinhanh = h + filename + extension;
                    url = h + filename + extension;

                    pchinhanh.Image = Image.FromFile(text[0]);
                    pchinhanh.SizeMode = PictureBoxSizeMode.CenterImage;
                    pchinhanh.BorderStyle = BorderStyle.Fixed3D;
                    pchinhanh.SizeMode = PictureBoxSizeMode.StretchImage;
                    pchinhanh.Width = 160; // xét chiều rộng
                    pchinhanh.Height = 114; // xét chiều dài
                    txtHinhAnh.Text = hinhanh;
                }
            }
        }

        private bool IsNumber(string pText)
        {
            Regex regex = new Regex(@"^[-+]?[0-9]*\.?[0-9]+$");
            return regex.IsMatch(pText);
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMaSP.Text == "" || txtTenSP.Text == "" || txtChatLieu.Text == "" || txtMoTa.Text == ""
                    || txtGiaBan.Text == "" || txtHinhAnh.Text == "" )
            {
                MessageBox.Show("Thông tin chưa đầy đủ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                if (!IsNumber(txtGiaBan.Text))
                {
                    MessageBox.Show("Giá bán phải là số", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    File.Copy(text[0], text[1], true);
                    if (sp.themsp(cbLoaiSP.SelectedValue.ToString(), txtTenSP.Text, txtChatLieu.Text, int.Parse(txtGiaBan.Text), txtMoTa.Text, 0, url))
                    {
                        tk.Them(txtTenSP.Text);
                        MessageBox.Show("Thêm thành công");
                        Lammoi();
                    }
                    else
                    {
                        MessageBox.Show("Thêm thất bại");
                    }
                }
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {            
            
            
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            Lammoi();
            
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            if (txtMaSP.Text == "" || txtTenSP.Text == "" || txtChatLieu.Text == "" || txtMoTa.Text == ""
                    || txtGiaBan.Text == "" || txtHinhAnh.Text == "")
            {
                MessageBox.Show("Thông tin chưa đầy đủ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                if (!IsNumber(txtGiaBan.Text))
                {
                    MessageBox.Show("Giá bán phải là số", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    if (text[0] == null)
                        url = txtHinhAnh.Text;
                    else
                        try
                        {
                            File.Copy(text[0], text[1], true);
                        }
                        catch
                        {

                        }

                    if (sp.editsp(txtMaSP.Text, txtTenSP.Text, txtChatLieu.Text, txtGiaBan.Text, txtMoTa.Text, "0", url, cbLoaiSP.SelectedValue.ToString(), url))
                    {
                        MessageBox.Show("Sửa thành công");
                        Lammoi();
                        gvSanPham.Rows.Clear();
                        var dssanpham = sp.Getallsanpham();
                        var dslsp = sp.Getallloaisanpham();
                        foreach (var sanpham in dssanpham)
                        {
                            foreach (var loai in dslsp)
                            {
                                if (loai.maloai == sanpham.maloai)
                                {
                                    gvSanPham.Rows.Add(sanpham.masanpham, sanpham.tensanpham, sanpham.chatlieu, sanpham.giasanpham, sanpham.motasanpham, sanpham.ghichu, sanpham.hinhanh, sanpham.soluongcon, loai.tenloai);
                                }
                            }
                        }
                    }
                    else
                    {
                        MessageBox.Show("Sửa thất bại");
                    }
                }
            }
        }

        private void txtGiaBan_TextChanged(object sender, EventArgs e)
        {
         //   PhieuNhap pn = new PhieuNhap();
            //  gia.re
    //        pn.TachSo(txtGiaBan);
        }

        private void txtMaSP_TextChanged(object sender, EventArgs e)
        {
            

        }

        private void txtTimKiem_TextChanged(object sender, EventArgs e)
        {
            gvSanPham.Rows.Clear();

            var listsp = (from p in sp.Getallsanpham()
                          where p.tensanpham.ToLower().Contains(txtTimKiem.Text.ToLower())
                          select p).ToList();


            var dslsp = sp.Getallloaisanpham();
            foreach (var sanpham in listsp)
            {
                foreach (var loai in dslsp)
                {
                    if (loai.maloai == sanpham.maloai)
                    {
                        if (sanpham.sanphammoi == 1)
                        {
                            state = "Enable";
                        }
                        else
                        {
                            state = "Disable";
                        }
                        gvSanPham.Rows.Add(sanpham.masanpham, sanpham.tensanpham, sanpham.chatlieu, sanpham.giasanpham, sanpham.motasanpham, sanpham.ghichu, sanpham.hinhanh, sanpham.soluongcon, loai.tenloai, state);
                    }
                }
            }
        }
    }
}

