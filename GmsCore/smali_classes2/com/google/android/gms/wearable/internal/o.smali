.class public final Lcom/google/android/gms/wearable/internal/o;
.super Lcom/google/android/gms/common/data/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/h;


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/wearable/internal/o;->c:I

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/j;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/wearable/internal/u;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/o;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/wearable/internal/o;->b:I

    iget v3, p0, Lcom/google/android/gms/wearable/internal/o;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/u;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/gms/wearable/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/n;-><init>(Lcom/google/android/gms/wearable/h;)V

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 34
    const-string v0, "event_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/o;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
