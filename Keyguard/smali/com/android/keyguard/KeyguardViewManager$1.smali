.class Lcom/android/keyguard/KeyguardViewManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
