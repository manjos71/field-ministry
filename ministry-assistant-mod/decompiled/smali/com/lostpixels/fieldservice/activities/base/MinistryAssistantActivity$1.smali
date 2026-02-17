.class Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$OnTabSelectedListener;


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
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelected(IZ)Z
    .locals 4

    .line 273
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->getCurrentItem()I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 294
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const-class v3, Lcom/lostpixels/fieldservice/activities/MinistryScheduleActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {v2, v1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_0

    .line 282
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const-class v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {v2, v1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_0

    .line 286
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const-class v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {v2, v1, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_0

    .line 290
    :cond_4
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const-class v2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {v1, v0, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    goto :goto_0

    .line 278
    :cond_5
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    const-class v2, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->bottomNavigation:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    invoke-virtual {v1, p2, p2}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->setCurrentItem(IZ)V

    :goto_0
    if-eqz p1, :cond_7

    .line 300
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_6

    .line 301
    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 302
    :cond_6
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->waitForIO()V

    const v1, 0x4018000

    .line 304
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 309
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->-$$Nest$fgetmbFinishActivity(Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 310
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    return v0
.end method
