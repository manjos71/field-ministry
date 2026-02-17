.class Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->getReturnVisits(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)I
    .locals 0

    .line 258
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 255
    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$2;->compare(Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)I

    move-result p1

    return p1
.end method
