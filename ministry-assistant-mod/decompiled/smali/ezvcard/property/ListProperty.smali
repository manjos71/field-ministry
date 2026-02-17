.class public abstract Lezvcard/property/ListProperty;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field protected values:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezvcard/property/ListProperty;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lezvcard/property/ListProperty;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getValues()Ljava/util/List;
    .locals 1

    .line 52
    iget-object v0, p0, Lezvcard/property/ListProperty;->values:Ljava/util/List;

    return-object v0
.end method
