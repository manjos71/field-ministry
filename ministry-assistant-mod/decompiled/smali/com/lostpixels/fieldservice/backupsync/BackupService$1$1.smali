.class Lcom/lostpixels/fieldservice/backupsync/BackupService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/backupsync/BackupService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/backupsync/BackupService$1;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/backupsync/BackupService$1;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/lostpixels/fieldservice/backupsync/BackupService$1$1;->this$1:Lcom/lostpixels/fieldservice/backupsync/BackupService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
