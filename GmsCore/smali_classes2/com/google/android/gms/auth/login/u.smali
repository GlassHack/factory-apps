.class final Lcom/google/android/gms/auth/login/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/auth/login/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/BrowserActivity;Z)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/gms/auth/login/u;->b:Lcom/google/android/gms/auth/login/BrowserActivity;

    iput-boolean p2, p0, Lcom/google/android/gms/auth/login/u;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/gms/auth/login/u;->b:Lcom/google/android/gms/auth/login/BrowserActivity;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/u;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/BrowserActivity;->c(Lcom/google/android/gms/auth/login/BrowserActivity;Z)Z

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/auth/login/u;->b:Lcom/google/android/gms/auth/login/BrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 361
    iget-boolean v2, p0, Lcom/google/android/gms/auth/login/u;->a:Z

    if-eqz v2, :cond_0

    .line 362
    const v2, -0x400001

    and-int/2addr v0, v2

    .line 366
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 367
    return-void

    .line 364
    :cond_0
    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    goto :goto_0
.end method
