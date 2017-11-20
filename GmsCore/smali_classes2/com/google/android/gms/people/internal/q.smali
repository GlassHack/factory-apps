.class final Lcom/google/android/gms/people/internal/q;
.super Lcom/google/android/gms/common/internal/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/d;


# instance fields
.field final synthetic b:Lcom/google/android/gms/people/internal/l;

.field private final c:Lcom/google/android/gms/common/api/Status;

.field private final d:Lcom/google/android/gms/people/model/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/people/model/c;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/android/gms/people/internal/q;->b:Lcom/google/android/gms/people/internal/l;

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/g;-><init>(Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;)V

    .line 430
    iput-object p3, p0, Lcom/google/android/gms/people/internal/q;->c:Lcom/google/android/gms/common/api/Status;

    .line 431
    iput-object p4, p0, Lcom/google/android/gms/people/internal/q;->d:Lcom/google/android/gms/people/model/c;

    .line 432
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/gms/people/internal/q;->d:Lcom/google/android/gms/people/model/c;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/android/gms/people/internal/q;->d:Lcom/google/android/gms/people/model/c;

    invoke-virtual {v0}, Lcom/google/android/gms/people/model/c;->d()V

    .line 461
    :cond_0
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 422
    check-cast p1, Lcom/google/android/gms/common/api/i;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/i;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/gms/people/internal/q;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/google/android/gms/people/internal/q;->a()V

    .line 444
    return-void
.end method

.method public final g_()Lcom/google/android/gms/people/model/c;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/gms/people/internal/q;->d:Lcom/google/android/gms/people/model/c;

    return-object v0
.end method
