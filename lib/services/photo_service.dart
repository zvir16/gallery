class PhotoService {
  int count = 0;
  int viewImage = 10;

  List<String> listImg = [
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460662_panda-4.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/1369460576_panda-2.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460609_panda-6.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_panda-9.jpg',
    'http://www.radionetplus.ru/uploads/posts/2013-05/thumbs/1369460627_pand9.jpg',
  ];

  List<String> getNextPhotoTile() {
    List<String> list = [];
    int end = this.count + viewImage;
    list = this.listImg.sublist(
          this.count,
          end,
        );

    if (viewImage + 10 <= listImg.length) {
      viewImage += 10;
    } else {
      viewImage = listImg.length;
    }

    return list;
  }

  int get listCount {
    return this.listImg.length ?? 0;
  }
}
