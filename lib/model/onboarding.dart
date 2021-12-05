class OnboardContent{
final String title;
final String descript;
final String img;
  OnboardContent( {required this.title,required this.descript,required this.img});
}

List<OnboardContent> contents=[
OnboardContent(
  title:'''Invest in real estate and
   farms from just R10''' ,
descript:'Own property and receive profit on your shares.',
img: 'assets/images/splash1.png'
   ),
   OnboardContent(
  title:'''Receive shares and get 
paid interest of up to 20%''' ,
descript:'''sell your tokens anytime you like and get
paid your investment plus profit.''',
img: 'assets/images/splash2.png'
   )
];