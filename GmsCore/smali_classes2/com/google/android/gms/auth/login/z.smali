.class final Lcom/google/android/gms/auth/login/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/y;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/google/android/gms/auth/login/z;->a:Lcom/google/android/gms/auth/login/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/google/android/gms/auth/login/z;->a:Lcom/google/android/gms/auth/login/y;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/auth/login/y;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    iget v2, v0, Lcom/google/android/gms/auth/login/y;->c:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/google/android/gms/auth/login/y;->b:I

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/y;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v3, v2, v1

    div-int/lit8 v4, v2, 0x4

    if-le v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/auth/login/y;->d:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v2, v3

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/auth/login/y;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    iput v1, v0, Lcom/google/android/gms/auth/login/y;->b:I

    .line 1012
    :cond_0
    return-void

    .line 1011
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/auth/login/y;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method
