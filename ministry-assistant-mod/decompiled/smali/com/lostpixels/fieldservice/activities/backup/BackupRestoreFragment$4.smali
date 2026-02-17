.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const p2, 0x7f120151

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const p5, 0x7f12012e

    invoke-virtual {p4, p5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 223
    new-instance p4, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;

    invoke-direct {p4, p0, p3}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$4;I)V

    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
