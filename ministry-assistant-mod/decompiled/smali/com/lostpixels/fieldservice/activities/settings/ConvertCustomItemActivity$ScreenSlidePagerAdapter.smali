.class Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSlidePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    .line 289
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    if-nez p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->usedCustomItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->newInstance(I)Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->-$$Nest$fgetNUM_PAGES(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, -0x1

    .line 299
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->newInstance(I)Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;

    move-result-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->usedCustomItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->newInstance(I)Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;

    move-result-object v0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 304
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$ScreenSlidePagerAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->usedCustomItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;->newInstance(I)Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemFragment;

    move-result-object v0

    .line 306
    :cond_3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method
