.class Lcom/android/systemui/statusbar/phone/QuickSettings$6;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
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
    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v1, "android.settings.SETTINGS"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;)V

    .line 371
    return-void
.end method
