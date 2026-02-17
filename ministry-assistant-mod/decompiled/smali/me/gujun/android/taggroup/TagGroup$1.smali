.class Lme/gujun/android/taggroup/TagGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/gujun/android/taggroup/TagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method constructor <init>(Lme/gujun/android/taggroup/TagGroup;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$1;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 275
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$1;->this$0:Lme/gujun/android/taggroup/TagGroup;

    invoke-virtual {p1}, Lme/gujun/android/taggroup/TagGroup;->submitTag()V

    return-void
.end method
