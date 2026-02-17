.class Lme/gujun/android/taggroup/TagGroup$TagView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$state:I

.field final synthetic val$this$0:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method constructor <init>(Lme/gujun/android/taggroup/TagGroup$TagView;Lme/gujun/android/taggroup/TagGroup;I)V
    .locals 0

    .line 983
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$1;->this$1:Lme/gujun/android/taggroup/TagGroup$TagView;

    iput-object p2, p0, Lme/gujun/android/taggroup/TagGroup$TagView$1;->val$this$0:Lme/gujun/android/taggroup/TagGroup;

    iput p3, p0, Lme/gujun/android/taggroup/TagGroup$TagView$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 986
    iget p1, p0, Lme/gujun/android/taggroup/TagGroup$TagView$1;->val$state:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
