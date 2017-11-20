.class public final Lcom/google/android/gms/common/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field private final a:Lcom/google/android/gms/common/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/h;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/google/android/gms/common/internal/k;->a:Lcom/google/android/gms/common/h;

    .line 329
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->a:Lcom/google/android/gms/common/h;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/h;->a(Lcom/google/android/gms/common/b;)V

    .line 334
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 338
    instance-of v0, p1, Lcom/google/android/gms/common/internal/k;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->a:Lcom/google/android/gms/common/h;

    check-cast p1, Lcom/google/android/gms/common/internal/k;

    iget-object v1, p1, Lcom/google/android/gms/common/internal/k;->a:Lcom/google/android/gms/common/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->a:Lcom/google/android/gms/common/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
