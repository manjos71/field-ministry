.class public Lcom/lostpixels/fieldservice/ui/QuickAction;
.super Lcom/lostpixels/fieldservice/ui/PopupWindows;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;
    }
.end annotation


# instance fields
.field private final actionItems:Ljava/util/List;

.field private mAnimStyle:I

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private mChildPos:I

.field private mDidAction:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInsertPos:I

.field private mItemClickListener:Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;

.field private final mOrientation:I

.field private mRootView:Landroid/view/View;

.field private mScroller:Landroid/widget/ScrollView;

.field private mTrack:Landroid/view/ViewGroup;

.field private rootWidth:I

.field private showBelow:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmItemClickListener(Lcom/lostpixels/fieldservice/ui/QuickAction;)Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mItemClickListener:Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDidAction(Lcom/lostpixels/fieldservice/ui/QuickAction;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mDidAction:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 76
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/ui/PopupWindows;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->actionItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    .line 78
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mOrientation:I

    .line 80
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    const p1, 0x7f0c00fc

    .line 83
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setRootViewId(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c00fd

    .line 85
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setRootViewId(I)V

    .line 88
    :goto_0
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->showBelow:Z

    const/4 p1, 0x5

    .line 90
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mAnimStyle:I

    .line 91
    iput v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mChildPos:I

    return-void
.end method

.method private setAnimationStyle(IIZ)V
    .locals 10

    .line 395
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 397
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mAnimStyle:I

    const/4 v2, 0x1

    const v3, 0x7f13001c

    const v4, 0x7f130021

    if-eq v0, v2, :cond_c

    const v2, 0x7f13001e

    const v5, 0x7f130023

    if-eq v0, v1, :cond_a

    const v1, 0x7f13001b

    const v6, 0x7f130020

    const/4 v7, 0x3

    if-eq v0, v7, :cond_8

    const/4 v8, 0x4

    if-eq v0, v8, :cond_6

    const/4 v9, 0x5

    if-eq v0, v9, :cond_0

    return-void

    .line 415
    :cond_0
    div-int/2addr p1, v8

    if-gt p2, p1, :cond_2

    .line 416
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1

    const v3, 0x7f130021

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    :cond_2
    if-le p2, p1, :cond_4

    mul-int/lit8 p1, p1, 0x3

    if-ge p2, p1, :cond_4

    .line 418
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_3

    const v1, 0x7f130020

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    .line 420
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_5

    const v2, 0x7f130023

    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    .line 411
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_7

    const p2, 0x7f130022

    goto :goto_0

    :cond_7
    const p2, 0x7f13001d

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    .line 407
    :cond_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_9

    const v1, 0x7f130020

    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    .line 403
    :cond_a
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_b

    const v2, 0x7f130023

    :cond_b
    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    .line 399
    :cond_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_d

    const v3, 0x7f130021

    :cond_d
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method private showArrow(II)V
    .locals 4

    const v0, 0x7f0900bb

    if-ne p1, v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    :goto_0
    if-ne p1, v0, :cond_1

    .line 435
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v2, 0x0

    .line 439
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    div-int/lit8 v3, v0, 0x2

    sub-int/2addr p2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v0

    .line 444
    iget v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    if-le p2, v2, :cond_2

    sub-int/2addr v2, v0

    .line 445
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    const/4 p2, 0x4

    .line 446
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/ActionItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 162
    iget v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mOrientation:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0020

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0c0021

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    const v4, 0x7f0902c2

    .line 168
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0905de

    .line 169
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 180
    :cond_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_2
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mChildPos:I

    .line 184
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/ActionItem;->getActionId()I

    move-result p1

    .line 186
    new-instance v1, Lcom/lostpixels/fieldservice/ui/QuickAction$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/lostpixels/fieldservice/ui/QuickAction$1;-><init>(Lcom/lostpixels/fieldservice/ui/QuickAction;II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 201
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 202
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 204
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mOrientation:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mChildPos:I

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c008f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 210
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 212
    iget-object v1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mTrack:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInsertPos:I

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 214
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInsertPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInsertPos:I

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mTrack:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInsertPos:I

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 219
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mChildPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mChildPos:I

    .line 220
    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInsertPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInsertPos:I

    return-void
.end method

.method public getActionItem(I)Lcom/lostpixels/fieldservice/ui/ActionItem;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/ui/ActionItem;

    return-object p1
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public setAnimStyle(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mAnimStyle:I

    return-void
.end method

.method public setOnActionItemClickListener(Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mItemClickListener:Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;

    return-void
.end method

.method public setRootViewId(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    const v0, 0x7f0905ac

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mTrack:Landroid/view/ViewGroup;

    .line 113
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    const v0, 0x7f0900ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 114
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    const v0, 0x7f0900bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 116
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    const v0, 0x7f0904b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mScroller:Landroid/widget/ScrollView;

    .line 121
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/ui/PopupWindows;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 11

    .line 227
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/PopupWindows;->preShow()V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mDidAction:Z

    const/4 v1, 0x2

    .line 233
    new-array v2, v1, [I

    .line 235
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 237
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v0

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    aget v2, v2, v5

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v2, v8

    invoke-direct {v3, v4, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    const/4 v4, -0x2

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 244
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 246
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    if-nez v4, :cond_0

    .line 247
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    .line 250
    :cond_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 251
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 254
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    add-int v9, v7, v8

    if-le v9, v4, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v8, v1

    sub-int/2addr v7, v8

    .line 256
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 257
    iget v7, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    sub-int v7, v4, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 259
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    :goto_0
    sub-int/2addr v7, v1

    goto :goto_2

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    if-le v7, v8, :cond_2

    .line 263
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    div-int/2addr v8, v1

    sub-int/2addr v7, v8

    goto :goto_1

    .line 265
    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 267
    :goto_1
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 269
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    goto :goto_0

    .line 272
    :goto_2
    iget v8, v3, Landroid/graphics/Rect;->top:I

    .line 273
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v9

    if-le v8, v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 276
    :goto_3
    iget-boolean v10, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->showBelow:Z

    if-eqz v10, :cond_4

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_6

    if-le v2, v8, :cond_5

    .line 282
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v8, v6

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v9, 0xf

    goto :goto_4

    :cond_5
    sub-int v9, v8, v2

    goto :goto_4

    :cond_6
    if-le v2, v6, :cond_7

    .line 291
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 292
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    const v2, 0x7f0900ba

    goto :goto_5

    :cond_8
    const v2, 0x7f0900bb

    .line 296
    :goto_5
    invoke-direct {p0, v2, v7}, Lcom/lostpixels/fieldservice/ui/QuickAction;->showArrow(II)V

    .line 298
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-direct {p0, v4, v2, v5}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setAnimationStyle(IIZ)V

    .line 300
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1, v0, v1, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 9

    .line 308
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/PopupWindows;->preShow()V

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mDidAction:Z

    const/4 v1, 0x2

    .line 315
    new-array v2, v1, [I

    .line 317
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 319
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x1

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    const/4 p3, -0x2

    invoke-virtual {p2, p3, p3}, Landroid/view/View;->measure(II)V

    .line 325
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 327
    iget p3, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    if-nez p3, :cond_0

    .line 328
    iget-object p3, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iput p3, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    .line 331
    :cond_0
    iget-object p3, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    .line 332
    iget-object v3, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 335
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    add-int v6, v4, v5

    if-le v6, p3, :cond_1

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v5, v1

    sub-int/2addr v4, v5

    .line 337
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 338
    iget v4, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    sub-int v4, p3, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 340
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    :goto_0
    sub-int/2addr v4, v1

    goto :goto_2

    .line 343
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    if-le v4, v5, :cond_2

    .line 344
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget v5, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->rootWidth:I

    div-int/2addr v5, v1

    sub-int/2addr v4, v5

    goto :goto_1

    .line 346
    :cond_2
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 348
    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 350
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    goto :goto_0

    .line 353
    :goto_2
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 354
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v6

    sub-int v7, v5, p2

    const/16 v8, 0x32

    if-le v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 358
    :goto_3
    iget-boolean v8, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->showBelow:Z

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    :cond_4
    if-eqz v7, :cond_6

    if-le p2, v5, :cond_5

    .line 364
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v5, v3

    iput v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v6, 0xf

    goto :goto_4

    :cond_5
    sub-int v6, v5, p2

    goto :goto_4

    :cond_6
    if-le p2, v3, :cond_7

    .line 373
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 374
    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    const p2, 0x7f0900ba

    goto :goto_5

    :cond_8
    const p2, 0x7f0900bb

    .line 378
    :goto_5
    invoke-direct {p0, p2, v4}, Lcom/lostpixels/fieldservice/ui/QuickAction;->showArrow(II)V

    .line 381
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-direct {p0, p3, p2, v7}, Lcom/lostpixels/fieldservice/ui/QuickAction;->setAnimationStyle(IIZ)V

    .line 383
    iget-object p2, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1, v0, v1, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
