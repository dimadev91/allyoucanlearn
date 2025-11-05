import 'package:all_you_learn/exports.dart';
import 'package:all_you_learn/index_page.dart';

List<Widget> buildIndexWidgets({
  required List<TileData> tiles,
  required String searchText,
}) {
  final search = searchText.toLowerCase();
  List<Widget> widgetsToShow = [];

  if (searchText.isEmpty) {
    widgetsToShow = tiles.map((tile) {
      if (tile.children.isEmpty) {
        return ExpansionTile(
          title: Text(tile.title, style: kTextIndex),
          trailing: SizedBox.shrink(),
          tilePadding: EdgeInsets.only(left: 16, right: 16),
        );
      } else {
        return ExpansionTile(
          title: Text(tile.title, style: kTextPagesIndex),
          tilePadding: EdgeInsets.only(left: 16, right: 16),
          children: tile.children.map((child) {
            return Row(
              children: [
                TextButton(
                  onPressed: child.onPressed,
                  style: ButtonStyle(alignment: Alignment.centerLeft),
                  child: Text(child.text, style: kPagesStyle),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(child.contextNav, child.navigatorKey),
                  child: Icon(Icons.keyboard_arrow_right),
                ),
                const SizedBox(width: 15),
              ],
            );
          }).toList(),
        );
      }
    }).toList();
  } else {
    for (var tile in tiles) {
      // 1. Logica per la corrispondenza sul titolo (Genitore/ExpansionTile)
      if (tile.title.toLowerCase().contains(search)) {
        // Se il titolo corrisponde, aggiungi l'intera ExpansionTile,
        // proprio come nel blocco 'if (searchText.isEmpty)'
        if (tile.children.isEmpty) {
          widgetsToShow.add(
            ExpansionTile(
              title: Text(tile.title, style: kTextIndex),
              trailing: SizedBox.shrink(),
              tilePadding: EdgeInsets.only(left: 16, right: 16),
            ),
          );
        } else {
          widgetsToShow.add(
            ExpansionTile(
              title: Text(tile.title, style: kTextPagesIndex),
              tilePadding: EdgeInsets.only(left: 16, right: 16),
              children: tile.children.map((child) {
                return Row(
                  children: [
                    TextButton(
                      onPressed: child.onPressed,
                      style: ButtonStyle(alignment: Alignment.centerLeft),
                      child: Text(child.text, style: kPagesStyle),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        child.contextNav,
                        child.navigatorKey,
                      ),
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                    const SizedBox(width: 15),
                  ],
                );
              }).toList(),
            ),
          );
        }
      }

      // 2. Logica per la corrispondenza sui figli
      // (Questo blocco rimane separato e mostra i figli come righe singole,
      // replicando la tua logica originale per i figli)
      for (var child in tile.children) {
        if (child.text.toLowerCase().contains(search)) {
          widgetsToShow.add(
            Row(
              children: [
                const SizedBox(width: 15),
                TextButton(
                  onPressed: child.onPressed,
                  style: ButtonStyle(alignment: Alignment.centerLeft),
                  child: Text(child.text, style: kPagesStyle),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(child.contextNav, child.navigatorKey),
                  child: Icon(Icons.keyboard_arrow_right),
                ),
                const SizedBox(width: 15),
              ],
            ),
          );
        }
      }
    }
  }

  return widgetsToShow;
}
