.class public Lcom/lostpixels/fieldservice/utils/Triplet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final first:Ljava/lang/Object;

.field private final second:Ljava/lang/Object;

.field private final third:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/Triplet;->first:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/Triplet;->second:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/Triplet;->third:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFirst()Ljava/lang/Object;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/Triplet;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/Triplet;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public getThird()Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/Triplet;->third:Ljava/lang/Object;

    return-object v0
.end method
