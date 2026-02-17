.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .line 236
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
