.class Lcom/android/systemui/statusbar/phone/QuickSettings$27;
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
    .line 729
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 734
    return-void
.end method
