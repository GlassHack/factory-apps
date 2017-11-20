.class Lcom/google/android/gms/common/api/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/g;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic PO:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic TE:Lcom/google/android/gms/common/api/d;

.field final synthetic TH:Lcom/google/android/gms/common/api/g;

.field final synthetic TI:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/g;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$7;->TE:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d$7;->TH:Lcom/google/android/gms/common/api/g;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/d$7;->TI:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/d$7;->PO:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->TE:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->TE:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->reconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->TH:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/g;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/d$7;->TI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$7;->PO:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/d$7;->m(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
