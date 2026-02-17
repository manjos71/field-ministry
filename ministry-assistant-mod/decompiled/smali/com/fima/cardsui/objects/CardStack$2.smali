.class Lcom/fima/cardsui/objects/CardStack$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fima/cardsui/objects/CardStack;->getClickListener(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fima/cardsui/objects/CardStack;

.field final synthetic val$cardStack:Lcom/fima/cardsui/objects/CardStack;

.field final synthetic val$container:Landroid/widget/RelativeLayout;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILcom/fima/cardsui/objects/CardStack;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    iput-object p2, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$container:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$index:I

    iput-object p4, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$cardStack:Lcom/fima/cardsui/objects/CardStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 241
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    new-array v4, p1, [Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$container:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p1, -0x1

    .line 250
    iget v3, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$index:I

    if-eq v3, v5, :cond_2

    if-nez v3, :cond_1

    .line 253
    iget-object p1, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$cardStack:Lcom/fima/cardsui/objects/CardStack;

    iget-object v0, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$container:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/fima/cardsui/objects/CardStack$2;->onClickFirstCard(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;I[Landroid/view/View;)V

    return-void

    :cond_1
    if-ge v3, v5, :cond_2

    .line 255
    iget-object v1, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$cardStack:Lcom/fima/cardsui/objects/CardStack;

    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack$2;->val$container:Landroid/widget/RelativeLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/fima/cardsui/objects/CardStack$2;->onClickOtherCard(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;I[Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public onClickFirstCard(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;I[Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 267
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 270
    const-string v4, "translationY"

    const/4 v5, 0x1

    if-nez v1, :cond_1

    .line 273
    array-length v6, p4

    const/high16 v7, 0x42340000    # 45.0f

    if-le v6, v2, :cond_0

    .line 274
    iget-object v6, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    array-length v8, p4

    sub-int/2addr v8, v5

    int-to-float v8, v8

    mul-float v8, v8, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    invoke-virtual {v6, v8}, Lcom/fima/cardsui/objects/CardStack;->convertDpToPixel(F)F

    move-result v6

    goto :goto_1

    .line 277
    :cond_0
    iget-object v6, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    invoke-virtual {v6, v7}, Lcom/fima/cardsui/objects/CardStack;->convertDpToPixel(F)F

    move-result v6

    .line 280
    :goto_1
    aget-object v7, p4, v1

    new-array v2, v2, [F

    aput v3, v2, v0

    aput v6, v2, v5

    invoke-static {v7, v4, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    aget-object v4, p4, p3

    invoke-static {v3, p1, p2, p3, v4}, Lcom/fima/cardsui/objects/CardStack;->access$300(Lcom/fima/cardsui/objects/CardStack;Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILandroid/view/View;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_1
    if-ne v1, v5, :cond_2

    .line 288
    iget-object v6, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    const/high16 v7, -0x3e780000    # -17.0f

    invoke-virtual {v6, v7}, Lcom/fima/cardsui/objects/CardStack;->convertDpToPixel(F)F

    move-result v6

    .line 289
    aget-object v7, p4, v1

    new-array v2, v2, [F

    aput v3, v2, v0

    aput v6, v2, v5

    invoke-static {v7, v4, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_2

    .line 294
    :cond_2
    iget-object v6, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    const/high16 v7, -0x3dcc0000    # -45.0f

    invoke-virtual {v6, v7}, Lcom/fima/cardsui/objects/CardStack;->convertDpToPixel(F)F

    move-result v6

    .line 295
    aget-object v7, p4, v1

    new-array v2, v2, [F

    aput v3, v2, v0

    aput v6, v2, v5

    invoke-static {v7, v4, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    .line 300
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onClickOtherCard(Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;I[Landroid/view/View;I)V
    .locals 9

    move v0, p3

    :goto_0
    if-gt v0, p5, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    const-string v5, "translationY"

    if-ne v0, p3, :cond_0

    .line 316
    iget-object v6, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    sub-int v7, p5, v0

    int-to-float v7, v7

    const/high16 v8, 0x42340000    # 45.0f

    mul-float v7, v7, v8

    const/high16 v8, 0x41400000    # 12.0f

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/fima/cardsui/objects/CardStack;->convertDpToPixel(F)F

    move-result v6

    .line 318
    aget-object v7, p4, v0

    new-array v2, v2, [F

    aput v4, v2, v1

    aput v6, v2, v3

    invoke-static {v7, v5, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 320
    iget-object v2, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    aget-object v3, p4, p3

    invoke-static {v2, p1, p2, p3, v3}, Lcom/fima/cardsui/objects/CardStack;->access$300(Lcom/fima/cardsui/objects/CardStack;Lcom/fima/cardsui/objects/CardStack;Landroid/widget/RelativeLayout;ILandroid/view/View;)Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/Animator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 324
    :cond_0
    iget-object v6, p0, Lcom/fima/cardsui/objects/CardStack$2;->this$0:Lcom/fima/cardsui/objects/CardStack;

    const/high16 v7, -0x3dcc0000    # -45.0f

    invoke-virtual {v6, v7}, Lcom/fima/cardsui/objects/CardStack;->convertDpToPixel(F)F

    move-result v6

    .line 325
    aget-object v7, p4, v0

    new-array v2, v2, [F

    aput v4, v2, v1

    aput v6, v2, v3

    invoke-static {v7, v5, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
