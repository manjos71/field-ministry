.class Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 302
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 303
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
