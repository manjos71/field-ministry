.class Lcom/lostpixels/fieldservice/receivers/ReminderReciever$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/receivers/ReminderReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/receivers/ReminderReciever;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/receivers/ReminderReciever;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/lostpixels/fieldservice/receivers/ReminderReciever$1;->this$0:Lcom/lostpixels/fieldservice/receivers/ReminderReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
