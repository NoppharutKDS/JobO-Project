import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../flutter_flow/lat_lng.dart';
import '../flutter_flow/place.dart';
import '../flutter_flow/uploaded_file.dart';
import '../services/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../services/firebase_auth/auth_util.dart';

String? averageRating(List<double>? ratings) {
  if (ratings == null || ratings.isEmpty) {
    return null;
  }
  double sum = 0;
  for (double rating in ratings) {
    sum += rating;
  }
  return (sum / ratings.length).toStringAsFixed(1);
}
