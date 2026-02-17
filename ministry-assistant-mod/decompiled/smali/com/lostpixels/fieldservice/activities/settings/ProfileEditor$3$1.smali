.class Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3$1;->this$1:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$3;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$mupdateLayouts(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
