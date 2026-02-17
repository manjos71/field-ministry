.class public Lcom/lostpixels/fieldservice/backupsync/IBackupFactory$BackupInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/backupsync/IBackupFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupInfo"
.end annotation


# instance fields
.field public date:Ljava/util/Date;

.field public deleteID:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public restoreID:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
