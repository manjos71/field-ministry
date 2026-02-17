.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncComplete()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mfillCalendarFromYear(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    .line 172
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateYearTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V

    .line 173
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    iget v1, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->iLastMonthToShow:I

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$mupdateMonthTotal(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;I)V

    return-void
.end method
