.class final Lcom/google/android/gms/auth/login/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/gms/auth/login/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/i;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/google/android/gms/auth/login/m;->b:Lcom/google/android/gms/auth/login/i;

    iput-object p2, p0, Lcom/google/android/gms/auth/login/m;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/gms/auth/login/m;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/m;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1602

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 736
    const/4 v0, 0x1

    return v0
.end method
