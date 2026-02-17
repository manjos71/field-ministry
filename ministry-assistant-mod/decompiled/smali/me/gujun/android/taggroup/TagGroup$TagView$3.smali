.class Lme/gujun/android/taggroup/TagGroup$TagView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 1039
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iput-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->val$this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x43

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    .line 1042
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 1044
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1045
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->getLastNormalTagView()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1047
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$300(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 1048
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1049
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$1400(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1050
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$1400(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;

    move-result-object p2

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object v0, v0, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lme/gujun/android/taggroup/TagGroup$OnTagChangeListener;->onDelete(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_0
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$3;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p2}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1055
    invoke-virtual {p2, v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    .line 1057
    :cond_1
    invoke-virtual {p1, p3}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    :cond_2
    :goto_0
    return p3

    :cond_3
    return v0
.end method
