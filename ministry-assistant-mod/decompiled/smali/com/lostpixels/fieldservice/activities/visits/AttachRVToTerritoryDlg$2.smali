.class Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;Lio/realm/Realm;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 168
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz p1, :cond_5

    .line 169
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->val$realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->val$realm:Lio/realm/Realm;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-wide v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->personID:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->val$realm:Lio/realm/Realm;

    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-wide v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->personID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "houseHolder"

    invoke-virtual {p2, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p2

    invoke-virtual {p2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 173
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-wide v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->personID:J

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    .line 175
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 176
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-wide v2, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->personID:J

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 182
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 186
    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setDate(Ljava/util/Date;)V

    .line 190
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 197
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset()V

    :cond_5
    return-void
.end method
