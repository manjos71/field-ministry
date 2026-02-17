.class public abstract Lcom/fima/cardsui/objects/AbstractCard;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected desc:Ljava/lang/String;

.field protected image:I

.field protected isClickable:Ljava/lang/Boolean;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setIsClickable(Ljava/lang/Boolean;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/fima/cardsui/objects/AbstractCard;->isClickable:Ljava/lang/Boolean;

    return-void
.end method
