.class Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->showDialog(Lcom/pierfrancescosoffritti/webbasedoauth/CredentialStore;)V
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

    .line 219
    iput-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$2;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator$2;->this$0:Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/webbasedoauth/Authenticator;->unlock()V

    return-void
.end method
