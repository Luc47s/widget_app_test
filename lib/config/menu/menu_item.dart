import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Counter RiverPod',
      subTitle: 'contador de valor',
      link: '/counter_screen',
      icon: Icons.countertops_rounded),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios  Botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Targetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'SnackBars y dialogos',
      subTitle: 'Indicadores en Pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Control + Tiles',
      subTitle: 'Una Serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduccion a la aplicacion',
      subTitle: 'Sencillo tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'InfiniteScroll and Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Theme Changer',
      subTitle: 'cambiar modo del tema',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
