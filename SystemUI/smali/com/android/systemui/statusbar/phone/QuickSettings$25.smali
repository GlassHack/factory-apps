.class Lcom/android/systemui/statusbar/phone/QuickSettings$25;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$25;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 680
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$25;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 682
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/app/Dialog;

    .line 683
    .local v0, "dialog":[Landroid/app/Dialog;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$25;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$25$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$25$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings$25;[Landroid/app/Dialog;)V

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    aput-object v1, v0, v4

    .line 693
    aget-object v1, v0, v4

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 694
    aget-object v1, v0, v4

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 695
    return-void
.end method
