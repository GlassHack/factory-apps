.class final Lcom/google/android/gms/auth/login/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/i;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/gms/auth/login/k;->a:Lcom/google/android/gms/auth/login/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/gms/auth/login/k;->a:Lcom/google/android/gms/auth/login/i;

    invoke-static {v0}, Lcom/google/android/gms/auth/login/i;->a(Lcom/google/android/gms/auth/login/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/auth/login/k;->a:Lcom/google/android/gms/auth/login/i;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/i;->o:Lcom/google/android/gms/auth/login/q;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/q;->pageScroll(I)Z

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/k;->a:Lcom/google/android/gms/auth/login/i;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/i;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/auth/login/k;->a:Lcom/google/android/gms/auth/login/i;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/i;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/google/android/gms/auth/login/k;->a:Lcom/google/android/gms/auth/login/i;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/i;->d()V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/k;->a:Lcom/google/android/gms/auth/login/i;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/i;->g()V

    goto :goto_0
.end method
