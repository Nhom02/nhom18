namespace QL_giayit
{
    partial class FormQLDonHang
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tongtien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tinhtrang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ngaymuahang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bntclose = new System.Windows.Forms.Button();
            this.gb_find = new System.Windows.Forms.GroupBox();
            this.label11 = new System.Windows.Forms.Label();
            this.cbb_tinhtang = new System.Windows.Forms.ComboBox();
            this.dtpk_den = new System.Windows.Forms.DateTimePicker();
            this.dtpk_tu = new System.Windows.Forms.DateTimePicker();
            this.label12 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.btntimkiem = new System.Windows.Forms.Button();
            this.bntchitiet = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.bntsua = new System.Windows.Forms.Button();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.txtnmh = new System.Windows.Forms.TextBox();
            this.txttr = new System.Windows.Forms.TextBox();
            this.txttt = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtsdt = new System.Windows.Forms.TextBox();
            this.txtemail = new System.Windows.Forms.TextBox();
            this.gvdonhang = new System.Windows.Forms.DataGridView();
            this.mahoadon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.makhachhang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tenkhachhang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.diachi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sdt = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtdiachi = new System.Windows.Forms.TextBox();
            this.txttkh = new System.Windows.Forms.TextBox();
            this.txtmkh = new System.Windows.Forms.TextBox();
            this.txtmahoadon = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gb_find.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvdonhang)).BeginInit();
            this.SuspendLayout();
            // 
            // tongtien
            // 
            this.tongtien.DataPropertyName = "tongtien";
            this.tongtien.HeaderText = "Tổng tiền";
            this.tongtien.Name = "tongtien";
            this.tongtien.ReadOnly = true;
            // 
            // tinhtrang
            // 
            this.tinhtrang.DataPropertyName = "tinhtrang";
            this.tinhtrang.HeaderText = "Tình trạng";
            this.tinhtrang.Name = "tinhtrang";
            this.tinhtrang.ReadOnly = true;
            // 
            // ngaymuahang
            // 
            this.ngaymuahang.DataPropertyName = "ngaygiaohang";
            this.ngaymuahang.HeaderText = "Ngày mua hàng";
            this.ngaymuahang.Name = "ngaymuahang";
            this.ngaymuahang.ReadOnly = true;
            // 
            // bntclose
            // 
            this.bntclose.BackColor = System.Drawing.SystemColors.Control;
            this.bntclose.ForeColor = System.Drawing.SystemColors.ControlText;
            this.bntclose.Location = new System.Drawing.Point(866, 406);
            this.bntclose.Name = "bntclose";
            this.bntclose.Size = new System.Drawing.Size(67, 25);
            this.bntclose.TabIndex = 71;
            this.bntclose.Text = "Đóng";
            this.bntclose.UseVisualStyleBackColor = false;
            this.bntclose.Click += new System.EventHandler(this.bntclose_Click);
            // 
            // gb_find
            // 
            this.gb_find.Controls.Add(this.label11);
            this.gb_find.Controls.Add(this.cbb_tinhtang);
            this.gb_find.Controls.Add(this.dtpk_den);
            this.gb_find.Controls.Add(this.dtpk_tu);
            this.gb_find.Controls.Add(this.label12);
            this.gb_find.Controls.Add(this.label14);
            this.gb_find.Controls.Add(this.btntimkiem);
            this.gb_find.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gb_find.ForeColor = System.Drawing.SystemColors.ControlText;
            this.gb_find.Location = new System.Drawing.Point(10, 175);
            this.gb_find.Name = "gb_find";
            this.gb_find.Size = new System.Drawing.Size(925, 55);
            this.gb_find.TabIndex = 83;
            this.gb_find.TabStop = false;
            this.gb_find.Text = "Tìm Kiếm";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.ForeColor = System.Drawing.Color.Black;
            this.label11.Location = new System.Drawing.Point(552, 28);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(32, 16);
            this.label11.TabIndex = 12;
            this.label11.Text = "Đến";
            // 
            // cbb_tinhtang
            // 
            this.cbb_tinhtang.FormattingEnabled = true;
            this.cbb_tinhtang.Items.AddRange(new object[] {
            "tất cả",
            "chưa liên lạc",
            "chưa giao",
            "đã giao"});
            this.cbb_tinhtang.Location = new System.Drawing.Point(103, 22);
            this.cbb_tinhtang.Name = "cbb_tinhtang";
            this.cbb_tinhtang.Size = new System.Drawing.Size(112, 24);
            this.cbb_tinhtang.TabIndex = 11;
            // 
            // dtpk_den
            // 
            this.dtpk_den.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpk_den.Location = new System.Drawing.Point(597, 24);
            this.dtpk_den.Name = "dtpk_den";
            this.dtpk_den.Size = new System.Drawing.Size(192, 22);
            this.dtpk_den.TabIndex = 10;
            // 
            // dtpk_tu
            // 
            this.dtpk_tu.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpk_tu.Location = new System.Drawing.Point(347, 24);
            this.dtpk_tu.Name = "dtpk_tu";
            this.dtpk_tu.Size = new System.Drawing.Size(192, 22);
            this.dtpk_tu.TabIndex = 9;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.ForeColor = System.Drawing.Color.Black;
            this.label12.Location = new System.Drawing.Point(20, 28);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(67, 16);
            this.label12.TabIndex = 6;
            this.label12.Text = "Tình trạng";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.ForeColor = System.Drawing.Color.Black;
            this.label14.Location = new System.Drawing.Point(232, 28);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(103, 16);
            this.label14.TabIndex = 5;
            this.label14.Text = "Ngày mua hàng";
            // 
            // btntimkiem
            // 
            this.btntimkiem.BackColor = System.Drawing.SystemColors.Control;
            this.btntimkiem.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btntimkiem.Location = new System.Drawing.Point(838, 23);
            this.btntimkiem.Name = "btntimkiem";
            this.btntimkiem.Size = new System.Drawing.Size(67, 25);
            this.btntimkiem.TabIndex = 4;
            this.btntimkiem.Text = "Tìm kiếm";
            this.btntimkiem.UseVisualStyleBackColor = false;
            this.btntimkiem.Click += new System.EventHandler(this.btntimkiem_Click);
            // 
            // bntchitiet
            // 
            this.bntchitiet.BackColor = System.Drawing.SystemColors.Control;
            this.bntchitiet.ForeColor = System.Drawing.SystemColors.ControlText;
            this.bntchitiet.Location = new System.Drawing.Point(640, 138);
            this.bntchitiet.Name = "bntchitiet";
            this.bntchitiet.Size = new System.Drawing.Size(75, 23);
            this.bntchitiet.TabIndex = 82;
            this.bntchitiet.Text = "Chi tiết";
            this.bntchitiet.UseVisualStyleBackColor = false;
            this.bntchitiet.Click += new System.EventHandler(this.bntchitiet_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.SystemColors.Control;
            this.button1.ForeColor = System.Drawing.SystemColors.ControlText;
            this.button1.Location = new System.Drawing.Point(737, 138);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 81;
            this.button1.Text = "Refresh";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // bntsua
            // 
            this.bntsua.BackColor = System.Drawing.SystemColors.Control;
            this.bntsua.ForeColor = System.Drawing.SystemColors.ControlText;
            this.bntsua.Location = new System.Drawing.Point(535, 138);
            this.bntsua.Name = "bntsua";
            this.bntsua.Size = new System.Drawing.Size(75, 23);
            this.bntsua.TabIndex = 79;
            this.bntsua.Text = "Sửa";
            this.bntsua.UseVisualStyleBackColor = false;
            this.bntsua.Click += new System.EventHandler(this.bntsua_Click);
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(667, 92);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 21);
            this.comboBox1.TabIndex = 78;
            this.comboBox1.Text = "Tình trạng";
            this.comboBox1.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // txtnmh
            // 
            this.txtnmh.Location = new System.Drawing.Point(438, 64);
            this.txtnmh.Name = "txtnmh";
            this.txtnmh.ReadOnly = true;
            this.txtnmh.Size = new System.Drawing.Size(218, 20);
            this.txtnmh.TabIndex = 77;
            // 
            // txttr
            // 
            this.txttr.Location = new System.Drawing.Point(438, 92);
            this.txttr.Name = "txttr";
            this.txttr.ReadOnly = true;
            this.txttr.Size = new System.Drawing.Size(218, 20);
            this.txttr.TabIndex = 76;
            // 
            // txttt
            // 
            this.txttt.Location = new System.Drawing.Point(438, 36);
            this.txttt.Name = "txttt";
            this.txttt.ReadOnly = true;
            this.txttt.Size = new System.Drawing.Size(218, 20);
            this.txttt.TabIndex = 75;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.ForeColor = System.Drawing.Color.Black;
            this.label10.Location = new System.Drawing.Point(322, 96);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(55, 13);
            this.label10.TabIndex = 74;
            this.label10.Text = "Tinh trang";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.ForeColor = System.Drawing.Color.Black;
            this.label9.Location = new System.Drawing.Point(322, 71);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(82, 13);
            this.label9.TabIndex = 73;
            this.label9.Text = "Ngày mua hàng";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.ForeColor = System.Drawing.Color.Black;
            this.label8.Location = new System.Drawing.Point(322, 43);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(52, 13);
            this.label8.TabIndex = 72;
            this.label8.Text = "Tổng tiền";
            // 
            // txtsdt
            // 
            this.txtsdt.Location = new System.Drawing.Point(438, 6);
            this.txtsdt.Name = "txtsdt";
            this.txtsdt.Size = new System.Drawing.Size(218, 20);
            this.txtsdt.TabIndex = 70;
            // 
            // txtemail
            // 
            this.txtemail.Location = new System.Drawing.Point(127, 100);
            this.txtemail.Name = "txtemail";
            this.txtemail.Size = new System.Drawing.Size(169, 20);
            this.txtemail.TabIndex = 69;
            // 
            // gvdonhang
            // 
            this.gvdonhang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvdonhang.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.mahoadon,
            this.makhachhang,
            this.tenkhachhang,
            this.diachi,
            this.email,
            this.sdt,
            this.tongtien,
            this.ngaymuahang,
            this.tinhtrang});
            this.gvdonhang.Location = new System.Drawing.Point(8, 250);
            this.gvdonhang.Name = "gvdonhang";
            this.gvdonhang.ReadOnly = true;
            this.gvdonhang.Size = new System.Drawing.Size(925, 150);
            this.gvdonhang.TabIndex = 58;
            this.gvdonhang.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gvdonhang_CellClick);
            // 
            // mahoadon
            // 
            this.mahoadon.DataPropertyName = "mahoadon";
            this.mahoadon.HeaderText = "Mã hóa đơn";
            this.mahoadon.Name = "mahoadon";
            this.mahoadon.ReadOnly = true;
            // 
            // makhachhang
            // 
            this.makhachhang.DataPropertyName = "makhachhang";
            this.makhachhang.HeaderText = "Mã khách hàng";
            this.makhachhang.Name = "makhachhang";
            this.makhachhang.ReadOnly = true;
            // 
            // tenkhachhang
            // 
            this.tenkhachhang.DataPropertyName = "tenkhachhang";
            this.tenkhachhang.HeaderText = "Tên khách hàng";
            this.tenkhachhang.Name = "tenkhachhang";
            this.tenkhachhang.ReadOnly = true;
            // 
            // diachi
            // 
            this.diachi.DataPropertyName = "diachi";
            this.diachi.HeaderText = "Địa chỉ";
            this.diachi.Name = "diachi";
            this.diachi.ReadOnly = true;
            // 
            // email
            // 
            this.email.DataPropertyName = "email";
            this.email.HeaderText = "Email";
            this.email.Name = "email";
            this.email.ReadOnly = true;
            // 
            // sdt
            // 
            this.sdt.DataPropertyName = "sdt";
            this.sdt.HeaderText = "Số điện thoại";
            this.sdt.Name = "sdt";
            this.sdt.ReadOnly = true;
            // 
            // txtdiachi
            // 
            this.txtdiachi.Location = new System.Drawing.Point(127, 126);
            this.txtdiachi.Multiline = true;
            this.txtdiachi.Name = "txtdiachi";
            this.txtdiachi.Size = new System.Drawing.Size(169, 38);
            this.txtdiachi.TabIndex = 68;
            // 
            // txttkh
            // 
            this.txttkh.Location = new System.Drawing.Point(127, 64);
            this.txttkh.Name = "txttkh";
            this.txttkh.ReadOnly = true;
            this.txttkh.Size = new System.Drawing.Size(169, 20);
            this.txttkh.TabIndex = 67;
            // 
            // txtmkh
            // 
            this.txtmkh.Location = new System.Drawing.Point(127, 36);
            this.txtmkh.Name = "txtmkh";
            this.txtmkh.ReadOnly = true;
            this.txtmkh.Size = new System.Drawing.Size(169, 20);
            this.txtmkh.TabIndex = 66;
            // 
            // txtmahoadon
            // 
            this.txtmahoadon.Location = new System.Drawing.Point(127, 9);
            this.txtmahoadon.Name = "txtmahoadon";
            this.txtmahoadon.ReadOnly = true;
            this.txtmahoadon.Size = new System.Drawing.Size(169, 20);
            this.txtmahoadon.TabIndex = 65;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.ForeColor = System.Drawing.Color.Black;
            this.label7.Location = new System.Drawing.Point(322, 13);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(70, 13);
            this.label7.TabIndex = 64;
            this.label7.Text = "Số điện thoại";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.ForeColor = System.Drawing.Color.Black;
            this.label6.Location = new System.Drawing.Point(12, 103);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(32, 13);
            this.label6.TabIndex = 63;
            this.label6.Text = "Email";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.ForeColor = System.Drawing.Color.Black;
            this.label5.Location = new System.Drawing.Point(12, 126);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(40, 13);
            this.label5.TabIndex = 62;
            this.label5.Text = "Địa chỉ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.ForeColor = System.Drawing.Color.Black;
            this.label4.Location = new System.Drawing.Point(12, 71);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(86, 13);
            this.label4.TabIndex = 61;
            this.label4.Text = "Tên khách hàng";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.Color.Black;
            this.label3.Location = new System.Drawing.Point(12, 43);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 13);
            this.label3.TabIndex = 60;
            this.label3.Text = "Mã khách hàng";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(12, 16);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 13);
            this.label2.TabIndex = 59;
            this.label2.Text = "Mã hóa đơn ";
            // 
            // label1
            // 
            this.label1.ForeColor = System.Drawing.Color.Brown;
            this.label1.Location = new System.Drawing.Point(-1, 3);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 23);
            this.label1.TabIndex = 57;
            // 
            // FormQLDonHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(948, 440);
            this.Controls.Add(this.bntclose);
            this.Controls.Add(this.gb_find);
            this.Controls.Add(this.bntchitiet);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.bntsua);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.txtnmh);
            this.Controls.Add(this.txttr);
            this.Controls.Add(this.txttt);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.txtsdt);
            this.Controls.Add(this.txtemail);
            this.Controls.Add(this.gvdonhang);
            this.Controls.Add(this.txtdiachi);
            this.Controls.Add(this.txttkh);
            this.Controls.Add(this.txtmkh);
            this.Controls.Add(this.txtmahoadon);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FormQLDonHang";
            this.Text = "FormQLDonHang";
            this.gb_find.ResumeLayout(false);
            this.gb_find.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvdonhang)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridViewTextBoxColumn tongtien;
        private System.Windows.Forms.DataGridViewTextBoxColumn tinhtrang;
        private System.Windows.Forms.DataGridViewTextBoxColumn ngaymuahang;
        private System.Windows.Forms.Button bntclose;
        private System.Windows.Forms.GroupBox gb_find;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ComboBox cbb_tinhtang;
        private System.Windows.Forms.DateTimePicker dtpk_den;
        private System.Windows.Forms.DateTimePicker dtpk_tu;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button btntimkiem;
        private System.Windows.Forms.Button bntchitiet;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button bntsua;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.TextBox txtnmh;
        private System.Windows.Forms.TextBox txttr;
        private System.Windows.Forms.TextBox txttt;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtsdt;
        private System.Windows.Forms.TextBox txtemail;
        private System.Windows.Forms.DataGridView gvdonhang;
        private System.Windows.Forms.DataGridViewTextBoxColumn mahoadon;
        private System.Windows.Forms.DataGridViewTextBoxColumn makhachhang;
        private System.Windows.Forms.DataGridViewTextBoxColumn tenkhachhang;
        private System.Windows.Forms.DataGridViewTextBoxColumn diachi;
        private System.Windows.Forms.DataGridViewTextBoxColumn email;
        private System.Windows.Forms.DataGridViewTextBoxColumn sdt;
        private System.Windows.Forms.TextBox txtdiachi;
        private System.Windows.Forms.TextBox txttkh;
        private System.Windows.Forms.TextBox txtmkh;
        private System.Windows.Forms.TextBox txtmahoadon;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;

    }
}