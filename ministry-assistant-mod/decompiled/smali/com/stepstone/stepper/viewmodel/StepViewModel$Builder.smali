.class public Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/viewmodel/StepViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackButtonLabel:Ljava/lang/CharSequence;

.field private mBackButtonStartDrawableResId:I

.field private mBackButtonVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mEndButtonLabel:Ljava/lang/CharSequence;

.field private mEndButtonVisible:Z

.field private mNextButtonEndDrawableResId:I

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget v0, Lcom/stepstone/stepper/R$drawable;->ms_ic_chevron_end:I

    iput v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mNextButtonEndDrawableResId:I

    .line 155
    sget v0, Lcom/stepstone/stepper/R$drawable;->ms_ic_chevron_start:I

    iput v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mBackButtonStartDrawableResId:I

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mEndButtonVisible:Z

    .line 160
    iput-boolean v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mBackButtonVisible:Z

    .line 168
    iput-object p1, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/stepstone/stepper/viewmodel/StepViewModel;
    .locals 10

    .line 309
    new-instance v0, Lcom/stepstone/stepper/viewmodel/StepViewModel;

    iget-object v1, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mEndButtonLabel:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mBackButtonLabel:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mNextButtonEndDrawableResId:I

    iget v6, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mBackButtonStartDrawableResId:I

    iget-boolean v7, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mEndButtonVisible:Z

    iget-boolean v8, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mBackButtonVisible:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/stepstone/stepper/viewmodel/StepViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZLcom/stepstone/stepper/viewmodel/StepViewModel$1;)V

    return-object v0
.end method

.method public setBackButtonLabel(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mBackButtonLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBackButtonStartDrawableResId(I)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;
    .locals 0

    .line 277
    iput p1, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mBackButtonStartDrawableResId:I

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/stepstone/stepper/viewmodel/StepViewModel$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
