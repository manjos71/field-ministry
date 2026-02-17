.class Lcom/lostpixels/fieldservice/activities/SearchActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/SearchActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/SearchActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
