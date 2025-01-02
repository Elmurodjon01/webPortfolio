import 'package:flutter/material.dart';
import 'package:webpage/home/model/dockIconModel.dart';

final List<ValueNotifier<bool>> hoverNotifiers =
    List.generate(20, (index) => ValueNotifier(false));

List<DockContentModel> dockContents = [
  DockContentModel(
    isHovered: hoverNotifiers[0],
    iconAddress: 'assets/icons/finder.png',
    label: 'Finder',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[1],
    iconAddress: 'assets/icons/mainMenu.png',
    label: 'Launchpad',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[2],
    iconAddress: 'assets/icons/safari.png',
    label: 'Safari',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[3],
    iconAddress: 'assets/icons/messages.png',
    label: 'Messages',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[4],
    iconAddress: 'assets/icons/mail.png',
    label: 'Mail',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[5],
    iconAddress: 'assets/icons/navigator.png',
    label: 'Navigator',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[6],
    iconAddress: 'assets/icons/photos.png',
    label: 'Photos',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[7],
    iconAddress: 'assets/icons/facetime.png',
    label: 'FaceTime',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[8],
    iconAddress: 'assets/icons/calendar.png',
    label: 'Calendar',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[9],
    iconAddress: 'assets/icons/contact.png',
    label: 'Contact',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[10],
    iconAddress: 'assets/icons/reminder.png',
    label: 'Reminder',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[11],
    iconAddress: 'assets/icons/notes.png',
    label: 'Notes',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[18],
    iconAddress: 'assets/icons/music.png',
    label: 'Music',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[12],
    iconAddress: 'assets/icons/appleTv.png',
    label: 'Apple TV',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[13],
    iconAddress: 'assets/icons/settings.png',
    label: 'Settings',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[14],
    iconAddress: 'assets/icons/viewer.png',
    label: 'Viewer',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[15],
    iconAddress: 'assets/icons/folder.png',
    label: 'Folder',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[16],
    iconAddress: 'assets/icons/book.png',
    label: 'Book',
  ),
  DockContentModel(
    isHovered: hoverNotifiers[17],
    iconAddress: 'assets/icons/trash.png',
    label: 'Trash',
  ),
];
