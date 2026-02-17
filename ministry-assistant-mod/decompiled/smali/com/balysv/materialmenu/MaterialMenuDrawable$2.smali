.class Lcom/balysv/materialmenu/MaterialMenuDrawable$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/balysv/materialmenu/MaterialMenuDrawable;->initAnimations(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;


# direct methods
.method constructor <init>(Lcom/balysv/materialmenu/MaterialMenuDrawable;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$2;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1

    .line 733
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$2;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$202(Lcom/balysv/materialmenu/MaterialMenuDrawable;Z)Z

    .line 734
    iget-object p1, p0, Lcom/balysv/materialmenu/MaterialMenuDrawable$2;->this$0:Lcom/balysv/materialmenu/MaterialMenuDrawable;

    invoke-static {p1}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->access$300(Lcom/balysv/materialmenu/MaterialMenuDrawable;)Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/balysv/materialmenu/MaterialMenuDrawable;->setIconState(Lcom/balysv/materialmenu/MaterialMenuDrawable$IconState;)V

    return-void
.end method
