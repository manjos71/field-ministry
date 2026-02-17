.class Lcom/lostpixels/fieldservice/ui/ClearableEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/ClearableEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/ClearableEditText;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$2;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 63
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$2;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    .line 66
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$2;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->imgX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    .line 71
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$2;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->removeClearButton()V

    :cond_2
    return v1
.end method
