.class final Lcom/google/android/gms/auth/login/j;
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
    .line 264
    iput-object p1, p0, Lcom/google/android/gms/auth/login/j;->a:Lcom/google/android/gms/auth/login/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gms/auth/login/j;->a:Lcom/google/android/gms/auth/login/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/login/i;->setResult(I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/auth/login/j;->a:Lcom/google/android/gms/auth/login/i;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/login/i;->finish()V

    .line 269
    return-void
.end method
