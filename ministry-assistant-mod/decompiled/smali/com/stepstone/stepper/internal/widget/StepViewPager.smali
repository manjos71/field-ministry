.class public Lcom/stepstone/stepper/internal/widget/StepViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# instance fields
.field private mBlockTouchEventsFromChildrenEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 44
    invoke-static {p1}, Lcom/stepstone/stepper/internal/widget/pagetransformer/StepPageTransformerFactory;->createPageTransformer(Landroid/content/Context;)Landroidx/viewpager/widget/ViewPager$PageTransformer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 50
    iget-boolean p1, p0, Lcom/stepstone/stepper/internal/widget/StepViewPager;->mBlockTouchEventsFromChildrenEnabled:Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 56
    iget-boolean p1, p0, Lcom/stepstone/stepper/internal/widget/StepViewPager;->mBlockTouchEventsFromChildrenEnabled:Z

    return p1
.end method

.method public setBlockTouchEventsFromChildrenEnabled(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/stepstone/stepper/internal/widget/StepViewPager;->mBlockTouchEventsFromChildrenEnabled:Z

    return-void
.end method
