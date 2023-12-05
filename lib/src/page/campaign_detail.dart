import 'package:flutter/material.dart';
import 'package:izisoft_flutter_test_05_12_nguyentanphien/src/base/base_page.dart';
import 'package:izisoft_flutter_test_05_12_nguyentanphien/src/page/campaign_detail_vm.dart';

class CampaignDetail extends StatefulWidget {
  const CampaignDetail({super.key});

  @override
  State<CampaignDetail> createState() => _CampaignDetailState();
}

class _CampaignDetailState extends State<CampaignDetail>
    with MixinBasePage<CampaignDetailVM> {
  @override
  Widget build(BuildContext context) {
    return builder(() => Scaffold(
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(provider.thumbnailImage),
                              onError: (exception, stackTrace) {
                                const Icon(Icons.error);
                              },
                              fit: BoxFit.contain)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      provider.title ?? "",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      "${provider.dateLeft} day left",
                      style: const TextStyle(color: Colors.black54),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                  child: LinearProgressIndicator(
                    value: provider.percentDay,
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Target = ${provider.amountTarget}",
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                    const Spacer(),
                    Text(
                      "${provider.percentTarget} %",
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                              image: NetworkImage(provider.avatar),
                              fit: BoxFit.cover,onError: (exception, stackTrace) {
                                const Icon(Icons.error);
                              },),
                              
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          const Text(
                            "sponsored by",
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            provider.nameUser ?? "",
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green[200]),
                      child: Center(
                        child: Text(
                          provider.job ?? "",
                          style: const TextStyle(
                              fontSize: 15, color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      provider.describe ?? "",
                      style: const TextStyle(color: Colors.black45),
                      maxLines: provider.isExpanded ? null : 3,
                      overflow: TextOverflow.fade,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          provider.isExpanded = !provider.isExpanded;
                        });
                      },
                      child: Text(
                        provider.isExpanded ? 'collapse' : 'See More',
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                    itemCount: provider.listData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                            image: NetworkImage(
                                provider.listData[index].avatar ?? ""),
                            fit: BoxFit.cover,
                            onError: (exception, stackTrace) {
                              const Icon(Icons.error);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      child: const Text(
                        "BACK THIS PROJECTS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                )
              ],
            ),
          )),
        ));
  }

  @override
  CampaignDetailVM create() {
    return CampaignDetailVM();
  }

  @override
  void initialise(BuildContext context) {
    // TODO: implement initialise
  }
}
