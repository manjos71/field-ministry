.class Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$alternativePerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:J

.field final synthetic val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;Lcom/lostpixels/fieldservice/internal/ministry/Person;J)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$listener:Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$alternativePerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-wide p4, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotCurrentCityComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 52
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c008c

    .line 53
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 54
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a2

    .line 56
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f09016f

    .line 57
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v1, 0x8

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    const v1, 0x7f12039b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfputmlstCities(Ljava/util/ArrayList;)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    new-instance p1, Ljava/util/HashSet;

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfputmlstCities(Ljava/util/ArrayList;)V

    .line 73
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 75
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;->val$context:Landroid/content/Context;

    const v1, 0x7f090560

    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->-$$Nest$sfgetmlstCities()Ljava/util/ArrayList;

    move-result-object v3

    const v4, 0x7f0c0137

    invoke-direct {p1, v0, v4, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 77
    invoke-virtual {v2, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x1

    .line 78
    invoke-virtual {v2, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    :cond_2
    const p1, 0x7f0900f5

    .line 81
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 82
    new-instance v0, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1$1;-><init>(Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$1;Landroid/widget/AutoCompleteTextView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void
.end method
