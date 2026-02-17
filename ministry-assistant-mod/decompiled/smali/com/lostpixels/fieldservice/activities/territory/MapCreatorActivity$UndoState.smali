.class Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UndoState"
.end annotation


# instance fields
.field public first:Z

.field public latitude:D

.field public longitude:D

.field public middle:Z

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity$UndoState;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
