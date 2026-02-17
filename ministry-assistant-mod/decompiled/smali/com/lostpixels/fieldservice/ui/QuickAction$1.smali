.class Lcom/lostpixels/fieldservice/ui/QuickAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/QuickAction;->addActionItem(Lcom/lostpixels/fieldservice/ui/ActionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

.field final synthetic val$actionId:I

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/QuickAction;II)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->val$pos:I

    iput p3, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->val$actionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 189
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->-$$Nest$fgetmItemClickListener(Lcom/lostpixels/fieldservice/ui/QuickAction;)Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/QuickAction;->-$$Nest$fgetmItemClickListener(Lcom/lostpixels/fieldservice/ui/QuickAction;)Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

    iget v1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->val$pos:I

    iget v2, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->val$actionId:I

    invoke-interface {p1, v0, v1, v2}, Lcom/lostpixels/fieldservice/ui/QuickAction$OnActionItemClickListener;->onItemClick(Lcom/lostpixels/fieldservice/ui/QuickAction;II)V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

    iget v0, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->val$pos:I

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/QuickAction;->getActionItem(I)Lcom/lostpixels/fieldservice/ui/ActionItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/ActionItem;->isSticky()Z

    move-result p1

    if-nez p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/ui/QuickAction;->-$$Nest$fputmDidAction(Lcom/lostpixels/fieldservice/ui/QuickAction;Z)V

    .line 196
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/QuickAction$1;->this$0:Lcom/lostpixels/fieldservice/ui/QuickAction;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/PopupWindows;->dismiss()V

    :cond_1
    return-void
.end method
