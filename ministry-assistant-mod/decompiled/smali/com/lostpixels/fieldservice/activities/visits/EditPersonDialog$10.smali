.class Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$10;
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

    .line 838
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 841
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog$10;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialogPermissionsDispatcher;->getAddressFromPosWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/EditPersonDialog;)V

    return-void
.end method
