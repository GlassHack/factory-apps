.class Lcom/android/systemui/statusbar/phone/QuickSettings$12;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
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
    .line 479
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$12;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$12;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    .line 483
    .local v0, "locked":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$12;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 484
    return-void

    .line 483
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
