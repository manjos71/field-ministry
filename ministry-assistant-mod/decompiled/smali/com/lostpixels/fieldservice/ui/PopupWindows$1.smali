.class Lcom/lostpixels/fieldservice/ui/PopupWindows$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/PopupWindows;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/PopupWindows;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/PopupWindows;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows$1;->this$0:Lcom/lostpixels/fieldservice/ui/PopupWindows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/PopupWindows$1;->this$0:Lcom/lostpixels/fieldservice/ui/PopupWindows;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/ui/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
