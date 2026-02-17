.class Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetspinnerProfile(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
