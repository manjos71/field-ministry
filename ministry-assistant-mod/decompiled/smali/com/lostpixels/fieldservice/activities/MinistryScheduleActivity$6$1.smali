.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->updateUI(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

.field final synthetic val$fYearTotal:D


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;D)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->val$fYearTotal:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 523
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgettxtYearTotalTime(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->val$fYearTotal:D

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%sh"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgettxtCurrentServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v3, 0x7f1204dd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetiSelectedServiceYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
