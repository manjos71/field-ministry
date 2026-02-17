.class Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;->onFileOperationComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/MinistryAssistantMain$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 385
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
