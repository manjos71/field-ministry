.class public abstract Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mBaseRippleAlpha:I

.field protected mDrawRipple:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateAngleEdgePoint(FF)Landroid/graphics/PointF;
.end method

.method public abstract synthetic contains(FF)Z
.end method

.method public abstract synthetic draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getBounds()Landroid/graphics/RectF;
.end method

.method public abstract getPath()Landroid/graphics/Path;
.end method

.method public abstract prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
.end method

.method public abstract prepare(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;Landroid/view/View;[I)V
.end method

.method public abstract setColour(I)V
.end method

.method public setDrawRipple(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->mDrawRipple:Z

    return-void
.end method

.method public setRippleAlpha(I)V
    .locals 0

    .line 60
    iput p1, p0, Luk/co/samuelwall/materialtaptargetprompt/extras/PromptFocal;->mBaseRippleAlpha:I

    return-void
.end method

.method public abstract synthetic update(Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;FF)V
.end method

.method public abstract updateRipple(FF)V
.end method
