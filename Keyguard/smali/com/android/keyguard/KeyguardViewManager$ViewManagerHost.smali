.class Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewManagerHost"
.end annotation


# instance fields
.field private final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardViewManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    .line 193
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;-><init>(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private computeCustomBackgroundBounds()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 207
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 211
    .local v2, "bgWidth":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 212
    .local v1, "bgHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getWidth()I

    move-result v5

    .line 213
    .local v5, "vWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getHeight()I

    move-result v4

    .line 215
    .local v4, "vHeight":I
    int-to-float v6, v2

    int-to-float v7, v1

    div-float v0, v6, v7

    .line 216
    .local v0, "bgAspect":F
    int-to-float v6, v5

    int-to-float v7, v4

    div-float v3, v6, v7

    .line 218
    .local v3, "vAspect":F
    cmpl-float v6, v0, v3

    if-lez v6, :cond_2

    .line 219
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v7, v4

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v8, v8, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v7, v5

    div-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v8, v8, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 244
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$500(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 248
    .local v0, "keyCode":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$500(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->handleBackKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    .end local v0    # "keyCode":I
    :cond_0
    :goto_0
    return v1

    .line 250
    .restart local v0    # "keyCode":I
    :cond_1
    const/16 v2, 0x52

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$500(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->handleMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    .end local v0    # "keyCode":I
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$500(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$300(Lcom/android/keyguard/KeyguardViewManager;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardViewManager;->access$400(Lcom/android/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V

    .line 240
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 228
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->computeCustomBackgroundBounds()V

    .line 229
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    .line 199
    if-eqz p1, :cond_0

    .line 200
    const/high16 v0, 0x70000000

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->computeCustomBackgroundBounds()V

    .line 203
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->invalidate()V

    .line 204
    return-void
.end method
