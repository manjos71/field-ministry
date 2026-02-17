.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->updateTagList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$4;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;)I
    .locals 1

    .line 272
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 269
    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$4;->compare(Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;)I

    move-result p1

    return p1
.end method
