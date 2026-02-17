.class Lme/gujun/android/taggroup/TagGroup$TagView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/gujun/android/taggroup/TagGroup$TagView;-><init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

.field final synthetic val$this$0:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method constructor <init>(Lme/gujun/android/taggroup/TagGroup$TagView;Lme/gujun/android/taggroup/TagGroup;)V
    .locals 0

    .line 994
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iput-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->val$this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    if-nez p2, :cond_5

    .line 1008
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_4

    .line 1021
    :goto_0
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {p2}, Lme/gujun/android/taggroup/TagGroup$TagView;->isInputAvailable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1025
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$1400(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1026
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$1400(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    move-result-object p2

    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object v0, p3, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;->onAppend(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1027
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p2}, Lme/gujun/android/taggroup/TagGroup;->submitTag()V

    goto :goto_1

    .line 1030
    :cond_3
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$2;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p2}, Lme/gujun/android/taggroup/TagGroup;->submitTag()V

    :cond_4
    :goto_1
    return p1

    :cond_5
    return v0
.end method
