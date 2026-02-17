.class public abstract Lcom/stepstone/stepper/internal/widget/pagetransformer/StepPageTransformerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createPageTransformer(Landroid/content/Context;)Landroidx/viewpager/widget/ViewPager$PageTransformer;
    .locals 1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/stepstone/stepper/R$bool;->ms_rtlEnabled:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    new-instance p0, Lcom/stepstone/stepper/internal/widget/pagetransformer/StepperRtlPageTransformer;

    invoke-direct {p0}, Lcom/stepstone/stepper/internal/widget/pagetransformer/StepperRtlPageTransformer;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
