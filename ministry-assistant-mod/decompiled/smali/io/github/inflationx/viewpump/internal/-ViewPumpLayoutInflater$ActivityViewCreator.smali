.class final Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$ActivityViewCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/inflationx/viewpump/FallbackViewCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityViewCreator"
.end annotation


# instance fields
.field private final inflater:Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;Landroid/view/View;)V
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$ActivityViewCreator;->inflater:Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;

    iput-object p2, p0, Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$ActivityViewCreator;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$ActivityViewCreator;->inflater:Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;

    iget-object v0, p0, Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$ActivityViewCreator;->view:Landroid/view/View;

    invoke-static {p1, v0, p2, p3, p4}, Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;->access$createCustomViewInternal(Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
