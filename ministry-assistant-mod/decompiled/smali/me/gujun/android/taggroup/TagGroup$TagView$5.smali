.class Lme/gujun/android/taggroup/TagGroup$TagView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 1093
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iput-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->val$this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1110
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1117
    :cond_0
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$000(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1118
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1, v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$002(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z

    return-void

    .line 1119
    :cond_1
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->access$1500(Lme/gujun/android/taggroup/TagGroup;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1121
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1122
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$002(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z

    .line 1123
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1126
    :cond_2
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    .line 1127
    iget-object v2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v2, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$002(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z

    .line 1128
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$1600(Lme/gujun/android/taggroup/TagGroup$TagView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1129
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1, v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$1602(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z

    .line 1130
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 1134
    :cond_3
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object v1, v1, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->access$1500(Lme/gujun/android/taggroup/TagGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v4}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 1136
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v3}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v4}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1137
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1138
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x777778

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v3}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1139
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 1145
    :cond_5
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$100(Lme/gujun/android/taggroup/TagGroup$TagView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    return-void

    .line 1111
    :cond_7
    :goto_0
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    invoke-static {v0, v1}, Lme/gujun/android/taggroup/TagGroup$TagView;->access$002(Lme/gujun/android/taggroup/TagGroup$TagView;Z)Z

    .line 1112
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    const-string v1, "[\\t\\n\\r]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->submitTag()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1097
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTag()Lme/gujun/android/taggroup/TagGroup$TagView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1098
    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p2, p2, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->access$400(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p2

    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$TagView$5;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iget-object p3, p3, Lme/gujun/android/taggroup/TagGroup$TagView;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p3}, Lme/gujun/android/taggroup/TagGroup;->access$500(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p3

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 1099
    invoke-virtual {p1, p2}, Lme/gujun/android/taggroup/TagGroup$TagView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
