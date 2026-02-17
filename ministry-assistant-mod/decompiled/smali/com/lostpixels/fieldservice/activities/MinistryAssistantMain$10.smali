.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->testCouldBePioneerThisYear()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$10;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 871
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 872
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 873
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    const/16 v1, 0x8

    .line 874
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 876
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$10;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;->access$1200(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;)Lio/realm/Realm;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    .line 877
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
