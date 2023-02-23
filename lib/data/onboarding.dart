
class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  
  UnbordingContent(
    title: 'APGAR Database',
    image: 'assets/image1',
    discription: "Record and Store APGAR Score"
  ),

  UnbordingContent(
    title: 'Register your Hospital',
    image: 'assets/image2',
    discription: "Get your Hospital on our Hospital listing"
  ),


];