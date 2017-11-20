.class final Lcom/google/android/gms/auth/authzen/transaction/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ab;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/authzen/transaction/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/authzen/transaction/a;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/gms/auth/authzen/transaction/b;->a:Lcom/google/android/gms/auth/authzen/transaction/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 2

    .prologue
    .line 211
    check-cast p1, Lcom/google/android/gms/people/d;

    invoke-interface {p1}, Lcom/google/android/gms/people/d;->g_()Lcom/google/android/gms/people/model/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/c;->c()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/people/d;->g_()Lcom/google/android/gms/people/model/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/model/c;->b(I)Lcom/google/android/gms/people/model/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/authzen/transaction/b;->a:Lcom/google/android/gms/auth/authzen/transaction/a;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/authzen/transaction/a;->a(Lcom/google/android/gms/auth/authzen/transaction/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
