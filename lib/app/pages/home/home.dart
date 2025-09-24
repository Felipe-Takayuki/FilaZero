import 'package:filazero/app/widgets/bottom_bar_widget.dart';
import 'package:filazero/app/widgets/service_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Serviços",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // 2 items per row
                  childAspectRatio: 1.2, // Adjusts the height of the cards
                  children: [
                    ServiceCardWidget(
                      icon: Icons.check_box_outlined,
                      title: 'Agendar consulta',
                      subtitle: 'Encontre especialista disponíveis',
                      iconColor: Colors.blue.shade600,
                    ),
                    ServiceCardWidget(
                      icon: Icons.menu,
                      title: 'Meus Agendamentos',
                      subtitle: 'consulte suas consultas marcadas',
                      iconColor: Colors.green.shade600,
                    ),
                    ServiceCardWidget(
                      icon: Icons.access_time,
                      title: 'Historico',
                      subtitle: 'Veja consultas anteriores',
                      iconColor: Colors.purple.shade800,
                    ),
                    ServiceCardWidget(
                      icon: Icons.notifications,
                      title: 'Notificações',
                      subtitle: 'Lembrete e notificações',
                      iconColor: Colors.red.shade600,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}