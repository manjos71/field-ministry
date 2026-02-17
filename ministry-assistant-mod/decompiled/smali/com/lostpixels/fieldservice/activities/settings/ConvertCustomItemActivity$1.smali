.class Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ConvertCustomItemActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
