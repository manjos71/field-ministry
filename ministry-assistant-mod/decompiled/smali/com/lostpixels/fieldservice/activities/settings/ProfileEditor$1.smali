.class Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;
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

    .line 98
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getInstance()Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-virtual {v1, v2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->getThemeColorName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fputthemeColor(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetthemeColorView(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor$1;->this$0:Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;->-$$Nest$fgetthemeBackground(Lcom/lostpixels/fieldservice/activities/settings/ProfileEditor;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
