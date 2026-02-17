.class Lnet/steamcrafted/loadtoast/LoadToast$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/steamcrafted/loadtoast/LoadToast;->slideUp(I)V
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

    .line 181
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToast$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToast$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {p1}, Lnet/steamcrafted/loadtoast/LoadToast;->access$700(Lnet/steamcrafted/loadtoast/LoadToast;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToast$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-static {p1}, Lnet/steamcrafted/loadtoast/LoadToast;->access$800(Lnet/steamcrafted/loadtoast/LoadToast;)V

    :cond_0
    return-void
.end method
