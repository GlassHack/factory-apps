.class public final Lcom/google/android/gms/common/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l;


# instance fields
.field private final a:Lcom/google/android/gms/common/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/g;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/g;

    .line 294
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/g;->c()V

    .line 304
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/g;->a()V

    .line 299
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 308
    instance-of v0, p1, Lcom/google/android/gms/common/internal/h;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/g;

    check-cast p1, Lcom/google/android/gms/common/internal/h;

    iget-object v1, p1, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/h;->a:Lcom/google/android/gms/common/g;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
