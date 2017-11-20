.class public final Lcom/google/android/gms/wearable/i;
.super Lcom/google/android/gms/common/data/i;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# instance fields
.field private final b:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/i;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/i;->b:Lcom/google/android/gms/common/api/Status;

    .line 22
    return-void
.end method


# virtual methods
.method protected final synthetic a(II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/wearable/internal/o;

    iget-object v1, p0, Lcom/google/android/gms/wearable/i;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/wearable/internal/o;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wearable/i;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "path"

    return-object v0
.end method
