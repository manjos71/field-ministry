.class public Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerItemRealmProxyInterface;


# instance fields
.field comment:Ljava/lang/String;

.field date:I

.field time:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$time(F)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$date(I)V

    .line 26
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$comment(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IFLjava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 30
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$time(F)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$date(I)V

    .line 32
    invoke-virtual {p0, p3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$comment(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Date;FLjava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 36
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$time(F)V

    .line 37
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerManager;->getDateId(Ljava/util/Date;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$date(I)V

    .line 38
    invoke-virtual {p0, p3}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmSet$comment(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()F
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->realmGet$time()F

    move-result v0

    return v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$date()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->date:I

    return v0
.end method

.method public realmGet$time()F
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->time:F

    return v0
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$date(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->date:I

    return-void
.end method

.method public realmSet$time(F)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerItem;->time:F

    return-void
.end method
