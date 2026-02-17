.class Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 102
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/backup/BackupPageActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
