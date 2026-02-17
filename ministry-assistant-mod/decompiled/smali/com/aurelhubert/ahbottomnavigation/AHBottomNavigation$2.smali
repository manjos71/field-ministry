.class Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->createClassicItems(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;I)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$2;->this$0:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    iput p2, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$2;->val$itemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 466
    iget-object p1, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$2;->this$0:Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;

    iget v0, p0, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation$2;->val$itemIndex:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;->access$000(Lcom/aurelhubert/ahbottomnavigation/AHBottomNavigation;IZ)V

    return-void
.end method
