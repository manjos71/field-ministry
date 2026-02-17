.class public abstract Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;
    }
.end annotation


# static fields
.field private static mbHasLocation:Z = false

.field private static mlstCities:Ljava/util/ArrayList;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmbHasLocation()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->mbHasLocation:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmlstCities()Ljava/util/ArrayList;
    .locals 1

    .line 0
    sget-object v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->mlstCities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmbHasLocation(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->mbHasLocation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmlstCities(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->mlstCities:Ljava/util/ArrayList;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static showUpdatePositionDialog(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
    .locals 3

    .line 196
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120491

    .line 197
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$3;-><init>(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V

    const-string p0, "GPS"

    invoke-virtual {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x7f12035c

    .line 203
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;

    invoke-direct {v2, p2, p1, p3}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$2;-><init>(Landroid/app/Activity;Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static updatePosition(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
    .locals 3

    const/4 p0, 0x0

    .line 216
    sput-boolean p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->mbHasLocation:Z

    .line 217
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    .line 219
    const-string p1, "location"

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 221
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 222
    invoke-static {p2}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->buildAlertMessageNoGps(Landroid/app/Activity;)V

    return-void

    .line 225
    :cond_0
    new-instance p1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;-><init>()V

    .line 227
    new-instance v2, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$4;

    invoke-direct {v2, v0, v1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$4;-><init>(J)V

    const/16 v0, 0x1e

    .line 248
    :try_start_0
    invoke-virtual {p1, p2, v2, v0}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->getLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;

    invoke-direct {v0, p2, p3, p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1GetPositionTask;-><init>(Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V

    new-array p1, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    const p3, 0x7f1203f9

    .line 315
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 318
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
    .locals 7

    .line 45
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v4

    .line 46
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 49
    :goto_0
    new-instance v6, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;

    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;-><init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;Lcom/lostpixels/fieldservice/internal/ministry/Person;J)V

    .line 192
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, v0, v1, p0}, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;-><init>(Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v6, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static updateVisitPosition(Lio/realm/Realm;Lcom/google/android/gms/maps/model/LatLng;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 4

    .line 326
    invoke-static {p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-ne v1, p2, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 335
    const-class p2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p0, p2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p0

    const-string p2, "houseHolder"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz p0, :cond_2

    .line 337
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_2
    return-void
.end method
