.class Lcom/ipaulpro/afilechooser/FileLoader$1;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ipaulpro/afilechooser/FileLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ipaulpro/afilechooser/FileLoader;


# direct methods
.method constructor <init>(Lcom/ipaulpro/afilechooser/FileLoader;Ljava/lang/String;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader$1;->this$0:Lcom/ipaulpro/afilechooser/FileLoader;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader$1;->this$0:Lcom/ipaulpro/afilechooser/FileLoader;

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->onContentChanged()V

    return-void
.end method
