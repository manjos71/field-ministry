.class Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 160
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v0, 0x7f120513

    .line 161
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v0, 0x7f120512

    .line 162
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v0, 0x7f12055b

    .line 163
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$2;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    const v0, 0x7f12045b

    .line 178
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1$1;-><init>(Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "syncReport"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
