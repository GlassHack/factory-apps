.class public final Lcom/google/android/gms/wearable/internal/r;
.super Lcom/google/android/gms/common/data/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "asset_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/wearable/internal/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/p;-><init>(Lcom/google/android/gms/wearable/k;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "asset_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
