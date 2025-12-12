using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace SweeticeUI
{
    public partial class NuevoEmpleado : Form
    {
        private string connectionString =
    "Server=Anita;Database=Sweetice;Trusted_Connection=True;";
        public NuevoEmpleado()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void Nombre_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            // 1) Leer datos
            string idSucursalTexto = txtIdSucursal.Text.Trim();
            string nombre = txtNombreEmp.Text.Trim();
            string apellido = txtApellidoEmp.Text.Trim();
            string carnet = txtCarnet.Text.Trim();
            string cargo = txtCargo.Text.Trim();
            string salarioTexto = txtSalario.Text.Trim();

            // 2) Validaciones básicas
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(apellido))
            {
                MessageBox.Show("Nombre y apellido son obligatorios.");
                return;
            }

            if (!int.TryParse(idSucursalTexto, out int idSucursal))
            {
                MessageBox.Show("El ID de sucursal debe ser un número.");
                return;
            }

            if (!decimal.TryParse(salarioTexto, out decimal salario))
            {
                MessageBox.Show("El salario debe ser un número decimal.");
                return;
            }

            // 3) Insertar en SQL
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string query = @"
                    INSERT INTO Empleado (ID_Sucursal, Nombre, Apellido, Carnet, Cargo, FechaContratacion, Salario, Estado)
                    VALUES (@ID_Sucursal, @Nombre, @Apellido, @Carnet, @Cargo, GETDATE(), @Salario, 'Activo');
                    ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID_Sucursal", idSucursal);
                        cmd.Parameters.AddWithValue("@Nombre", nombre);
                        cmd.Parameters.AddWithValue("@Apellido", apellido);
                        cmd.Parameters.AddWithValue("@Carnet", carnet);
                        cmd.Parameters.AddWithValue("@Cargo", cargo);
                        cmd.Parameters.AddWithValue("@Salario", salario);

                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Empleado registrado correctamente 🎉");

                // Limpiar cajas
                txtIdSucursal.Clear();
                txtNombreEmp.Clear();
                txtApellidoEmp.Clear();
                txtCarnet.Clear();
                txtCargo.Clear();
                txtSalario.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al guardar: " + ex.Message);
            }
        
    }
    }
}
