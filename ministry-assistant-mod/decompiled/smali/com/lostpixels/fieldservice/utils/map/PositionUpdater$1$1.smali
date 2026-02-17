.class Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->onGotCurrentCityComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

.field final synthetic val$countryCode:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$sCountry:Ljava/lang/String;

.field final synthetic val$text:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$text:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$sCountry:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$countryCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 173
    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$text:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 174
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfputmlstCities(Ljava/util/ArrayList;)V

    .line 177
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$text:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    new-instance v1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->this$0:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;

    iget-wide v3, p1, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$id:J

    iget-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$text:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$sCountry:Ljava/lang/String;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$countryCode:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1$1GetAddressPositionTask;-><init>(Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    :try_start_0
    iget-object p1, v2, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
