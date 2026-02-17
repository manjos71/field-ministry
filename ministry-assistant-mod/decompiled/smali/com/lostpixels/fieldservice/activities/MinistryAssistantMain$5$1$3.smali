.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1$3;->this$2:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 590
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
