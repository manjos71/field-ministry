.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$iMonth:I

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;Landroid/widget/EditText;ILandroid/app/Dialog;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->val$text:Landroid/widget/EditText;

    iput p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->val$iMonth:I

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 238
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetTimeBehind()V

    const-wide/16 v0, 0x0

    .line 242
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-wide v2, v0

    :goto_0
    const/4 p1, 0x1

    cmpl-double v4, v2, v0

    if-ltz v4, :cond_0

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 249
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    .line 250
    iget v4, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->val$iMonth:I

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 251
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 253
    new-instance p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;

    invoke-direct {p1, p0, v0, v2, v3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;Ljava/util/Calendar;D)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 261
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget v0, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    .line 263
    :try_start_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v1, 0x7f1200c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :catch_1
    :goto_1
    return-void
.end method
