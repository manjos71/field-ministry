.class Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->readBackupFile(Ljava/lang/String;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/Realm;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$realm:Lio/realm/Realm;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->deleteAll()V

    .line 130
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 134
    iget-object v2, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$path:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$realm:Lio/realm/Realm;

    invoke-static {v3, v2, v0}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->-$$Nest$smgetReturnVisits(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    .line 136
    iget-object v3, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$realm:Lio/realm/Realm;

    invoke-static {v3, v2, v0}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->-$$Nest$smgetTerritories(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    .line 137
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0, v2, v1}, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader;->-$$Nest$smgetReport(Lio/realm/Realm;Landroid/database/sqlite/SQLiteDatabase;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V

    .line 140
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->deleteMinistryFile(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/lostpixels/fieldservice/backupsync/MyTimeBackupReader$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->deleteServiceFile(Landroid/content/Context;)V

    return-void
.end method
