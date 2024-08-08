import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200), 
        child: AppBar(
          backgroundColor: Colors.deepPurple,
          flexibleSpace: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.insert_photo_outlined, color: Colors.white),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Menu Pressionado')),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove_red_eye, color: Colors.white),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Visualizar Dados')),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.question_mark_outlined, color: Colors.white),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Tirar Dúvidas')),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.supervised_user_circle_outlined, color: Colors.white),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Editar Perfil')),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.verified_user_outlined, color: Colors.white),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Realizar Verificação')),
                        );
                      },
                    ),
                  ],
                ),
              ),
              
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Text(
                      'A fatura fechou. Pague já e libere seu limite',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
     body: const Column(
        children: [
          Card(
            margin: EdgeInsets.all(16),
            elevation: 5,
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text('Convide seus amigos'),
              subtitle: Text('Desbloqueie brasões incríveis.'),
            ),
          ),
          SizedBox(height: 0),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(16),
                    elevation: 5,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text('Cartão de Crédito'),
                      subtitle: Text('Facilidades ilimitadas em compras'),
                    ),
                  ),
                ),
                SizedBox(height: 8), 
                Expanded(
                  child: Card(
                    margin: EdgeInsets.all(16),
                    elevation: 5,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      title: Text('Cheque Especial Master'),
                      subtitle: Text('Aquela força especial para o seu mês anormal '),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}