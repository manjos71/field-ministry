.class final Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DateSelectActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 815
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 816
    new-instance p1, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/dialogs/CopyDateDialog;-><init>()V

    .line 817
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 818
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectedDates()Ljava/util/List;

    move-result-object v1

    .line 819
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 820
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x6

    .line 821
    invoke-virtual {v2, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 822
    const-string v1, "StartDate"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 823
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 824
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v1, "copydate"

    invoke-virtual {p1, p2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 826
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectedDates()Ljava/util/List;

    move-result-object p1

    .line 827
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mclearDates(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Ljava/util/List;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 798
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v0, 0x7f12001d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, v0, v0, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const v2, 0x7f080190

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 800
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v3, 0x7f12004c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, v0, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0801b5

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    return v1
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 2

    .line 834
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    sget-object v0, Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;->SINGLE:Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;

    invoke-virtual {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->setSelectionMode(Lcom/squareup/timessquare/CalendarPickerView$SelectionMode;)V

    .line 835
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectedDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 836
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/timessquare/CalendarPickerView;->selectDate(Ljava/util/Date;)Z

    .line 838
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgettxtTipCopy(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v1, 0x7f12057e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 808
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v0, 0x7f12026c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetcalendar(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lcom/squareup/timessquare/CalendarPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/timessquare/CalendarPickerView;->getSelectionSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgettxtTipCopy(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$DateSelectActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v0, 0x7f120429

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v2
.end method
