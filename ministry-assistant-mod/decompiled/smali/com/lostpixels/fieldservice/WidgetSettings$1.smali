.class Lcom/lostpixels/fieldservice/WidgetSettings$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/WidgetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/WidgetSettings;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/WidgetSettings;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v1, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->miLastId:I

    sparse-switch v1, :sswitch_data_0

    return-void

    .line 78
    :sswitch_0
    iput p1, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    .line 79
    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewFont2:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSample:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 73
    :sswitch_1
    iput p1, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    .line 74
    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewFont1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mLabelSample:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 68
    :sswitch_2
    iput p1, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    .line 69
    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewBg1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings$1;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mWidgetBackground:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->transparentBackground:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getWidgetBackground(IZ)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902dd -> :sswitch_2
        0x7f0902f0 -> :sswitch_1
        0x7f0902f1 -> :sswitch_0
    .end sparse-switch
.end method
