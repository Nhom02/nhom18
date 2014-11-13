namespace QL_giayit
{
    partial class FormCTDonHang
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
            this.gvchitiethd = new System.Windows.Forms.DataGridView();
            this.masanpham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Tensanpham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.thanhtien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Giatien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bntclose = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.gvchitiethd)).BeginInit();
            this.SuspendLayout();
            // 
            // gvchitiethd
            // 
            this.gvchitiethd.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvchitiethd.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.masanpham,
            this.Tensanpham,
            this.thanhtien,
            this.Giatien});
            this.gvchitiethd.Location = new System.Drawing.Point(16, 26);
            this.gvchitiethd.Name = "gvchitiethd";
            this.gvchitiethd.Size = new System.Drawing.Size(341, 123);
            this.gvchitiethd.TabIndex = 3;
            // 
            // masanpham
            // 
            this.masanpham.DataPropertyName = "masanpham";
            this.masanpham.HeaderText = "Mã sản phẩm";
            this.masanpham.Name = "masanpham";
            // 
            // Tensanpham
            // 
            this.Tensanpham.DataPropertyName = "tensanpham";
            this.Tensanpham.HeaderText = "Tên sản phẩm";
            this.Tensanpham.Name = "Tensanpham";
            // 
            // thanhtien
            // 
            this.thanhtien.DataPropertyName = "soluong";
            this.thanhtien.HeaderText = "Số lượng";
            this.thanhtien.Name = "thanhtien";
            // 
            // Giatien
            // 
            this.Giatien.DataPropertyName = "giasanpham";
            this.Giatien.HeaderText = "Giá tiền";
            this.Giatien.Name = "Giatien";
            // 
            // bntclose
            // 
            this.bntclose.Location = new System.Drawing.Point(285, 158);
            this.bntclose.Name = "bntclose";
            this.bntclose.Size = new System.Drawing.Size(71, 20);
            this.bntclose.TabIndex = 4;
            this.bntclose.Text = "Đóng";
            this.bntclose.UseVisualStyleBackColor = true;
            this.bntclose.Click += new System.EventHandler(this.bntclose_Click);
            // 
            // FormCTDonHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(372, 187);
            this.Controls.Add(this.gvchitiethd);
            this.Controls.Add(this.bntclose);
            this.Name = "FormCTDonHang";
            this.Text = "FormCTDonHang";
            ((System.ComponentModel.ISupportInitialize)(this.gvchitiethd)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView gvchitiethd;
        private System.Windows.Forms.DataGridViewTextBoxColumn masanpham;
        private System.Windows.Forms.DataGridViewTextBoxColumn Tensanpham;
        private System.Windows.Forms.DataGridViewTextBoxColumn thanhtien;
        private System.Windows.Forms.DataGridViewTextBoxColumn Giatien;
        private System.Windows.Forms.Button bntclose;
    }
}