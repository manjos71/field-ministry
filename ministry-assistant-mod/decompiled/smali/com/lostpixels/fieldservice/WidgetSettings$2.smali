.class Lcom/lostpixels/fieldservice/WidgetSettings$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 88
    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 93
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    .line 95
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 96
    const-string v1, "widgetsettings.xml"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bgcolor1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transparent_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->transparentBackground:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontcolor1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontcolor2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontsize1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontsize2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize2:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    iget-object v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v1, v1, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/MonthReportWidgetBase;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 109
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 110
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget v0, v0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 112
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
