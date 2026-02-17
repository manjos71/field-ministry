.class Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$2;
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

    .line 84
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$2;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask$2;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;->access$000(Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
