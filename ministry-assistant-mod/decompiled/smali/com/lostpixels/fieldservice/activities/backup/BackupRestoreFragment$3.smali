.class Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 132
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 137
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const p5, 0x7f1205e0

    invoke-virtual {p4, p5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    iget-object p5, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const v0, 0x7f1203a8

    .line 139
    invoke-virtual {p5, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$2;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;Landroid/widget/AdapterView;I)V

    invoke-virtual {p4, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment;

    const p4, 0x7f12004b

    .line 198
    invoke-virtual {p3, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$1;

    invoke-direct {p4, p0}, Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/backup/BackupRestoreFragment$3;)V

    invoke-virtual {p1, p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
