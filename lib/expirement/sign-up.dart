import 'package:flutter/material.dart';



class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
     
      body: Center(

        // Remove debug
        child: Container(
          height: 0.9 * MediaQuery.of(context).size.height,
          width: 0.9 * MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(children: [
                  SizedBox(
                          width: 150,
                          child: TextField(
                                
                                decoration: InputDecoration(
                                  hintText: 'Juan',
                                  labelText: 'FirstName',
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(borderRadius: 
                                  BorderRadius.circular(1)
                                   ),                          
                                  ),                          
                              )
                ),      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                            width: 150,
                            child: TextField(
                                
                                  decoration: InputDecoration(
                                    hintText: 'Dela Cruz',
                                    labelText: 'Last Name',
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    border: OutlineInputBorder(borderRadius: 
                                    BorderRadius.circular(1)
                                     ),                          
                                    ),                          
                                )
                  ),
                ),
                ]
                ),
                Column(children: [Row(
                  children: [
                    SizedBox(
                      width: 70,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'R',
                                    labelText: 'MI',
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    border: OutlineInputBorder(borderRadius: 
                                    BorderRadius.circular(1)
                                     ), 
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 70,
                        child: TextField(
                          decoration: InputDecoration(
                           hintText: 'jr',
                                      labelText: 'Suffix',
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(borderRadius: 
                                      BorderRadius.circular(1)
                                       ), 
                          ),
                        ),
                      ),
                    )
                  ],
                )],
                ),
                 Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                           hintText: 'dd/mm/yy',
                                      labelText: 'Birthday',
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(borderRadius: 
                                      BorderRadius.circular(1)
                                       ), 
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 100,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Male',
                                        labelText: 'Sex',
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        border: OutlineInputBorder(borderRadius: 
                                        BorderRadius.circular(1)
                                         ), 
                          ),
                        ),
                      ),
                    )
                    
                  ],  
                )],
              ),
              Column(
                children: [Row(
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '+63',
                                        labelText: 'Contact No.',
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        border: OutlineInputBorder(borderRadius: 
                                        BorderRadius.circular(1)
                                         ), 
                        ),
                      ),
                    )
                  ],
                )],
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Column(
                    children: [SizedBox(
                      width: 300,
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Block 1 Lot 1 Marilao Grand Villas',
                                            labelText: 'Uni No./ Street / Village',
                                            floatingLabelBehavior: FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(borderRadius: 
                                            BorderRadius.circular(1)
                                             ), )                
                      ),
                    ),
                    Column(
                children: [Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                           hintText: 'Sample',
                                      labelText: 'Region',
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(borderRadius: 
                                      BorderRadius.circular(1)
                                       ), 
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Sample',
                                        labelText: 'Province',
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        border: OutlineInputBorder(borderRadius: 
                                        BorderRadius.circular(1)
                                         ), 
                          ),
                        ),
                      ),
                    )
                    
                  ],  
                )],
              ),
              Column(
                children: [Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                           hintText: 'Sample',
                      	                labelText: 'Municipality',
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(borderRadius: 
                                      BorderRadius.circular(1)
                                       ), 
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Sample',
                                        labelText: 'Baranggay',
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        border: OutlineInputBorder(borderRadius: 
                                        BorderRadius.circular(1)
                                         ), 
                          ),
                        ),
                      ),
                    )
                    
                  ],  
                )],
              ),
              Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
              SizedBox(
                height: 5,
              ),
               Column(
                children: [Row(
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '',
                                        labelText: 'UserName.',
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        border: OutlineInputBorder(borderRadius: 
                                        BorderRadius.circular(1)
                                         ), 
                        ),
                      ),
                    )
                  ],
                )],
                
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  children: [Row(
                    children: [
                      SizedBox(
                        width: 180,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '',
                                          labelText: 'Password',
                                          floatingLabelBehavior: FloatingLabelBehavior.always,
                                          border: OutlineInputBorder(borderRadius: 
                                          BorderRadius.circular(1)
                                           ), 
                          ),
                        ),
                      )
                    ],
                  )],
                  
              ),
               ),
              
                    ],
                  ),
                ],
              ),
              ],
            ),  
                
        ),
        
      )
      )
      );
  }
} 