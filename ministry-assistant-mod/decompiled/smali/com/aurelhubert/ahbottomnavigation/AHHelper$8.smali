.class final Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aurelhubert/ahbottomnavigation/AHHelper;->updateDrawableColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$forceTint:Z

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;->val$forceTint:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;->val$drawable:Landroid/graphics/drawable/Drawable;

    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v2, p0, Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;->val$forceTint:Z

    .line 183
    invoke-static {v1, p1, v2}, Lcom/aurelhubert/ahbottomnavigation/AHHelper;->getTintDrawable(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHHelper$8;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
