.class Lnet/steamcrafted/loadtoast/LoadToast$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/steamcrafted/loadtoast/LoadToast;->attach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/steamcrafted/loadtoast/LoadToast;


# direct methods
.method constructor <init>(Lnet/steamcrafted/loadtoast/LoadToast;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->access$000(Lnet/steamcrafted/loadtoast/LoadToast;)Lnet/steamcrafted/loadtoast/LoadToastView;

    move-result-object v0

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v1}, Lnet/steamcrafted/loadtoast/LoadToast;->access$100(Lnet/steamcrafted/loadtoast/LoadToast;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v2}, Lnet/steamcrafted/loadtoast/LoadToast;->access$000(Lnet/steamcrafted/loadtoast/LoadToast;)Lnet/steamcrafted/loadtoast/LoadToastView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 131
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->access$000(Lnet/steamcrafted/loadtoast/LoadToast;)Lnet/steamcrafted/loadtoast/LoadToastView;

    move-result-object v0

    iget-object v1, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v1}, Lnet/steamcrafted/loadtoast/LoadToast;->access$000(Lnet/steamcrafted/loadtoast/LoadToast;)Lnet/steamcrafted/loadtoast/LoadToastView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v2}, Lnet/steamcrafted/loadtoast/LoadToast;->access$200(Lnet/steamcrafted/loadtoast/LoadToast;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 132
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/steamcrafted/loadtoast/LoadToast;->access$302(Lnet/steamcrafted/loadtoast/LoadToast;Z)Z

    .line 133
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->access$400(Lnet/steamcrafted/loadtoast/LoadToast;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->access$500(Lnet/steamcrafted/loadtoast/LoadToast;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast$1;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->access$600(Lnet/steamcrafted/loadtoast/LoadToast;)V

    :cond_0
    return-void
.end method
