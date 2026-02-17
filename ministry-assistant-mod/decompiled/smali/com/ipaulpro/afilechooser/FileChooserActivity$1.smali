.class Lcom/ipaulpro/afilechooser/FileChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipaulpro/afilechooser/FileChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 58
    sget p2, Lcom/ipaulpro/afilechooser/R$string;->storage_removed:I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->access$000(Lcom/ipaulpro/afilechooser/FileChooserActivity;Ljava/io/File;)V

    return-void
.end method
