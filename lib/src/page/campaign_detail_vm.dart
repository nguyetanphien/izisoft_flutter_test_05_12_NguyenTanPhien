import 'package:izisoft_flutter_test_05_12_nguyentanphien/src/base/base_vm.dart';
import 'package:izisoft_flutter_test_05_12_nguyentanphien/src/model/author_model.dart';

class CampaignDetailVM extends BaseViewModel {
  String thumbnailImage = "";
  int? amountTarget;
  int? currentAmount;
  String avatar = "";
  String? nameUser;
  String? describe;
  int? startTime;
  int? endTime;
  int? dateLeft;
  String? job;
  double? percentDay;
  int? percentTarget;
  String? title;
  List<AuthorModel> listData = [];
  bool isExpanded = false;

  @override
  void onInit() {
    getCampaigns();
    
  }

  Future<void> getCampaigns() async {
    showLoading();
    final response = await api.apiServices.getCampaigns("1");
    if (response.id != null) {
      hideLoading();
      thumbnailImage = response.thumbnail ?? "";
      title = response.title ?? "";
      amountTarget = response.amount_target ?? 0;
      avatar = response.author?.avatar ?? "";
      nameUser = response.author?.name ?? "";
      describe = response.author?.describe ?? "";
      job = response.author?.job ?? "";
      startTime = response.startTime ?? 0;
      endTime = response.endTime ?? 0;
      currentAmount = response.current_amount ?? 0;
      dateLeft = date(endTime ?? 0, startTime ?? 0);
      percentDay = percent(amountTarget ?? 0, currentAmount ?? 0);
      listData.clear();
      listData.addAll(response.backers ?? []);
      percentTarget = (percentDay! * 100).toInt();
      notifyListeners();
    }
  }

  int date(int endTimeDay, int starTimeDay) {
    int milliSeconds = endTime ?? 0 - startTime!;
    final date = Duration(milliseconds: milliSeconds).inDays;
    return date;
  }

  double percent(int amountTarget, int currentAmount) {
    return (currentAmount - amountTarget) / amountTarget;
  }
}
