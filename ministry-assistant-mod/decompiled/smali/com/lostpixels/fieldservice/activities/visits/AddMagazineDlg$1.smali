.class Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/fourmob/datetimepicker/date/DatePickerDialog;III)V
    .locals 2

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 58
    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p3, 0x5

    .line 59
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->set(II)V

    .line 61
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fputmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;Ljava/util/Date;)V

    .line 62
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetbtnMonth(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/Button;

    move-result-object p1

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$mgetMagazineTitle(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p1

    const/16 p3, 0x7e0

    const/4 p4, 0x4

    const/4 v1, 0x0

    if-lt p2, p3, :cond_1

    .line 66
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdStudyEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdPublicEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdStudyEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, v0, v1, p3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getMagazineAlias(ZZLjava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, v0, v0, p3}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getMagazineAlias(ZZLjava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 75
    :goto_0
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdStudyEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdPublicEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckWatchTower(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmckAwake(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/CheckBox;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDate(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->getMagazineAlias(ZZLjava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 84
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmedtAlias(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_1
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    return-void
.end method
