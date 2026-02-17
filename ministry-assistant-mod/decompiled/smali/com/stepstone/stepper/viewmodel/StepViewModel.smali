.class public Lcom/stepstone/stepper/viewmodel/StepViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;
    }
.end annotation


# instance fields
.field private final mBackButtonLabel:Ljava/lang/CharSequence;

.field private final mBackButtonStartDrawableResId:I

.field private final mBackButtonVisible:Z

.field private final mEndButtonLabel:Ljava/lang/CharSequence;

.field private final mEndButtonVisible:Z

.field private final mNextButtonEndDrawableResId:I

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mTitle:Ljava/lang/CharSequence;

    .line 30
    iput-object p2, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mSubtitle:Ljava/lang/CharSequence;

    .line 31
    iput-object p3, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mEndButtonLabel:Ljava/lang/CharSequence;

    .line 32
    iput-object p4, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mBackButtonLabel:Ljava/lang/CharSequence;

    .line 33
    iput p5, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mNextButtonEndDrawableResId:I

    .line 34
    iput p6, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mBackButtonStartDrawableResId:I

    .line 35
    iput-boolean p7, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mEndButtonVisible:Z

    .line 36
    iput-boolean p8, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mBackButtonVisible:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZLcom/stepstone/stepper/viewmodel/StepViewModel$1;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p8}, Lcom/stepstone/stepper/viewmodel/StepViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)V

    return-void
.end method


# virtual methods
.method public getBackButtonLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mBackButtonLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBackButtonStartDrawableResId()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mBackButtonStartDrawableResId:I

    return v0
.end method

.method public getEndButtonLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mEndButtonLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNextButtonEndDrawableResId()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mNextButtonEndDrawableResId:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isBackButtonVisible()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mBackButtonVisible:Z

    return v0
.end method

.method public isEndButtonVisible()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel;->mEndButtonVisible:Z

    return v0
.end method
