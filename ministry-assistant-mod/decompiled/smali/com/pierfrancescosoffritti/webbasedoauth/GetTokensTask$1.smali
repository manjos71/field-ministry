.class Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-static {v2}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$100(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$002(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 56
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$000(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-static {v1}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$100(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/pierfrancescosoffritti/webbasedoauth/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$000(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 58
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$000(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 59
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$000(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
