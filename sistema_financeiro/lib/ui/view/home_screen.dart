import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => __HomeScreenStateState();
}

class __HomeScreenStateState extends State<HomeScreen> {
    bool _isFilterVisible = false;

    void _toggleFiltterVisibility(){
      setState(() {
        _isFilterVisible = !_isFilterVisible;
      });
    }

    Widget build(BuildContext context){
      final colorScheme = Theme.of(context).colorScheme;

      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Controle financeiro',
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                _isFilterVisible ? Icons.filter_list_off : Icons.filter_list,
              ),
              onPressed: _toggleFiltterVisibility,
              tooltip: _isFilterVisible ? 'Ocultar Filtros' : 'Mostrar Filtros'
            ),
            IconButton(
              icon: const Icon(Icons.receipt_long),
              onPressed: () {},
              tooltip: 'Visualizar todas as transasções',
            ),
          ],
        )
      );
    }
  }
