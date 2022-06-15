import 'package:brand/providers/brand_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BrandScreen extends StatefulWidget {
  const BrandScreen({Key? key}) : super(key: key);
  @override
  _BrandScreenState createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Brand',
        style: TextStyle (color:Colors.black,fontWeight:  FontWeight.bold)
        ),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),

      body:
      Consumer<brandProvider>(
        builder: (context, provider, _) {
          return ListView.builder(
            itemCount: provider.brandModel.data?.length,  
            itemBuilder:(context, index) {
              return ListTile(
                title: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height,
                      child: Image.network(
                        provider.brandModel.data![index].imageLink!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                   provider.brandModel.data![index].name!, 
                   style: const TextStyle(
                    fontSize: 24,
                   ), 
                    ),
                    Text(provider.brandModel.data![index].description!),
                  ],
                ),
              );
            }
          );
        },
      ),
    );
  }
}
    
