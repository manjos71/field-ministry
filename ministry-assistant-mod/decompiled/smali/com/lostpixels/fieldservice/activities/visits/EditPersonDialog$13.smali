.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->setupFragmentBasic()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 866
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$fgetperson(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCity(Ljava/lang/String;)V

    .line 867
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$13;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;->-$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;I)V

    return-void
.end method
