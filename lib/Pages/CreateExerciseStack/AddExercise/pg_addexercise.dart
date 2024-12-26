import 'package:flutter/material.dart';
import 'package:gymlogix/Pages/CreateExerciseStack/AddNewExercise/pg_add_newex.dart';
import 'package:gymlogix/Pages/CreateExerciseStack/ViewExercise/pg_viewexercise.dart';
import 'package:gymlogix/app_settings/components/label.dart';
import 'package:gymlogix/app_settings/constants/app_assets.dart';
import 'package:gymlogix/app_settings/constants/app_colors.dart';

class PgAddexercise extends StatefulWidget {
  const PgAddexercise({super.key});

  @override
  State<PgAddexercise> createState() => _PgAddexerciseState();
}

class _PgAddexerciseState extends State<PgAddexercise> {
  int selectedIndex = 1;
  final List<String> percentages = ["0%", "10%", "20%"];
  bool meat = false;
  bool veg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    AppAssets.background,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => {Navigator.pop(context)},
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Label(
                            txt: "Exercise",
                            type: TextTypes.f_16_700,
                            forceColor: AppColors.whiteColor,
                          ),
                        ],
                      ),
                      Row(children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset(
                            AppAssets.search,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset(
                            AppAssets.meallist,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PgAddNewex()),
                            )
                          },
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image.asset(
                              AppAssets.add,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            height: 176,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.grey,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Label(
                              txt: "PPL Bulking",
                              type: TextTypes.f_16_700,
                              forceColor: AppColors.whiteColor,
                            ),
                            const Label(
                              txt: "Tue Aug 23, 2024",
                              type: TextTypes.f_14_500,
                              forceColor: AppColors.whiteColor,
                            ),
                          ]),
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset(
                          AppAssets.edit,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () => {
                            setState(() {
                              meat = !meat;
                            })
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.arrow_drop_down,
                                    size: 40,
                                    color: AppColors.blackColor,
                                  ),
                                  SizedBox(width: 10),
                                  Label(
                                    txt: "Neck",
                                    type: TextTypes.f_15_500,
                                  ),
                                ],
                              ),
                              Row(children: [
                                const Label(
                                    txt: "12", type: TextTypes.f_15_500),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    AppAssets.leg,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ])
                            ],
                          ),
                        ),
                        if (meat == true)
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PgViewexercise()),
                                        )
                                      },
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: SizedBox(
                                                  height: 55,
                                                  width: 55,
                                                  child: Image.asset(
                                                    AppAssets.program,
                                                    fit: BoxFit.contain,
                                                  ),
                                                )),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Label(
                                                  txt: "Squat",
                                                  type: TextTypes.f_15_500,
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.8,
                                                  child: const Label(
                                                    txt:
                                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                                    type: TextTypes.f_10_500,
                                                    forceColor: AppColors.grey,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.info,
                                              size: 20,
                                              color: AppColors.primaryColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ));
                            },
                          ),
                        SizedBox(height: meat == true ? 0 : 15),
                        GestureDetector(
                            onTap: () => {
                                  setState(() {
                                    veg = !veg;
                                  })
                                },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_down,
                                      size: 40,
                                      color: AppColors.blackColor,
                                    ),
                                    SizedBox(width: 10),
                                    Label(
                                      txt: "Neck",
                                      type: TextTypes.f_15_500,
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  const Label(
                                      txt: "12", type: TextTypes.f_15_500),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Image.asset(
                                      AppAssets.leg,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ])
                              ],
                            )),
                        if (veg == true)
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: SizedBox(
                                              height: 55,
                                              width: 55,
                                              child: Image.asset(
                                                AppAssets.program,
                                                fit: BoxFit.contain,
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Label(
                                              txt: "Squat",
                                              type: TextTypes.f_15_500,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.8,
                                              child: const Label(
                                                txt:
                                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                                type: TextTypes.f_10_500,
                                                forceColor: AppColors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.info,
                                          size: 20,
                                          color: AppColors.primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                      ]))))
        ],
      ),
    );
  }
}
