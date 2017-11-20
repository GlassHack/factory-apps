.class public final Lcom/google/android/gms/auth/authzen/transaction/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/authzen/transaction/b/h;


# instance fields
.field private final a:Lcom/google/android/gms/auth/authzen/transaction/b/h;

.field private final i:Lcom/google/android/gms/auth/authzen/transaction/b/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/authzen/transaction/b/h;Lcom/google/android/gms/auth/authzen/transaction/b/h;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/d;->i:Lcom/google/android/gms/auth/authzen/transaction/b/h;

    .line 20
    iput-object p2, p0, Lcom/google/android/gms/auth/authzen/transaction/b/d;->a:Lcom/google/android/gms/auth/authzen/transaction/b/h;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/b/d;->i:Lcom/google/android/gms/auth/authzen/transaction/b/h;

    invoke-interface {v0, p1}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/b/d;->a:Lcom/google/android/gms/auth/authzen/transaction/b/h;

    invoke-interface {v0, p1}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/auth/authzen/transaction/b/d;->a:Lcom/google/android/gms/auth/authzen/transaction/b/h;

    invoke-interface {v0}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b/d;->i:Lcom/google/android/gms/auth/authzen/transaction/b/h;

    invoke-interface {v1}, Lcom/google/android/gms/auth/authzen/transaction/b/h;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method
