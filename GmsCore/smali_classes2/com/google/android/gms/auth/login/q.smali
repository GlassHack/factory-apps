.class public final Lcom/google/android/gms/auth/login/q;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/auth/login/r;

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z


# direct methods
.method private a()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/auth/login/q;->a:Lcom/google/android/gms/auth/login/r;

    if-eqz v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/q;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/q;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/auth/login/q;->b:I

    if-lt v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/auth/login/q;->a:Lcom/google/android/gms/auth/login/r;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/q;->e:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/q;->e:Z

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/auth/login/q;->a:Lcom/google/android/gms/auth/login/r;

    goto :goto_0
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/q;->c:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sub-int v0, p5, p3

    iget v1, p0, Lcom/google/android/gms/auth/login/q;->d:I

    if-ge v0, v1, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/q;->c:Z

    .line 68
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/login/q;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/login/q;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p5

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/q;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/login/q;->b:I

    .line 74
    :cond_1
    sub-int v0, p5, p3

    if-lez v0, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/q;->a()V

    .line 77
    :cond_2
    sub-int v0, p5, p3

    iput v0, p0, Lcom/google/android/gms/auth/login/q;->d:I

    .line 78
    return-void
.end method

.method protected final onScrollChanged(IIII)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 83
    if-eq p4, p2, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/q;->a()V

    .line 86
    :cond_0
    return-void
.end method
