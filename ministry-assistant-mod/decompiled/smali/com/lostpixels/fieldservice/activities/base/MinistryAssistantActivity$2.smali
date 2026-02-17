.class Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;
.super Landroidx/appcompat/app/ActionBarDrawerToggle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 368
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 370
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fputmbUpdateMenuText(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;Z)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .line 356
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 358
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmbFirstPage(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmPeekDrawer(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const-string v0, "MyPrefsSettings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 360
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PeekDrawer"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1, v1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fputmPeekDrawer(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;Z)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 340
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 341
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmbUpdateMenuText(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fputmbUpdateMenuText(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;Z)V

    .line 343
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmtxtProfileType(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmtxtProfileType(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$mgetProfile(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmtxtPublisherName(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 347
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 348
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const v0, 0x7f120457

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "reportName"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 349
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmtxtPublisherName(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
