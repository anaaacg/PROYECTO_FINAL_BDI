# Sistema de base de datos para la heladeria "Sweetice"

## Introduccion

Este documento tiene como objetivo la descripción del diseño e implementacion de la base de datos para una heladería. En este negocio, todos los dias se manega gran magnitud de datos relacionados con la gestion de productos, ventas y pedidos lo que hace que manejar todo esto de forma manual pueda generar perdidas y dificultades en temas como reportes, manejo de stock, cuentas, etc.
Frente a esta realidad, se propone el diseño de una base de datos relacional que permita almacenar la información de manera organizada, consistente y segura, facilitando el registro de las operaciones diarias de la heladería y el acceso rápido a datos clave para la toma de decisiones. Este documento presentará el contexto del negocio, los requerimientos de información, el modelo de datos propuesto y las ventajas que aporta esta solución en términos de control, trazabilidad y eficiencia en la gestión del negocio.

## Problemática

- Mal manejo de stock de helados, insumos y toppings, generando faltantes o sobrantes innecesarios.
- Dificultad para generar reportes claros de ventas diarias, semanales y mensuales.
- Falta de control sobre qué productos se venden más y cuáles tienen baja rotación.
- Errores frecuentes en el registro manual de pedidos y ventas.
- Poca trazabilidad de los movimientos de inventario (entradas, salidas, ajustes).
- Ausencia de un historial ordenado de clientes y sus preferencias de compra.
- Dificultad para registrar y controlar horarios, turnos y comisiones de empleados.
- Información dispersa en distintas hojas o cuadernos, lo que provoca pérdida de datos.
- Demora en la toma de decisiones por no contar con información actualizada y confiable.
- Imposibilidad de crecer o implementar nuevas funcionalidades (delivery, promociones, etc.) por falta de una base de datos estructurada.

## Objetivo general

Diseñar e implementar una base de datos relacional que permita a la heladería gestionar de forma organizada y segura su información de productos, inventarios, ventas, clientes, empleados y sucursales, con el fin de mejorar el control del negocio, reducir errores en los registros y facilitar la generación de reportes para la toma de decisiones.

## Objetivos específicos

- Identificar y analizar los procesos principales de la heladería (ventas, inventario, clientes y empleados) para determinar los datos que deben almacenarse.
- Diseñar un modelo entidad–relación que represente de manera clara las tablas, atributos y relaciones necesarias para el negocio.
- Implementar la base de datos relacional en SQL Server, creando tablas, llaves primarias y llaves foráneas.
- Garantizar la correcta administración del inventario de productos e insumos mediante registros de entradas, salidas y ajustes.
- Facilitar el registro y consulta de las ventas realizadas, asociándolas a productos, clientes y empleados responsables.
- Permitir la generación de reportes básicos (ventas por período, productos más vendidos, stock disponible, etc.) que apoyen la toma de decisiones en la heladería.

## Funcionalidades

- Modulo de productos e inventario
- Modulo de ventas
- Modulo de clientes
- Modulo de empleados
- Modulo de compras
- Reportes y consultas

## Diagrama Entidad-relacion:
https://lucid.app/lucidchart/65c943ff-4cda-4047-af0b-2abf8f27b615/edit?viewport_loc=173%2C322%2C2167%2C1017%2C0_0&invitationId=inv_8952c499-0e28-4c59-a48d-37f2ec1ee017

## Diapositiva
https://gamma.app/docs/Documentacion-Tecnica-y-Funcional-de-la-Heladeria-Sweetice-ovnj0dysgfpz1ew


