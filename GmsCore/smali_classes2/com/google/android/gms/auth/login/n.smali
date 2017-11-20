.class final Lcom/google/android/gms/auth/login/n;
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
    .line 752
    iput-object p1, p0, Lcom/google/android/gms/auth/login/n;->b:Lcom/google/android/gms/auth/login/i;

    iput-object p2, p0, Lcom/google/android/gms/auth/login/n;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/gms/auth/login/n;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/auth/login/n;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x1603

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 757
    const/4 v0, 0x1

    return v0
.end method
