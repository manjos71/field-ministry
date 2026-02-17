.class Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;

    iput-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;->mbIsSatelite:Z

    .line 107
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialogPermissionsDispatcher;->setMapTypeWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/visits/PersonMapDialog;)V

    return-void
.end method
