.class Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerDays:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 104
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->-$$Nest$fgetbtnTime(Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->spinnerFiles:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 106
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chSDCard:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment$2;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/backup/BackupScheduleFragment;->chDrive:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
