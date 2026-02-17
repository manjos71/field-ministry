.class public abstract Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/stepstone/stepper/adapter/StepAdapter;


# instance fields
.field protected final context:Landroid/content/Context;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 46
    iput-object p1, p0, Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 47
    iput-object p2, p0, Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public findStep(I)Lcom/stepstone/stepper/Step;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/stepstone/stepper/R$id;->ms_stepPager:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/stepstone/stepper/adapter/AbstractFragmentStepAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/stepstone/stepper/Step;

    return-object p1
.end method

.method public final getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 52
    invoke-interface {p0, p1}, Lcom/stepstone/stepper/adapter/StepAdapter;->createStep(I)Lcom/stepstone/stepper/Step;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public final getPagerAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    return-object p0
.end method
