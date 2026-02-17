.class Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    iput-object p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;

    iget-boolean p2, p1, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->isCreating:Z

    if-nez p2, :cond_0

    .line 63
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    invoke-interface {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;->onColoringChanged(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09046b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
