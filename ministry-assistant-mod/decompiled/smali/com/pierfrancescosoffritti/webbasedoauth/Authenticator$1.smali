.class Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->authenticate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$1;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->access$000(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;)Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->access$100(Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V

    return-void
.end method
