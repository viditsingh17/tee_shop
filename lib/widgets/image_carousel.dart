import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> imagesList;

  ImageCarousel(this.imagesList);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _imageIndex = 0;

  void _previousImage() {
    setState(() {
      _imageIndex = (_imageIndex > 0) ? _imageIndex - 1 : _imageIndex;
    });
//    print(_imageIndex);
  }

  void _nextImage() {
    setState(() {
      _imageIndex = (_imageIndex < widget.imagesList.length - 1)
          ? _imageIndex + 1
          : _imageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/placeholder.jpg',
            image:widget.imagesList[_imageIndex],
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: _previousImage,
              ),
              IndexIndicator(
                imageIndex: _imageIndex,
                numberOfDots: widget.imagesList.length,
              ),
              IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: _nextImage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IndexIndicator extends StatelessWidget {
  final int numberOfDots;
  final int imageIndex;

  const IndexIndicator({Key key, this.numberOfDots, this.imageIndex});

  Widget buildInactiveDot() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 6.0,
        width: 6.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }

  Widget buildActiveDot() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.black.withOpacity(0.9),
        ),
      ),
    );
  }

  List<Widget> buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDots; i++)
      dots.add(i==imageIndex? buildActiveDot(): buildInactiveDot());
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: buildDots(),
      ),
    );
  }
}
