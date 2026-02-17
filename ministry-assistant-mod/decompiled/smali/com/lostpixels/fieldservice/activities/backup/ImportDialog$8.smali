.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->restoreFromBackupFile(ZLjava/io/InputStream;)V
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

    .line 697
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 699
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 700
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$8;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
