.class public Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;
    }
.end annotation


# static fields
.field private static msMonthsFull:[Ljava/lang/String;


# instance fields
.field private chMonth1:Landroid/widget/CheckBox;

.field private chMonth2:Landroid/widget/CheckBox;

.field private chMonth3:Landroid/widget/CheckBox;

.field private chMonth4:Landroid/widget/CheckBox;

.field private chMonth5:Landroid/widget/CheckBox;

.field private chMonth6:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mDate:Ljava/util/Date;

.field private final mListener:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

.field private final mMagRouteMap:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetchMonth1(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth1:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchMonth2(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth2:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchMonth3(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth3:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchMonth4(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth4:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchMonth5(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth5:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchMonth6(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth6:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Ljava/util/Date;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;[Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->setMonths()V

    .line 55
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mListener:Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$OnSetMonthsListener;

    .line 56
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mDate:Ljava/util/Date;

    .line 57
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mMagRouteMap:[Z

    const p2, 0x7f0c009f

    .line 58
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    const p2, 0x7f120438

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method formatMonthPlacement(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x7e2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_0

    .line 195
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 197
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const-string v1, "/"

    packed-switch p1, :pswitch_data_0

    .line 219
    const-string p1, ""

    return-object p1

    .line 215
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ng 3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nwp 3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 209
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ng 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 206
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nwp 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 203
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ng 1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nwp 1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 97
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 98
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/content/Context;)V

    .line 99
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09015e

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth1:Landroid/widget/CheckBox;

    const p1, 0x7f090162

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth2:Landroid/widget/CheckBox;

    const p1, 0x7f090163

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth3:Landroid/widget/CheckBox;

    const p1, 0x7f090164

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth4:Landroid/widget/CheckBox;

    const p1, 0x7f090165

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth5:Landroid/widget/CheckBox;

    const p1, 0x7f090166

    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth6:Landroid/widget/CheckBox;

    const p1, 0x7f0900e6

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0900fe

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 113
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x7e2

    if-lt v4, v6, :cond_0

    .line 115
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rem-int/2addr v7, v5

    sub-int/2addr v4, v7

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    .line 118
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-gt v8, v6, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-lt v8, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, -0x1

    .line 121
    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, -0x2

    .line 119
    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->add(II)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 124
    :cond_3
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth1:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->formatMonthPlacement(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth1:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mMagRouteMap:[Z

    aget-boolean v4, v9, v4

    invoke-virtual {v7, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 126
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v4, v6, :cond_4

    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 127
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth2:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->formatMonthPlacement(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth2:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mMagRouteMap:[Z

    aget-boolean v7, v7, v3

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 129
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v4, v6, :cond_5

    const/4 v4, 0x2

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 130
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth3:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->formatMonthPlacement(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth3:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mMagRouteMap:[Z

    aget-boolean v7, v7, v5

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v4, v6, :cond_6

    const/4 v4, 0x2

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 133
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth4:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->formatMonthPlacement(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth4:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mMagRouteMap:[Z

    const/4 v9, 0x3

    aget-boolean v7, v7, v9

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 135
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v4, v6, :cond_7

    const/4 v4, 0x2

    goto :goto_6

    :cond_7
    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 136
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth5:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->formatMonthPlacement(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth5:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mMagRouteMap:[Z

    aget-boolean v7, v7, v8

    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 138
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v4, v6, :cond_8

    const/4 v3, 0x2

    :cond_8
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 139
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth6:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->formatMonthPlacement(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->chMonth6:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mMagRouteMap:[Z

    aget-boolean v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 142
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mDate:Ljava/util/Date;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mDate:Ljava/util/Date;

    const-string v1, "Date"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 227
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .line 233
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "Date"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected setMonths()V
    .locals 8

    .line 63
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 67
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 68
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 69
    sget-object v6, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 70
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 71
    sget-object v5, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 72
    invoke-virtual {v1, v4, v4}, Ljava/util/Calendar;->set(II)V

    .line 73
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v3, 0x3

    .line 74
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 75
    sget-object v5, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x4

    .line 76
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 77
    sget-object v5, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 78
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 79
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x6

    .line 80
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 81
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x7

    .line 82
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0x8

    .line 84
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0x9

    .line 86
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 87
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0xa

    .line 88
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 89
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0xb

    .line 90
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 91
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/MagazineRouteDlg;->msMonthsFull:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    :cond_0
    return-void
.end method
