.class Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;

    iget v1, v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miLastId:I

    const v2, 0x7f0902dd

    if-eq v1, v2, :cond_1

    const v2, 0x7f0902ef

    if-eq v1, v2, :cond_0

    return-void

    .line 54
    :cond_0
    iput p1, v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    .line 55
    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mviewFg1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;

    iget-object v0, p1, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mPlacements:Landroid/widget/ImageView;

    iget p1, p1, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintImage(Landroid/widget/ImageView;I)V

    return-void

    .line 49
    :cond_1
    iput p1, v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorBg1:I

    .line 50
    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mviewBg1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mWidgetBackground:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getWidgetBackgroundRound(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
