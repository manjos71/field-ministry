.class Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->showDialog(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private called:Z

.field final synthetic this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

.field final synthetic val$authDialog:Landroid/app/Dialog;

.field final synthetic val$credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Landroid/app/Dialog;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->val$authDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->val$credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->called:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .line 249
    const-string p1, "?code="

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-boolean p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->called:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->called:Z

    .line 257
    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->val$authDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 259
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "code"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    :try_start_0
    new-instance v0, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;

    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-static {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->access$200(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    iget-object v3, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->val$credentialStore:Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    .line 263
    invoke-static {v2}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->access$300(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-static {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->access$400(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-static {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->access$500(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-static {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->access$600(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "authorization_code"

    invoke-direct/range {v0 .. v9}, Lcom/pierfrancescosoffritti/webbasedoauth/GetTokensTask;-><init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->val$authDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 265
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_0
    iget-object p2, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->val$authDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    throw p1

    .line 269
    :cond_1
    const-string p1, "error=access_denied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 270
    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$3;->val$authDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
