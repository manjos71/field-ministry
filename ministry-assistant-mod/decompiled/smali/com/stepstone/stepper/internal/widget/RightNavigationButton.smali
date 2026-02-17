.class public Lcom/stepstone/stepper/internal/widget/RightNavigationButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# static fields
.field private static final STATE_VERIFICATION_FAILED:[I


# instance fields
.field private mVerificationFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget v0, Lcom/stepstone/stepper/R$attr;->state_verification_failed:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->STATE_VERIFICATION_FAILED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->mVerificationFailed:Z

    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->mVerificationFailed:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 60
    sget-object v0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->STATE_VERIFICATION_FAILED:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public setVerificationFailed(Z)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->mVerificationFailed:Z

    if-eq v0, p1, :cond_0

    .line 69
    iput-boolean p1, p0, Lcom/stepstone/stepper/internal/widget/RightNavigationButton;->mVerificationFailed:Z

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method
