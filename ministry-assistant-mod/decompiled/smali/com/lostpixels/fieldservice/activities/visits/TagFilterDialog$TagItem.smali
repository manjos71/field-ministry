.class public Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagItem"
.end annotation


# instance fields
.field public color:I

.field public icon:I

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    .line 356
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->name:Ljava/lang/String;

    .line 357
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->color:I

    .line 358
    iput p4, p0, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->icon:I

    return-void
.end method
