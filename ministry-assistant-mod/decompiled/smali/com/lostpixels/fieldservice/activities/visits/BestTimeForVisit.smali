.class public Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;
    }
.end annotation


# instance fields
.field private bestTimeForVisit:I

.field private chDay:Landroid/widget/CheckBox;

.field private chEvening:Landroid/widget/CheckBox;

.field private chFriday:Landroid/widget/CheckBox;

.field private chMonday:Landroid/widget/CheckBox;

.field private chMorning:Landroid/widget/CheckBox;

.field private chSaturday:Landroid/widget/CheckBox;

.field private chSunday:Landroid/widget/CheckBox;

.field private chThursday:Landroid/widget/CheckBox;

.field private chTuesday:Landroid/widget/CheckBox;

.field private chWednesday:Landroid/widget/CheckBox;

.field private chWeekend:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetchDay(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chDay:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchEvening(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chEvening:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchFriday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chFriday:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchMonday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chMonday:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchMorning(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chMorning:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchSaturday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chSaturday:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchSunday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chSunday:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchThursday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chThursday:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchTuesday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chTuesday:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchWednesday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chWednesday:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchWeekend(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chWeekend:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->mListener:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->mListener:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;

    .line 47
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    const p2, 0x7f0c0039

    .line 48
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    const p2, 0x7f12037a

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 56
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/content/Context;)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090132

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chMorning:Landroid/widget/CheckBox;

    const p1, 0x7f090125

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chDay:Landroid/widget/CheckBox;

    const p1, 0x7f090128

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chEvening:Landroid/widget/CheckBox;

    const p1, 0x7f090142

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chWeekend:Landroid/widget/CheckBox;

    const p1, 0x7f090131

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chMonday:Landroid/widget/CheckBox;

    const p1, 0x7f090140

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chTuesday:Landroid/widget/CheckBox;

    const p1, 0x7f090141

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chWednesday:Landroid/widget/CheckBox;

    const p1, 0x7f09013f

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chThursday:Landroid/widget/CheckBox;

    const p1, 0x7f09012a

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chFriday:Landroid/widget/CheckBox;

    const p1, 0x7f090137

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chSaturday:Landroid/widget/CheckBox;

    const p1, 0x7f09013c

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chSunday:Landroid/widget/CheckBox;

    const p1, 0x7f0900e6

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0900fe

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chMorning:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitMorning(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 76
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chDay:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitDay(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chEvening:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitEvening(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 78
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chWeekend:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitWeekend(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 80
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chMonday:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitMonday(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 81
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chTuesday:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitTuesday(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 82
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chWednesday:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitWednesday(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chThursday:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitThursday(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 84
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chFriday:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitFriday(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 85
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chSaturday:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitSaturday(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 86
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->chSunday:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isVisitSunday(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    const-string v0, "BestTime"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    .line 112
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 118
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    :cond_0
    const-string v1, "BestTime"

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->bestTimeForVisit:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
