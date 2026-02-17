.class public Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_MinistryPlannerYearRealmProxyInterface;


# instance fields
.field items:Lio/realm/RealmList;

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmSet$year(I)V

    .line 23
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmGet$items()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmSet$items(Lio/realm/RealmList;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItems()Lio/realm/RealmList;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmGet$items()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmGet$year()I

    move-result v0

    return v0
.end method

.method public realmGet$items()Lio/realm/RealmList;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->items:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$year()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->year:I

    return v0
.end method

.method public realmSet$items(Lio/realm/RealmList;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->items:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$year(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->year:I

    return-void
.end method

.method public setItems(Lio/realm/RealmList;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmSet$items(Lio/realm/RealmList;)V

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/MinistryPlannerYear;->realmSet$year(I)V

    return-void
.end method
