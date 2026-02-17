.class public Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;
.super Lcom/fima/cardsui/objects/RecyclableCard;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field idAddToReport:I

.field idReportPage:I

.field isBethelite:Z

.field mContext:Landroid/content/Context;

.field final monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 50
    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->isBethelite:Z

    return-void
.end method


# virtual methods
.method protected applyTo(Landroid/view/View;)V
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 83
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 84
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 85
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const-string v5, "MyPrefsSettings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 86
    const-string v5, "ReportDensity"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 89
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 90
    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 91
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v9

    const/4 v10, 0x1

    .line 92
    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v9, v2, v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v11

    .line 93
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v12

    .line 94
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v11, v12, v9, v8}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->showOnlyBeenOutInMinistryMonth(ILcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Date;)Z

    move-result v8

    .line 96
    const-string v13, "inputMode"

    const-string v14, "hhmm"

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 97
    const-string v14, "mileageKM"

    invoke-interface {v3, v14, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 98
    const-string v15, "showVideo"

    invoke-interface {v3, v15, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 99
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v16

    .line 100
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v17

    .line 101
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v18

    .line 102
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v19

    .line 103
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v20

    .line 104
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v21

    const/16 v22, 0x1

    .line 106
    const-string v10, "whenShowRBC"

    const-string v6, "pioneer"

    invoke-interface {v4, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v24, v2

    .line 107
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    move/from16 v25, v5

    .line 108
    const-string v5, "never"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    move/from16 v27, v8

    const-string v8, "always"

    if-eqz v26, :cond_0

    .line 109
    sget-object v10, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    :goto_0
    move-object/from16 v26, v9

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 111
    sget-object v10, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_0

    :cond_1
    move-object v10, v2

    goto :goto_0

    .line 113
    :goto_1
    const-string v9, "whenShowMilage"

    invoke-interface {v4, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 120
    :goto_2
    const-string v5, "MergeTractUI"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v5, 0x7f0905a0

    .line 156
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/fima/cardsui/objects/AbstractCard;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f09031d

    .line 157
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0905f8

    .line 158
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f090026

    .line 159
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090052

    .line 160
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move/from16 v28, v3

    const v3, 0x7f090034

    .line 161
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v29, v12

    const v12, 0x7f090024

    .line 162
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move/from16 v30, v15

    const v15, 0x7f09002e

    .line 163
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v31, v11

    const v11, 0x7f090007

    .line 164
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move/from16 v32, v14

    const v14, 0x7f090006

    .line 165
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v33, v14

    const v14, 0x7f09005c

    .line 166
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v34, v14

    const v14, 0x7f09005f

    .line 167
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v35, v14

    const v14, 0x7f090033

    .line 168
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v36, v14

    const v14, 0x7f09005e

    .line 169
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v37, v14

    const v14, 0x7f090035

    .line 170
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v38, v14

    const v14, 0x7f090055

    .line 171
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v39, v14

    const v14, 0x7f09002f

    .line 172
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v40, v14

    const v14, 0x7f09032d

    .line 173
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v41, v14

    const v14, 0x7f090330

    .line 174
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v42, v14

    const v14, 0x7f090341

    .line 175
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v43, v14

    const v14, 0x7f09000a

    .line 177
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v44, v14

    const v14, 0x7f090317

    .line 178
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v45, v14

    const v14, 0x7f09000c

    .line 179
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v46, v14

    const v14, 0x7f090318

    .line 180
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v47, v14

    const v14, 0x7f09000e

    .line 181
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v48, v14

    const v14, 0x7f090319

    .line 182
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v49, v14

    const v14, 0x7f090389

    .line 183
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v50, v11

    const v11, 0x7f090381

    .line 184
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v51, v15

    const v15, 0x7f09038f

    .line 185
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v52, v15

    const v15, 0x7f090391

    .line 186
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v53, v11

    const v11, 0x7f090372

    .line 187
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v54, v4

    const v4, 0x7f090374

    .line 188
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v55, v2

    const v2, 0x7f090376

    .line 189
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v56, v14

    const v14, 0x7f0902ec

    .line 191
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 192
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->idAddToReport:I

    .line 193
    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    if-eqz v27, :cond_6

    .line 197
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v14, 0x0

    if-eqz v5, :cond_4

    .line 200
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v6, :cond_8

    .line 202
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasDoneMinistry()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "\u2713"

    goto :goto_3

    :cond_5
    const-string v5, "\u2a09"

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    .line 206
    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_7

    .line 209
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v6, :cond_8

    .line 211
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_8
    :goto_4
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-static {v5, v13, v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-static {v5, v13, v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->isBethelite:Z

    if-eqz v3, :cond_9

    .line 219
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v5, 0x7f1201df

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 221
    :cond_9
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v5, 0x7f1204a3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v30, :cond_a

    if-eqz v15, :cond_a

    const/4 v14, 0x0

    .line 225
    invoke-virtual {v15, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    if-eqz v16, :cond_b

    .line 228
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-eqz v17, :cond_c

    .line 230
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v18, :cond_d

    .line 232
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    const/4 v2, 0x2

    .line 234
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v3

    .line 235
    invoke-virtual/range {v31 .. v31}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v4

    .line 236
    sget-object v5, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v10, v5, :cond_e

    move-object/from16 v6, v56

    .line 237
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v6, v54

    move-object/from16 v8, v55

    goto :goto_b

    :cond_e
    move-object/from16 v8, v55

    move-object/from16 v6, v56

    if-ne v10, v8, :cond_10

    .line 238
    invoke-virtual/range {v31 .. v31}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v14, 0x0

    goto :goto_a

    :cond_10
    :goto_8
    if-gt v4, v3, :cond_f

    sget-object v9, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v10, v9, :cond_11

    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    .line 242
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    move-object/from16 v6, v54

    goto :goto_b

    .line 240
    :goto_a
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :goto_b
    if-ne v6, v5, :cond_12

    move-object/from16 v5, v53

    .line 245
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_12
    move-object/from16 v5, v53

    if-ne v6, v8, :cond_14

    .line 246
    invoke-virtual/range {v31 .. v31}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneerOrMissionary()Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_d

    :cond_13
    :goto_c
    const/4 v14, 0x0

    goto :goto_e

    :cond_14
    :goto_d
    if-gt v4, v3, :cond_13

    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v6, v3, :cond_15

    goto :goto_c

    :cond_15
    const/4 v14, 0x0

    .line 250
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 248
    :goto_e
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    if-eqz v25, :cond_18

    if-nez v28, :cond_16

    move-object/from16 v3, v52

    .line 254
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_16
    move-object/from16 v3, v52

    .line 256
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_10
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeJan2016()Z

    move-result v3

    const v4, 0x7f090384

    const v5, 0x7f090386

    if-eqz v3, :cond_17

    move-object/from16 v3, p1

    .line 259
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_17
    move-object/from16 v3, p1

    .line 262
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_18
    move-object/from16 v3, p1

    :goto_11
    if-eqz v51, :cond_19

    .line 268
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v15, v51

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_19
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v4

    if-eqz v28, :cond_1a

    .line 272
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v5

    add-int/2addr v4, v5

    :cond_1a
    if-eqz v50, :cond_1b

    .line 274
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v11, v50

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    if-eqz v33, :cond_1c

    .line 277
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v33

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    if-eqz v34, :cond_1d

    .line 280
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v34

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    if-eqz v36, :cond_1e

    .line 283
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v36

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    if-eqz v35, :cond_1f

    .line 286
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v35

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    if-eqz v37, :cond_20

    .line 289
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v37

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20
    if-eqz v38, :cond_21

    .line 292
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v38

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_21
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v4

    .line 296
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v5

    if-lez v4, :cond_22

    if-lez v5, :cond_22

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v8, 0x7f120559

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v10, v14

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v41

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_22
    move-object/from16 v6, v41

    .line 301
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_12
    add-int/2addr v5, v4

    .line 303
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v39

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move/from16 v4, v32

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v1, v5, v23

    const-string v1, "%.1f"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v40

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_23

    const v4, 0x7f120426

    :goto_13
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v42

    goto :goto_14

    :cond_23
    const v4, 0x7f120445

    goto :goto_13

    :goto_14
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-string v1, "%d"

    if-eqz v19, :cond_24

    .line 309
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-static {v4, v13, v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v44

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_24
    move-object/from16 v14, v44

    .line 311
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v4, v5, v23

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_15
    invoke-virtual/range {v26 .. v26}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v45

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v20, :cond_25

    .line 314
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-static {v4, v13, v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v46

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_25
    move-object/from16 v14, v46

    .line 316
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v4, v5, v23

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_16
    invoke-virtual/range {v26 .. v26}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v14, v47

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v21, :cond_26

    .line 319
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-static {v1, v13, v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v48

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x1

    goto :goto_17

    :cond_26
    move-object/from16 v14, v48

    .line 321
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->monthReport:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v4, v5, v23

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_17
    invoke-virtual/range {v26 .. v26}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v49

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v43, :cond_2e

    .line 327
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    .line 328
    invoke-virtual/range {v31 .. v31}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v4

    .line 330
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object/from16 v6, v31

    invoke-virtual {v6, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 331
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v4, 0x7f12036e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_18

    .line 332
    :cond_27
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v5

    if-eqz v5, :cond_28

    if-gt v4, v1, :cond_28

    .line 333
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v4, 0x7f1204a8

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual/range {v29 .. v29}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v5, 0x7f120325

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 338
    :cond_28
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isBethelite(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 339
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v4, 0x7f12037b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 340
    :cond_29
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer()Z

    move-result v5

    if-eqz v5, :cond_2a

    if-gt v4, v1, :cond_2a

    .line 341
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v4, 0x7f1204f3

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 342
    :cond_2a
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary()Z

    move-result v5

    if-eqz v5, :cond_2b

    if-gt v4, v1, :cond_2b

    .line 343
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v4, 0x7f120446

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 344
    :cond_2b
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result v5

    if-eqz v5, :cond_2c

    if-gt v4, v1, :cond_2c

    .line 345
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v4, 0x7f12039a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 347
    :cond_2c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v4, 0x7f12049e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_2d
    :goto_18
    iget-object v4, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v5, 0x7f12049a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v4, v2, v23

    const/16 v22, 0x1

    aput-object v1, v2, v22

    const-string v1, "%s: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v43

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    const v1, 0x7f09026e

    .line 351
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->idReportPage:I

    .line 355
    invoke-virtual/range {v24 .. v24}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public getCardContent(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    .line 374
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/RecyclableCard;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCardLayoutId()I
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 362
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    const-string v1, "ReportDensity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0c004d

    return v0

    :cond_1
    const v0, 0x7f0c004c

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    .line 380
    invoke-super {p0, p1}, Lcom/fima/cardsui/objects/Card;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/fima/cardsui/objects/AbstractCard;->isClickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->idReportPage:I

    if-ne v0, v1, :cond_0

    .line 57
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const-class v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->idAddToReport:I

    if-ne p1, v0, :cond_2

    .line 60
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 61
    check-cast p1, Landroid/app/Activity;

    .line 62
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->getInstance()Lcom/lostpixels/fieldservice/MinistryAssistant;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "item_id"

    const-string v3, "AddToReport_NowCard"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "item_name"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "content_type"

    const-string v3, "action"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "select_content"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x10e1

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/MonthReportCard;->mContext:Landroid/content/Context;

    const v0, 0x7f120515

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
