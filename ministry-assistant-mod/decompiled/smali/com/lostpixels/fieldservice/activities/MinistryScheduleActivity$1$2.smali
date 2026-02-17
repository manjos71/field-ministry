.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;
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

    .line 163
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->-$$Nest$fgetchSyncReport(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "syncReport"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    new-instance p1, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;)V

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync;->syncMinistrySchedule(Lcom/lostpixels/fieldservice/backupsync/MinistryScheduleSync$SyncMinistryScheduleListener;Landroid/content/Context;)V

    return-void
.end method
