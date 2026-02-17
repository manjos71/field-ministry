.class public abstract Lezvcard/property/SimpleProperty;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 51
    iput-object p1, p0, Lezvcard/property/SimpleProperty;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lezvcard/property/SimpleProperty;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lezvcard/property/SimpleProperty;->value:Ljava/lang/Object;

    return-void
.end method
