.class public Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardStackInfo"
.end annotation


# instance fields
.field public final stack:Lcom/fima/cardsui/objects/CardStack;

.field public final stackType:I


# direct methods
.method constructor <init>(Lcom/fima/cardsui/objects/CardStack;I)V
    .locals 0

    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stack:Lcom/fima/cardsui/objects/CardStack;

    .line 1366
    iput p2, p0, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator$CardStackInfo;->stackType:I

    return-void
.end method
