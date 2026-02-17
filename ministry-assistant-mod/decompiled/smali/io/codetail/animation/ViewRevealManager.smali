.class public Lio/codetail/animation/ViewRevealManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;,
        Lio/codetail/animation/ViewRevealManager$RevealValues;
    }
.end annotation


# static fields
.field public static final REVEAL:Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;


# instance fields
.field private targets:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;

    invoke-direct {v0}, Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;-><init>()V

    sput-object v0, Lio/codetail/animation/ViewRevealManager;->REVEAL:Lio/codetail/animation/ViewRevealManager$ClipRadiusProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public transform(Landroid/graphics/Canvas;Landroid/view/View;)Z
    .locals 0

    .line 87
    iget-object p1, p0, Lio/codetail/animation/ViewRevealManager;->targets:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/codetail/animation/ViewRevealManager$RevealValues;

    const/4 p1, 0x0

    return p1
.end method
