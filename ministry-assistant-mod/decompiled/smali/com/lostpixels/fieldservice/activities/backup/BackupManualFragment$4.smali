.class Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 133
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchEmail:Landroid/widget/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 134
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchGDrive:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 135
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment$4;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupManualFragment;->mchSDCard:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
