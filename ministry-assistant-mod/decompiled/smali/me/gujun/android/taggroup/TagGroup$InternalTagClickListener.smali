.class Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/gujun/android/taggroup/TagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalTagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method constructor <init>(Lme/gujun/android/taggroup/TagGroup;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 817
    check-cast p1, Lme/gujun/android/taggroup/TagGroup$TagView;

    .line 818
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$600(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 851
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$600(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;->onTagClick(Ljava/lang/String;)V

    return-void

    .line 819
    :cond_1
    :goto_0
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$200(Lme/gujun/android/taggroup/TagGroup$TagView;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$200(Lme/gujun/android/taggroup/TagGroup$TagView;)I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 821
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 823
    invoke-virtual {v0, v3}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    goto :goto_1

    .line 825
    :cond_3
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 826
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$300(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 827
    invoke-virtual {p1, v3}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    goto :goto_1

    .line 829
    :cond_4
    invoke-virtual {p1, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    goto :goto_1

    .line 834
    :cond_5
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$300(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 835
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v0, p1}, Lme/gujun/android/taggroup/TagGroup;->deleteTag(Lme/gujun/android/taggroup/TagGroup$TagView;)V

    goto :goto_1

    .line 839
    :cond_6
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 841
    invoke-virtual {v0, v3}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    .line 843
    :cond_7
    invoke-virtual {p1, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    .line 847
    :cond_8
    :goto_1
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$600(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$200(Lme/gujun/android/taggroup/TagGroup$TagView;)I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 848
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$InternalTagClickListener;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->access$600(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lme/gujun/android/taggroup/TagGroup$OnTagClickListener;->onTagClick(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
