import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/widgets/card_note_widgert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class VisualizationPage extends StatefulWidget {
  const VisualizationPage({Key? key}) : super(key: key);

  @override
  _VvisualizationPageState createState() => _VvisualizationPageState();
}

class _VvisualizationPageState extends State<VisualizationPage> {
  List notas = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(gradient: AppColors.blueGradientBar),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.26,
              top: MediaQuery.of(context).size.height * 0.06,
              child: Image.asset("assets/images/notes_logo_x_045.png"),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              child: Image.asset("assets/images/journal_white.png"),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 18, 50, 18),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Pesquisar",
                  hintStyle: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    letterSpacing: 0.15,
                    color: Colors.black.withOpacity(0.38),
                  ),
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          Expanded(
            child: StaggeredGridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 13.0,
              ),
              children: [
                CardNoteWidget(
                  title: 'Trabalho casa',
                  titleColor: AppColors.rosa,
                  text:
                      'Lorem ipsum dolor sit ametsed  incididunt ut labore et dolore aliqua, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.',
                  date: '26/09/2021',
                  icon: [
                    Icon(
                      Icons.date_range,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Lembrar compra',
                  titleColor: AppColors.verde,
                  text:
                      '- Ipsum dolor sit amet, coorem ipsum dolor sit amet, consectereiusmod tempot dolore magna aliqua.',
                  date: '17/07/2021',
                  icon: [
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Trava zap',
                  titleColor: AppColors.roxo,
                  text:
                      'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  inLorem ipsum dolor sit amet, consecteraliqua.',
                  date: '17/02/2021',
                  icon: [
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Pessoas Cringe',
                  titleColor: AppColors.ciano,
                  text:
                      'Lorem ipsum dolor sit amet, cons, consecter Lorem ipsum dolor sit amet, consecter.',
                  date: '29/09/2020',
                  icon: [
                    Icon(
                      Icons.date_range,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Reunião do grupo de treinamento',
                  titleColor: AppColors.amarelo,
                  text:
                      '- Ipsadipiscing elit, sed  incididuntscinecter Lorem ipsum dolor sit ameto eiusmod tempordolore magna aliqua.',
                  date: '26/08/2021',
                  icon: [],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Não esquecer',
                  titleColor: Colors.green,
                  text:
                      'Comecter Lorem ipsum dolor sit ametter Lorem ipsum dolor sit amecter Lorem ipsum dolor sit amet.',
                  date: '26/08/2021',
                  icon: [
                    Icon(
                      Icons.date_range,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Reunião com os stakeholders',
                  titleColor: AppColors.amarelo,
                  text:
                      '- Ipsum doecter Lorem ipsum dolrem ipsum dolor sit ametlore magna aliqua.',
                  date: '26/11/2020',
                  icon: [
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Reunião com os os',
                  titleColor: AppColors.roxo,
                  text:
                      '- Ipsum dolor sit amet, cor sit ametelit, sed do eiusmod tecter Lo ncidi. \n- Ut labore etgna aliqua.',
                  date: '21/12/2020',
                  icon: [
                    Icon(
                      Icons.date_range,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'lembretes para lembrar',
                  titleColor: AppColors.verde,
                  text:
                      '- Ipsum dolor sit amet, consectempor incidi. \n- tur. \n- Adipiscing elit, sed do eiusmod a aliqua.',
                  date: '21/02/2021',
                  icon: [],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Faculdade',
                  titleColor: AppColors.rosa,
                  text:
                      '- Ipsum dolor sit ng elit, sed doamet, consectur. \n- Adipiscii et dolore magna aliqua.',
                  date: '23/02/2021',
                  icon: [
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
                CardNoteWidget(
                  title: 'Ideias para o APP',
                  titleColor: AppColors.amarelo,
                  text:
                      '- Ipsum dolor sit ametncidi. \n- Ut labore sed do eiusmod mpor incidi. \n- Ut laborna aliqua.',
                  date: '26/05/2020',
                  icon: [
                    Icon(
                      Icons.date_range,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                  onTap: () {},
                ),
              ],
              staggeredTiles: [
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
                const StaggeredTile.fit(1),
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewNotePage()));
        },
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            gradient: AppColors.blueGradient,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                offset: Offset(0.0, 1.0),
                blurRadius: 18.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.14),
                offset: Offset(0.0, 6.0),
                blurRadius: 10.0,
              ),
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0.0, 3),
                  blurRadius: 5.0,
                  spreadRadius: -1.0),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
