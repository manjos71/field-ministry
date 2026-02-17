.class Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$VisitInfoItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VisitInfoItem"
.end annotation


# instance fields
.field public date:Ljava/util/Date;

.field public text:Landroid/text/Spannable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$VisitInfoItem;)I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$VisitInfoItem;->date:Ljava/util/Date;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$VisitInfoItem;->date:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 232
    check-cast p1, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$VisitInfoItem;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$VisitInfoItem;->compareTo(Lcom/lostpixels/fieldservice/receivers/VisitNotificationReciever$VisitInfoItem;)I

    move-result p1

    return p1
.end method
