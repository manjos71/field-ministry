.class Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;)Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->sort:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;->group:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    invoke-interface {p1, v1, v0, p2}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;->onSortChanged(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;Z)V

    return-void
.end method
