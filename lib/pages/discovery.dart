import 'package:cafe_app/widgets/interior_card.dart';
import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 8),
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: -2,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'π λΉμ μ μν μΆμ² μΉ΄ν',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 12),
                    Column(
                      children: [
                        Card(
                          elevation: 0,
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            title: Text(
                              'κ³΅μ°¨ λμ°λ³μμ ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text('137m'),
                            tileColor: Color.fromRGBO(242, 244, 245, 1),
                            onTap: () {},
                          ),
                        ),
                        Card(
                          elevation: 0,
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            title: Text(
                              'λ§μκ·Έλμ΄ κ°μ°½μ­μ ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text('71m'),
                            tileColor: Color.fromRGBO(242, 244, 245, 1),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'μ¬μ©μ μ νΈλ κΈ°λ°',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 24),
            Divider(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Text(
                'μ’λ₯λ³λ‘ μ°ΎκΈ°',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Wrap(
              spacing: 8,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'νλμ°¨μ΄μ¦',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'κ°μΈμΉ΄ν',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'λ² μ΄μ»€λ¦¬ μΉ΄ν',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'λ μ°Ύμλ³΄κΈ°',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),
            Divider(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Text(
                'ν¬κΈ°λ³λ‘ μ°ΎκΈ°',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Wrap(
              spacing: 8,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'μν',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'μ€ν',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'λν',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(height: 2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Text(
                'λΆμκΈ°λ³λ‘ μ°ΎκΈ°',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                InteriorCard(
                  tag: 'μ°λ»ν',
                  aroundCount: 1,
                  color: Colors.greenAccent.shade400.withOpacity(0.7),
                ),
                InteriorCard(
                  tag: 'λͺ¨λΈν€',
                  aroundCount: 3,
                  color: Colors.black12.withOpacity(0.7),
                ),
                InteriorCard(
                  tag: 'λ νΈλ‘',
                  aroundCount: 3,
                  color: Colors.deepPurpleAccent.withOpacity(0.7),
                ),
                InteriorCard(
                  tag: 'μ°λν€',
                  aroundCount: 3,
                  color: Colors.brown.withOpacity(0.9),
                ),
                InteriorCard(
                  tag: 'λͺ¨λ',
                  aroundCount: 3,
                  color: Colors.indigo.withOpacity(0.9),
                ),
                InteriorCard(
                    tag: 'λΉν°μ§',
                    aroundCount: 3,
                    color: Colors.amberAccent.withOpacity(0.9),
                    textColor: Colors.black),
                InteriorCard(
                  tag: 'λ―Έλλ©',
                  aroundCount: 3,
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Text(
                            'λ μ°Ύμλ³΄κΈ°',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
