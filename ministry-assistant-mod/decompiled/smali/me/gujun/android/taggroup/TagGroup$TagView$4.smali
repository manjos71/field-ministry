.class Lme/gujun/android/taggroup/TagGroup$TagView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


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

    .line 1068
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iput-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->val$this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 1071
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$1500(Lme/gujun/android/taggroup/TagGroup;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$000(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1072
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1073
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1074
    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p4}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1075
    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p3, p2}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$102(Lme/gujun/android/taggroup/TagGroup$TagView;Ljava/lang/String;)Ljava/lang/String;

    return-object p1

    .line 1076
    :cond_0
    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p4

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gt p4, v0, :cond_1

    .line 1077
    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p5}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p2, p6, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$102(Lme/gujun/android/taggroup/TagGroup$TagView;Ljava/lang/String;)Ljava/lang/String;

    return-object p1

    .line 1079
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    sub-int p4, p6, p5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p4, v0, :cond_2

    goto :goto_0

    .line 1082
    :cond_2
    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$102(Lme/gujun/android/taggroup/TagGroup$TagView;Ljava/lang/String;)Ljava/lang/String;

    return-object p1

    .line 1080
    :cond_3
    :goto_0
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$4;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$1602(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z

    :cond_4
    return-object p1
.end method
