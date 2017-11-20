.class Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->access$200(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->access$200(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 165
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getWidth()I

    move-result v3

    .line 166
    .local v3, "vWidth":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->getHeight()I

    move-result v2

    .line 168
    .local v2, "vHeight":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 169
    .local v1, "restore":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v3

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v2

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->access$200(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 176
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "restore":I
    .end local v2    # "vHeight":I
    .end local v3    # "vWidth":I
    :goto_0
    return-void

    .line 174
    :cond_0
    const/high16 v4, 0x70000000

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 180
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 184
    return-void
.end method
