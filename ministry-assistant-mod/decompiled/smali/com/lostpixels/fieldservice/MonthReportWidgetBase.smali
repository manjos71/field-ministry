.class public abstract Lcom/lostpixels/fieldservice/MonthReportWidgetBase;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smonlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->onlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smupdateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static buildUpdate(Landroid/content/Context;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)Landroid/widget/RemoteViews;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    .line 67
    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 70
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 71
    const-string v5, "inputMode"

    const-string v6, "hhmm"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hhmm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    const v8, 0x7f0c00b9

    if-ne v2, v8, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 73
    :goto_0
    const-string v10, "ReportDensity"

    invoke-interface {v4, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 76
    :goto_1
    const-string v10, "widgetsettings.xml"

    invoke-virtual {v0, v10, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 77
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bgcolor1_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v12, -0xc0c0d

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 78
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "transparent_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 80
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fontcolor1_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const v14, -0x777778

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 81
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fontcolor2_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, -0xcc4a1b

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 83
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fontsize1_"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_2

    const/16 v15, 0x12

    goto :goto_2

    :cond_2
    const/16 v15, 0x16

    :goto_2
    invoke-interface {v10, v6, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 84
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fontsize2_"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_3

    const/16 v8, 0xe

    goto :goto_3

    :cond_3
    const/16 v8, 0x12

    :goto_3
    invoke-interface {v10, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 87
    const-string v9, "showVideo"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 89
    const-string v9, "MyPrefsSettings"

    invoke-virtual {v0, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 90
    const-string v10, "whenShowRBC"

    const-string v15, "pioneer"

    invoke-interface {v9, v10, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    sget-object v10, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 92
    const-string v15, "never"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 93
    sget-object v9, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_4

    .line 94
    :cond_4
    const-string v15, "always"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 95
    sget-object v9, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_4

    :cond_5
    move-object v9, v10

    .line 97
    :goto_4
    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v15

    if-lez v15, :cond_6

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v15, 0x1

    .line 99
    :goto_6
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v16

    .line 102
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v17

    if-lez v17, :cond_8

    goto :goto_8

    :cond_8
    const/16 v17, 0x0

    :goto_7
    move-object/from16 p1, v3

    goto :goto_9

    :cond_9
    :goto_8
    const/16 v17, 0x1

    goto :goto_7

    .line 103
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v18

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v19

    if-nez v19, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v19

    if-lez v19, :cond_a

    goto :goto_a

    :cond_a
    const/16 v19, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/16 v19, 0x1

    .line 107
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v20

    move/from16 v21, v4

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v4

    move/from16 p1, v8

    .line 111
    new-instance v8, Landroid/widget/RemoteViews;

    move/from16 v22, v15

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 113
    sget-object v15, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v9, v15, :cond_c

    :goto_c
    const/4 v9, 0x1

    goto :goto_d

    :cond_c
    if-ne v9, v10, :cond_d

    if-eqz p3, :cond_e

    .line 116
    :cond_d
    sget-object v10, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-eq v9, v10, :cond_e

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    :goto_d
    if-nez v9, :cond_f

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v10

    if-lez v10, :cond_f

    const/4 v9, 0x1

    :cond_f
    const/16 v15, 0x8

    if-eqz v21, :cond_14

    const v10, 0x7f0c00b9

    if-ne v2, v10, :cond_13

    const v10, 0x7f090387

    .line 123
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f09038a

    .line 124
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090393

    .line 125
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090394

    .line 126
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v22, :cond_10

    const/4 v10, 0x0

    goto :goto_e

    :cond_10
    const/16 v10, 0x8

    :goto_e
    const v15, 0x7f090372

    .line 127
    invoke-virtual {v8, v15, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v17, :cond_11

    const/4 v10, 0x0

    goto :goto_f

    :cond_11
    const/16 v10, 0x8

    :goto_f
    const v15, 0x7f090374

    .line 128
    invoke-virtual {v8, v15, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v19, :cond_12

    const/4 v10, 0x0

    goto :goto_10

    :cond_12
    const/16 v10, 0x8

    :goto_10
    const v15, 0x7f090376

    .line 129
    invoke-virtual {v8, v15, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_11

    :cond_13
    const v10, 0x7f09062a

    .line 131
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090643

    .line 132
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090644

    .line 133
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f09062c

    .line 134
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_11

    :cond_14
    const v10, 0x7f0c00b9

    if-ne v2, v10, :cond_15

    const v10, 0x7f090387

    const/4 v15, 0x0

    .line 138
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f09038a

    .line 139
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090393

    .line 140
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090394

    .line 141
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_11

    :cond_15
    const v10, 0x7f09062a

    const/4 v15, 0x0

    .line 143
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090643

    .line 144
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f090644

    .line 145
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f09062c

    .line 146
    invoke-virtual {v8, v10, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_11
    const v10, 0x7f09062b

    const v15, 0x7f0c00b9

    if-ne v2, v15, :cond_17

    if-eqz v9, :cond_16

    const/4 v9, 0x0

    goto :goto_12

    :cond_16
    const/16 v9, 0x8

    :goto_12
    const v15, 0x7f090389

    .line 151
    invoke-virtual {v8, v15, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_14

    :cond_17
    if-eqz v9, :cond_18

    const/4 v9, 0x0

    goto :goto_13

    :cond_18
    const/16 v9, 0x8

    .line 153
    :goto_13
    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_14
    if-nez v21, :cond_1c

    const v15, 0x7f0c00b9

    if-ne v2, v15, :cond_1a

    if-eqz p1, :cond_19

    const/4 v9, 0x0

    :goto_15
    const v15, 0x7f090394

    goto :goto_16

    :cond_19
    const/16 v9, 0x8

    goto :goto_15

    .line 157
    :goto_16
    invoke-virtual {v8, v15, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_19

    :cond_1a
    if-eqz p1, :cond_1b

    const/4 v9, 0x0

    :goto_17
    const v15, 0x7f090644

    goto :goto_18

    :cond_1b
    const/16 v9, 0x8

    goto :goto_17

    .line 159
    :goto_18
    invoke-virtual {v8, v15, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1c
    :goto_19
    if-eqz p2, :cond_1e

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v10, 0x2

    .line 168
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v15, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_1d

    const/4 v9, 0x1

    goto :goto_1a

    :cond_1d
    const/4 v9, 0x0

    :goto_1a
    move v15, v9

    goto :goto_1b

    :cond_1e
    const/4 v15, 0x0

    .line 171
    :goto_1b
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "LLLL yyyy"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    move/from16 v17, v15

    .line 174
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 175
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_1f

    move/from16 v19, v5

    move/from16 v21, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 177
    invoke-virtual {v9, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v15, v6, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1c

    :cond_1f
    move/from16 v19, v5

    move/from16 v21, v6

    .line 178
    :goto_1c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090616

    invoke-virtual {v8, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v8, v6, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v5, 0x7f090678

    .line 182
    invoke-static {v11, v12}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getWidgetBackground(IZ)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v5, 0x7f090638

    const v9, 0x7f0905f4

    const v10, 0x7f0905f3

    const v11, 0x7f0905f2

    const v12, 0x7f090601

    const v15, 0x7f0c00b9

    if-ne v2, v15, :cond_21

    const v15, 0x7f090323

    if-eqz p5, :cond_20

    const v6, 0x7f1200ae

    .line 187
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v15, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1d

    :cond_20
    const v6, 0x7f120413

    .line 189
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v15, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    :goto_1d
    invoke-virtual {v8, v15, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    int-to-float v1, v1

    .line 192
    invoke-static {v8, v15, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v6, 0x7f1204a3

    .line 194
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v15, 0x7f090344

    invoke-virtual {v8, v15, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v8, v15, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 196
    invoke-static {v8, v15, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v6, 0x7f090317

    .line 198
    invoke-virtual {v8, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v8, v6, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 200
    invoke-static {v8, v6, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v6, 0x7f090318

    .line 202
    invoke-virtual {v8, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v8, v6, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 204
    invoke-static {v8, v6, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v3, 0x7f090319

    .line 206
    invoke-virtual {v8, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v8, v3, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 208
    invoke-static {v8, v3, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v3, 0x7f120549

    .line 210
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090355

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f090355

    .line 211
    invoke-virtual {v8, v3, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 212
    invoke-static {v8, v3, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v3, 0x7f1204b8

    .line 214
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090345

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f090345

    .line 215
    invoke-virtual {v8, v3, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 216
    invoke-static {v8, v3, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v3, 0x7f120500

    .line 218
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09034a

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f09034a

    .line 219
    invoke-virtual {v8, v3, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 220
    invoke-static {v8, v3, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v3, 0x7f12031d

    .line 222
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090343

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f090343

    .line 223
    invoke-virtual {v8, v3, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 224
    invoke-static {v8, v3, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v3, 0x7f1205f6

    .line 226
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090354

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f090354

    .line 227
    invoke-virtual {v8, v3, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 228
    invoke-static {v8, v3, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    move/from16 v3, v21

    int-to-float v1, v3

    .line 231
    invoke-static {v8, v12, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v3, 0x7f09062b

    .line 232
    invoke-static {v8, v3, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 233
    invoke-static {v8, v11, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 234
    invoke-static {v8, v10, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 235
    invoke-static {v8, v9, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v15, 0x7f090644

    .line 236
    invoke-static {v8, v15, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v4, 0x7f09062c

    .line 237
    invoke-static {v8, v4, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 238
    invoke-static {v8, v5, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v6, 0x7f09062a

    .line 239
    invoke-static {v8, v6, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v7, 0x7f090643

    .line 240
    invoke-static {v8, v7, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v13, 0x7f090616

    .line 242
    invoke-static {v8, v13, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    goto :goto_1e

    :cond_21
    move/from16 v3, v21

    const v4, 0x7f09062c

    const v6, 0x7f09062a

    const v7, 0x7f090643

    const v13, 0x7f090616

    const v15, 0x7f090644

    int-to-float v3, v3

    .line 244
    invoke-static {v8, v12, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    const v9, 0x7f09062b

    .line 245
    invoke-static {v8, v9, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 246
    invoke-static {v8, v15, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 247
    invoke-static {v8, v4, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 248
    invoke-static {v8, v5, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 249
    invoke-static {v8, v7, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 250
    invoke-static {v8, v6, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    int-to-float v1, v1

    .line 252
    invoke-static {v8, v13, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->setTextSize(Landroid/widget/RemoteViews;IF)V

    :goto_1e
    if-eqz p2, :cond_28

    if-eqz v17, :cond_28

    if-eqz p5, :cond_23

    .line 258
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDoneMinistry()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "\u2713"

    goto :goto_1f

    :cond_22
    const-string v1, "\u2a09"

    :goto_1f
    invoke-virtual {v8, v12, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move/from16 v3, v19

    :goto_20
    const v15, 0x7f0c00b9

    goto :goto_21

    .line 260
    :cond_23
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    move/from16 v3, v19

    invoke-static {v1, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v12, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_20

    :goto_21
    if-ne v2, v15, :cond_27

    if-eqz v16, :cond_24

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_22

    .line 266
    :cond_24
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_22
    if-eqz v18, :cond_25

    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_23

    .line 271
    :cond_25
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_23
    if-eqz v20, :cond_26

    .line 274
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0905f4

    invoke-virtual {v8, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_24

    :cond_26
    const v4, 0x7f0905f4

    .line 276
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 279
    :cond_27
    :goto_24
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09062b

    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v15, 0x7f090644

    invoke-virtual {v8, v15, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f09062c

    invoke-virtual {v8, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 282
    invoke-static/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudiesAsString(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v7, 0x7f090643

    invoke-virtual {v8, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f09062a

    invoke-virtual {v8, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f09062b

    goto :goto_27

    .line 286
    :cond_28
    const-string v1, "0"

    if-eqz p5, :cond_29

    .line 287
    const-string v3, "-"

    invoke-virtual {v8, v12, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_25
    const v15, 0x7f0c00b9

    goto :goto_26

    .line 289
    :cond_29
    invoke-virtual {v8, v12, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_25

    :goto_26
    if-ne v2, v15, :cond_2a

    .line 293
    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v8, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0905f4

    .line 295
    invoke-virtual {v8, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_2a
    const v3, 0x7f09062b

    .line 298
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v15, 0x7f090644

    .line 299
    invoke-virtual {v8, v15, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f09062c

    .line 300
    invoke-virtual {v8, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v8, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f090643

    .line 302
    invoke-virtual {v8, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v6, 0x7f09062a

    .line 303
    invoke-virtual {v8, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 306
    :goto_27
    invoke-virtual {v8, v12, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 307
    invoke-virtual {v8, v3, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v15, 0x7f0c00b9

    if-ne v2, v15, :cond_2b

    .line 309
    invoke-virtual {v8, v11, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 310
    invoke-virtual {v8, v10, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v4, 0x7f0905f4

    .line 311
    invoke-virtual {v8, v4, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_2b
    const v15, 0x7f090644

    .line 313
    invoke-virtual {v8, v15, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v4, 0x7f09062c

    .line 314
    invoke-virtual {v8, v4, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 315
    invoke-virtual {v8, v5, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v7, 0x7f090643

    .line 316
    invoke-virtual {v8, v7, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v6, 0x7f09062a

    .line 317
    invoke-virtual {v8, v6, v14}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string v2, "LoadFile"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    invoke-virtual {v1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0xc000000

    const/4 v15, 0x0

    .line 326
    invoke-static {v0, v15, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0903d8

    .line 328
    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v8
.end method

.method private static onlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z
    .locals 3

    .line 338
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 339
    const-string v0, "ReportDensity"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 340
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 342
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    .line 343
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v2

    .line 344
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v2, v0, v1}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->showOnlyBeenOutInMinistryMonth(ILcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method private static setTextSize(Landroid/widget/RemoteViews;IF)V
    .locals 1

    const/4 v0, 0x2

    .line 334
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    return-void
.end method

.method public static updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 9

    .line 349
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0c00b9

    const v6, 0x7f0c00b9

    goto :goto_0

    .line 350
    :cond_0
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    move v6, v0

    .line 353
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    goto :goto_1

    .line 394
    :cond_2
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v8

    .line 395
    invoke-static {p0, v8}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->onlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 398
    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer(Ljava/util/Date;)Z

    move-result v5

    .line 399
    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 400
    invoke-static/range {v1 .. v7}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :try_start_2
    invoke-virtual {v8}, Lio/realm/Realm;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v8}, Lio/realm/Realm;->close()V

    .line 403
    throw p0

    .line 355
    :goto_1
    invoke-static {v1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 357
    :try_start_3
    new-instance p1, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$1;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$1;-><init>()V

    invoke-virtual {p0, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    :try_start_4
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 366
    new-instance p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$2;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    const-string p1, "Widget"

    invoke-static {v1, p0, p1}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 364
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 365
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 406
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    .locals 6

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 412
    invoke-static/range {v0 .. v5}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->buildUpdate(Landroid/content/Context;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)Landroid/widget/RemoteViews;

    move-result-object p0

    .line 413
    invoke-virtual {p1, v1, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5

    .line 423
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 424
    const-string v0, "widgetsettings.xml"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 425
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 426
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bgcolor1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bgcolor2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontcolor1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontcolor2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    .line 438
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .line 443
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 449
    const-string v1, "com.lostpixels.fieldservice.widget.UpdateMonthReport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    .line 451
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/lostpixels/fieldservice/MonthReportWidget;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 453
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/MonthReportWidget4x1;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 455
    array-length v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    array-length v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v3, v4

    new-array v3, v3, [I

    if-eqz v0, :cond_2

    .line 458
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v4, :cond_3

    aget v7, v0, v5

    .line 459
    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :cond_3
    if-eqz v1, :cond_4

    .line 464
    array-length v0, v1

    :goto_3
    if-ge v2, v0, :cond_4

    aget v4, v1, v2

    .line 465
    aput v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 470
    :cond_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void

    .line 472
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 12

    .line 480
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 481
    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/lostpixels/fieldservice/MonthReportWidget;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p3

    .line 483
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/lostpixels/fieldservice/MonthReportWidget4x1;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    .line 487
    array-length v0, p3

    array-length v2, v7

    add-int/2addr v0, v2

    if-lez v0, :cond_6

    .line 489
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->ministryFileExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceFileExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    goto/16 :goto_7

    .line 547
    :cond_1
    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v8

    .line 549
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 550
    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2, v8, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer(Ljava/util/Date;)Z

    move-result v4

    .line 551
    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2, v8, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v3

    .line 552
    invoke-static {p1, v8}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->onlyShowDoneMinistry(Landroid/content/Context;Lio/realm/Realm;)Z

    move-result v6

    .line 555
    array-length v9, p3

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_3

    aget v2, p3, v11

    .line 556
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x7f0c00b9

    const v5, 0x7f0c00b9

    :goto_1
    move-object v0, p1

    goto :goto_2

    .line 557
    :cond_2
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    move v5, v0

    goto :goto_1

    .line 558
    :goto_2
    invoke-static/range {v0 .. v6}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V

    add-int/lit8 v11, v11, 0x1

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :cond_3
    move-object v0, p1

    .line 561
    array-length p1, v7

    :goto_3
    if-ge v10, p1, :cond_5

    aget v2, v7, v10

    .line 562
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    if-nez v5, :cond_4

    const v5, 0x7f0c00b8

    goto :goto_4

    .line 563
    :cond_4
    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 564
    :goto_4
    invoke-static/range {v0 .. v6}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILcom/lostpixels/fieldservice/internal/report/ServiceSession;ZIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 567
    :cond_5
    invoke-virtual {v8}, Lio/realm/Realm;->close()V

    move-object v1, p0

    :goto_5
    move-object v3, p3

    goto :goto_8

    :goto_6
    invoke-virtual {v8}, Lio/realm/Realm;->close()V

    .line 568
    throw p1

    .line 491
    :goto_7
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    .line 493
    :try_start_1
    new-instance v2, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$3;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$3;-><init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase;)V

    invoke-virtual {p1, v2}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    move-object v2, v0

    .line 504
    new-instance v0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;

    move-object v3, p3

    move-object v4, v1

    move-object v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$4;-><init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase;Landroid/content/Context;[ILandroid/appwidget/AppWidgetManager;[I)V

    move-object p1, v0

    move-object v0, v2

    const-string p3, "SearchActivity"

    invoke-static {v0, p1, p3}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->loadInternalFiles(Landroid/content/Context;Lcom/lostpixels/fieldservice/helpfunctions/FileManager$LoadOperationInterface;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, p0

    move-object p2, v0

    .line 500
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    .line 501
    throw p2

    :cond_6
    move-object v1, p0

    move-object v0, p1

    goto :goto_5

    .line 572
    :goto_8
    invoke-super {p0, v0, p2, v3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
