.class Lcom/lostpixels/fieldservice/ui/Chip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/Chip;->initSelectClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/Chip;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/Chip;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip$1;->this$0:Lcom/lostpixels/fieldservice/ui/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip$1;->this$0:Lcom/lostpixels/fieldservice/ui/Chip;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/Chip;->-$$Nest$monSelectTouchUp(Lcom/lostpixels/fieldservice/ui/Chip;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/Chip$1;->this$0:Lcom/lostpixels/fieldservice/ui/Chip;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/Chip;->-$$Nest$monSelectTouchDown(Lcom/lostpixels/fieldservice/ui/Chip;)V

    :goto_0
    return p2
.end method
