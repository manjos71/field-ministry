.class Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$1;->this$0:Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
