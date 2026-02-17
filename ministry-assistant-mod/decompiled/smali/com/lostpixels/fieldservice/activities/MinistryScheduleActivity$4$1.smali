.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->onDateSelected(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$fTime1:F

.field final synthetic val$iYear:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;ILjava/util/Date;FLjava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$iYear:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$date:Ljava/util/Date;

    iput p4, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$fTime1:F

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 7

    .line 383
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->access$300(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v1

    iget v2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$iYear:I

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$date:Ljava/util/Date;

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$fTime1:F

    float-to-double v4, v0

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$comment:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->planTime(ILjava/util/Date;DLjava/lang/String;)Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$4$1;->val$iYear:I

    .line 384
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->sort(I)V

    return-void
.end method
