.class public Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final ANIMATED_ITEMS_COUNT:I

.field private final ANIM_DURATION:I

.field private final ANIM_OFFSET:I

.field private final TRANSLATE_DISTANCE:I

.field private final animInterpolator:Landroid/view/animation/Interpolator;

.field private animateItems:Z

.field private direction:Lcom/hlab/fabrevealmenu/enums/Direction;

.field private isCircularShape:Z

.field private isReturning:Z

.field private lastAnimatedPosition:I

.field private mItems:Ljava/util/List;

.field private maxDuration:I

.field private parent:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

.field private rowLayoutResId:I

.field private showTitle:Z

.field private titleDisabledTextColor:I

.field private titleTextColor:I


# direct methods
.method public constructor <init>(Lcom/hlab/fabrevealmenu/view/FABRevealMenu;Ljava/util/List;IZIIZLcom/hlab/fabrevealmenu/enums/Direction;Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->ANIMATED_ITEMS_COUNT:I

    .line 24
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->animInterpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0x50

    .line 25
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->TRANSLATE_DISTANCE:I

    const/16 v0, 0x15e

    .line 26
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->ANIM_DURATION:I

    const/16 v0, 0x32

    .line 27
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->ANIM_OFFSET:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->isReturning:Z

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->lastAnimatedPosition:I

    .line 46
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->parent:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    .line 47
    iput-object p2, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->mItems:Ljava/util/List;

    .line 48
    iput p3, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->rowLayoutResId:I

    .line 49
    iput-boolean p4, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->isCircularShape:Z

    .line 50
    iput-boolean p7, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->showTitle:Z

    .line 51
    iput p5, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->titleTextColor:I

    .line 52
    iput p6, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->titleDisabledTextColor:I

    .line 53
    iput-boolean p9, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->animateItems:Z

    .line 54
    iput-object p8, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->direction:Lcom/hlab/fabrevealmenu/enums/Direction;

    return-void
.end method

.method static synthetic access$000(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->titleTextColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->titleDisabledTextColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->showTitle:Z

    return p0
.end method

.method static synthetic access$300(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->isCircularShape:Z

    return p0
.end method

.method static synthetic access$400(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;)Lcom/hlab/fabrevealmenu/view/FABRevealMenu;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->parent:Lcom/hlab/fabrevealmenu/view/FABRevealMenu;

    return-object p0
.end method

.method private runEnterAnimation(Landroid/view/View;I)V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->animateItems:Z

    if-eqz v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->lastAnimatedPosition:I

    if-le p2, v0, :cond_2

    .line 147
    iput p2, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->lastAnimatedPosition:I

    .line 148
    iget-boolean v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->isReturning:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->startExitAnimation(Landroid/view/View;I)V

    return-void

    .line 151
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->startEnterAnimation(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startEnterAnimation(Landroid/view/View;I)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->direction:Lcom/hlab/fabrevealmenu/enums/Direction;

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne v0, v1, :cond_0

    const/16 v0, -0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    int-to-float v0, v0

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->animInterpolator:Landroid/view/animation/Interpolator;

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x32

    add-int/lit8 p2, p2, 0x32

    int-to-long v0, p2

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startExitAnimation(Landroid/view/View;I)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->direction:Lcom/hlab/fabrevealmenu/enums/Direction;

    sget-object v1, Lcom/hlab/fabrevealmenu/enums/Direction;->DOWN:Lcom/hlab/fabrevealmenu/enums/Direction;

    if-ne v0, v1, :cond_0

    const/16 v0, -0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 178
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float v0, v0

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->animInterpolator:Landroid/view/animation/Interpolator;

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->maxDuration:I

    mul-int/lit8 p2, p2, 0x32

    sub-int/2addr v0, p2

    int-to-long v0, v0

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->onBindViewHolder(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;I)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    invoke-virtual {p1, v0}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->setData(Lcom/hlab/fabrevealmenu/model/FABMenuItem;)V

    .line 66
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    invoke-virtual {v1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 67
    iget-object v0, p1, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hlab/fabrevealmenu/model/FABMenuItem;

    invoke-virtual {v1}, Lcom/hlab/fabrevealmenu/model/FABMenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->runEnterAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;
    .locals 3

    .line 59
    new-instance p2, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->rowLayoutResId:I

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter$ViewHolder;-><init>(Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public resetAdapter(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->lastAnimatedPosition:I

    .line 157
    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->isReturning:Z

    .line 158
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 159
    invoke-virtual {p0}, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->getItemCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x32

    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->maxDuration:I

    return-void
.end method

.method public setDirection(Lcom/hlab/fabrevealmenu/enums/Direction;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->direction:Lcom/hlab/fabrevealmenu/enums/Direction;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->showTitle:Z

    return-void
.end method

.method public setTitleDisabledTextColor(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->titleDisabledTextColor:I

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/hlab/fabrevealmenu/view/FABMenuAdapter;->titleTextColor:I

    return-void
.end method
