namespace SweeticeUI
{
    partial class NuevoEmpleado
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
            button1 = new Button();
            DatosEmpleado = new Label();
            sucursal = new Label();
            nombre = new Label();
            apellido = new Label();
            carnet = new Label();
            txtCarnet = new TextBox();
            txtIdSucursal = new TextBox();
            txtApellidoEmp = new TextBox();
            txtNombreEmp = new TextBox();
            cargo = new Label();
            salario = new Label();
            txtCargo = new TextBox();
            txtSalario = new TextBox();
            SuspendLayout();
            // 
            // button1
            // 
            button1.Location = new Point(403, 351);
            button1.Name = "button1";
            button1.Size = new Size(94, 29);
            button1.TabIndex = 0;
            button1.Text = "Guardar";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // DatosEmpleado
            // 
            DatosEmpleado.AutoSize = true;
            DatosEmpleado.Location = new Point(265, 69);
            DatosEmpleado.Name = "DatosEmpleado";
            DatosEmpleado.Size = new Size(165, 20);
            DatosEmpleado.TabIndex = 1;
            DatosEmpleado.Text = "DATOS DEL EMPLEADO";
            // 
            // sucursal
            // 
            sucursal.AutoSize = true;
            sucursal.Location = new Point(265, 129);
            sucursal.Name = "sucursal";
            sucursal.Size = new Size(66, 20);
            sucursal.TabIndex = 2;
            sucursal.Text = "Sucursal:";
            sucursal.Click += Nombre_Click;
            // 
            // nombre
            // 
            nombre.AutoSize = true;
            nombre.Location = new Point(265, 162);
            nombre.Name = "nombre";
            nombre.Size = new Size(67, 20);
            nombre.TabIndex = 3;
            nombre.Text = "Nombre:";
            nombre.Click += label3_Click;
            // 
            // apellido
            // 
            apellido.AutoSize = true;
            apellido.Location = new Point(265, 195);
            apellido.Name = "apellido";
            apellido.Size = new Size(69, 20);
            apellido.TabIndex = 4;
            apellido.Text = "Apellido:";
            // 
            // carnet
            // 
            carnet.AutoSize = true;
            carnet.Location = new Point(265, 228);
            carnet.Name = "carnet";
            carnet.Size = new Size(55, 20);
            carnet.TabIndex = 5;
            carnet.Text = "Carnet:";
            // 
            // txtCarnet
            // 
            txtCarnet.Location = new Point(372, 225);
            txtCarnet.Name = "txtCarnet";
            txtCarnet.Size = new Size(125, 27);
            txtCarnet.TabIndex = 6;
            // 
            // txtIdSucursal
            // 
            txtIdSucursal.Location = new Point(372, 126);
            txtIdSucursal.Name = "txtIdSucursal";
            txtIdSucursal.Size = new Size(125, 27);
            txtIdSucursal.TabIndex = 7;
            // 
            // txtApellidoEmp
            // 
            txtApellidoEmp.Location = new Point(372, 192);
            txtApellidoEmp.Name = "txtApellidoEmp";
            txtApellidoEmp.Size = new Size(125, 27);
            txtApellidoEmp.TabIndex = 8;
            // 
            // txtNombreEmp
            // 
            txtNombreEmp.Location = new Point(372, 159);
            txtNombreEmp.Name = "txtNombreEmp";
            txtNombreEmp.Size = new Size(125, 27);
            txtNombreEmp.TabIndex = 9;
            // 
            // cargo
            // 
            cargo.AutoSize = true;
            cargo.Location = new Point(265, 261);
            cargo.Name = "cargo";
            cargo.Size = new Size(52, 20);
            cargo.TabIndex = 10;
            cargo.Text = "Cargo:";
            // 
            // salario
            // 
            salario.AutoSize = true;
            salario.Location = new Point(265, 294);
            salario.Name = "salario";
            salario.Size = new Size(58, 20);
            salario.TabIndex = 11;
            salario.Text = "Salario:";
            // 
            // txtCargo
            // 
            txtCargo.Location = new Point(372, 258);
            txtCargo.Name = "txtCargo";
            txtCargo.Size = new Size(125, 27);
            txtCargo.TabIndex = 12;
            // 
            // txtSalario
            // 
            txtSalario.Location = new Point(372, 291);
            txtSalario.Name = "txtSalario";
            txtSalario.Size = new Size(125, 27);
            txtSalario.TabIndex = 13;
            // 
            // NuevoEmpleado
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(txtSalario);
            Controls.Add(txtCargo);
            Controls.Add(salario);
            Controls.Add(cargo);
            Controls.Add(txtNombreEmp);
            Controls.Add(txtApellidoEmp);
            Controls.Add(txtIdSucursal);
            Controls.Add(txtCarnet);
            Controls.Add(carnet);
            Controls.Add(apellido);
            Controls.Add(nombre);
            Controls.Add(sucursal);
            Controls.Add(DatosEmpleado);
            Controls.Add(button1);
            Name = "NuevoEmpleado";
            Text = "NuevoEmpleado";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button button1;
        private Label DatosEmpleado;
        private Label sucursal;
        private Label nombre;
        private Label apellido;
        private Label carnet;
        private TextBox txtCarnet;
        private TextBox txtIdSucursal;
        private TextBox txtApellidoEmp;
        private TextBox txtNombreEmp;
        private Label cargo;
        private Label salario;
        private TextBox txtCargo;
        private TextBox txtSalario;
    }
}