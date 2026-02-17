.class public Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final miStreetIx:I

.field private final mlstItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->miStreetIx:I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->mlstItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getSelectItems()Ljava/util/ArrayList;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->mlstItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStreetIndex()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->miStreetIx:I

    return v0
.end method
