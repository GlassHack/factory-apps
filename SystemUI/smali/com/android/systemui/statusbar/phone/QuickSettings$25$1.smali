.class Lcom/android/systemui/statusbar/phone/QuickSettings$25$1;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings$25;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$25;

.field final synthetic val$dialog:[Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings$25;[Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$25$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$25;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$25$1;->val$dialog:[Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$25$1;->val$dialog:[Landroid/app/Dialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$25$1;->this$1:Lcom/android/systemui/statusbar/phone/QuickSettings$25;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings$25;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v1, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;)V

    .line 691
    return-void
.end method
