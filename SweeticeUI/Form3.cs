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
    public partial class NuevoProducto : Form
    {
        private string connectionString =
    "Server=Anita;Database=Sweetice;Trusted_Connection=True;";
        public NuevoProducto()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void NuevoProducto_Click(object sender, EventArgs e)
        {
            
            // 1) Leer datos del formulario
            string idCategoriaTexto = txtIdCategoria.Text.Trim();
            string nombre = txtNombreProd.Text.Trim();
            string descripcion = txtDescripcionProd.Text.Trim();
            string precioTexto = txtPrecio.Text.Trim();
            string azucarTexto = txtAzucar.Text.Trim();
            string lactosaTexto = txtLactosa.Text.Trim();
            string veganoTexto = txtVegano.Text.Trim();

            // 2) Validaciones
            if (string.IsNullOrEmpty(nombre))
            {
                MessageBox.Show("El nombre del producto es obligatorio.");
                return;
            }

            if (!int.TryParse(idCategoriaTexto, out int idCategoria))
            {
                MessageBox.Show("El ID de categoría debe ser un número.");
                return;
            }

            if (!decimal.TryParse(precioTexto, out decimal precio))
            {
                MessageBox.Show("El precio debe ser numérico.");
                return;
            }

            if (!int.TryParse(azucarTexto, out int azucar) || (azucar != 0 && azucar != 1))
            {
                MessageBox.Show("Azúcar debe ser 0 o 1.");
                return;
            }

            if (!int.TryParse(lactosaTexto, out int lactosa) || (lactosa != 0 && lactosa != 1))
            {
                MessageBox.Show("Lactosa debe ser 0 o 1.");
                return;
            }

            if (!int.TryParse(veganoTexto, out int vegano) || (vegano != 0 && vegano != 1))
            {
                MessageBox.Show("Vegano debe ser 0 o 1.");
                return;
            }

            // 3) Insertar en SQL
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string query = @"
                INSERT INTO Producto
                (ID_Categoria, Nombre, Descripcion, Precio, Azucar, Lactosa, Vegano, Activo)
                VALUES
                (@ID_Categoria, @Nombre, @Descripcion, @Precio, @Azucar, @Lactosa, @Vegano, 1);
            ";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID_Categoria", idCategoria);
                        cmd.Parameters.AddWithValue("@Nombre", nombre);
                        cmd.Parameters.AddWithValue("@Descripcion", descripcion);
                        cmd.Parameters.AddWithValue("@Precio", precio);
                        cmd.Parameters.AddWithValue("@Azucar", azucar);
                        cmd.Parameters.AddWithValue("@Lactosa", lactosa);
                        cmd.Parameters.AddWithValue("@Vegano", vegano);

                        cmd.ExecuteNonQuery();
                    }
                }

                MessageBox.Show("Producto registrado correctamente 🎉");

                // Limpiar campos
                txtIdCategoria.Clear();
                txtNombreProd.Clear();
                txtDescripcionProd.Clear();
                txtPrecio.Clear();
                txtAzucar.Clear();
                txtLactosa.Clear();
                txtVegano.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al guardar el producto: " + ex.Message);
            }
        
    }
    }
}
