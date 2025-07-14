import 'package:flutter/material.dart';
import 'package:malooz/core/constant/app_colors.dart';
import 'package:malooz/core/constant/app_padding.dart';
import 'package:malooz/core/utls/utls.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: Utils.appBar(
        context: context,
        title: 'Download',
        isTitleCenter: false,
        backgroundColor: AppColors.black
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 33,
          ),
          Expanded(
            child: Utils.buildList(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                widget: (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/home/movie.png',
                        width: 65,
                        height: 65,
                      ),
                      tileColor: Color(0xFF121417),
                      contentPadding: AppPadding.padding(vertical: 8,horizontal: 8),
                      title: Text(
                          'Match starts in 15 minutes!',
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.white
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1hr 12min',style: textTheme.bodySmall?.copyWith(
                            fontSize: 10,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400
                          ),),
                          const SizedBox(height: 12,),
                          Utils.primaryButton(title: 'Watch Now',
                              width: 80,
                              height: 22,
                              borderRadius: 3,
                              fontSize: 10,
                              textColor: AppColors.white,
                              onPressed: (){})

                        ],
                      ),
                      trailing: const Icon(Icons.delete_forever_outlined,size: 24 ,color: AppColors.midGrey,),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
