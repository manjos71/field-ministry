.class public Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private customItem:I


# direct methods
.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->updateSettings(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->customItem:I

    return-void
.end method

.method private disableItem(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V
    .locals 3

    .line 146
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->customItem:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1IsTime(Z)V

    .line 148
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom1(Z)V

    .line 149
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1Caps(Z)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 151
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem2IsTime(Z)V

    .line 152
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom2(Z)V

    .line 153
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem2Caps(Z)V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 155
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem3IsTime(Z)V

    .line 156
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom3(Z)V

    .line 157
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem3Caps(Z)V

    :cond_2
    return-void
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public static newInstance(I)Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;
    .locals 1

    .line 29
    new-instance v0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;-><init>()V

    .line 30
    iput p0, v0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->customItem:I

    return-object v0
.end method

.method private updateItemItem(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V
    .locals 4

    .line 130
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->customItem:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 131
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1IsTime(Z)V

    .line 132
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom1(Z)V

    .line 133
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1Caps(Z)V

    return-void

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 135
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem2IsTime(Z)V

    .line 136
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom2(Z)V

    .line 137
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem2Caps(Z)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 139
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem3IsTime(Z)V

    .line 140
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom3(Z)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem3Caps(Z)V

    :cond_2
    return-void
.end method

.method private updateItemTime(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V
    .locals 3

    .line 114
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->customItem:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1IsTime(Z)V

    .line 116
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom1(Z)V

    .line 117
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem1Caps(Z)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 119
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem2IsTime(Z)V

    .line 120
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom2(Z)V

    .line 121
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem2Caps(Z)V

    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 123
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem3IsTime(Z)V

    .line 124
    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setUsingCustom3(Z)V

    .line 125
    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->setCustomItem3Caps(Z)V

    :cond_2
    return-void
.end method

.method private updateSettings(I)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    .line 108
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->disableItem(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V

    return-void

    :sswitch_0
    const/4 p1, 0x1

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->updateItemTime(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    return-void

    :sswitch_1
    const/4 p1, 0x0

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->updateItemTime(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Z)V

    return-void

    .line 105
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->updateItemItem(Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09047d -> :sswitch_2
        0x7f090491 -> :sswitch_1
        0x7f090492 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0c005f

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f090486

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    if-eqz p2, :cond_0

    .line 40
    new-instance p3, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const p3, 0x7f090492

    .line 47
    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->check(I)V

    .line 48
    invoke-direct {p0, p3}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->updateSettings(I)V

    :cond_0
    const p2, 0x7f0902b4

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    .line 56
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->customItem:I

    const v4, 0x7f120297

    if-eq v3, v1, :cond_3

    if-eq v3, v0, :cond_2

    if-eq v3, p3, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    const p2, 0x7f0902bf

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 72
    iget v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->customItem:I

    if-eq v2, v1, :cond_7

    if-eq v2, v0, :cond_6

    if-eq v2, p3, :cond_5

    goto :goto_1

    .line 80
    :cond_5
    const-string p3, "#6ab344"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1

    .line 77
    :cond_6
    const-string p3, "#0f9d58"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1

    .line 74
    :cond_7
    const-string p3, "#0a50bb"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    :goto_1
    return-object p1
.end method
