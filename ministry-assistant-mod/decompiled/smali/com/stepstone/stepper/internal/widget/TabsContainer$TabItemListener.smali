.class public interface abstract Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stepstone/stepper/internal/widget/TabsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabItemListener"
.end annotation


# static fields
.field public static final NULL:Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener$1;

    invoke-direct {v0}, Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener$1;-><init>()V

    sput-object v0, Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;->NULL:Lcom/stepstone/stepper/internal/widget/TabsContainer$TabItemListener;

    return-void
.end method


# virtual methods
.method public abstract onTabClicked(I)V
.end method
