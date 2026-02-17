.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetchSyncReport(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
