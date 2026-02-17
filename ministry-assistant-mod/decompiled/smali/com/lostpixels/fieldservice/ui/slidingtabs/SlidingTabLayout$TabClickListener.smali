.class Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;-><init>(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 319
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout$TabClickListener;->this$0:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->-$$Nest$fgetmViewPager(Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
