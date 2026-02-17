.class Lcom/lostpixels/fieldservice/activities/SearchActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/SearchActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/SearchActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/SearchActivity;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/SearchActivity;->lstPersons:Ljava/util/ArrayList;

    long-to-int p3, p4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/SearchActivity;->-$$Nest$mdisplayPerson(Lcom/lostpixels/fieldservice/activities/SearchActivity;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method
