.class public final Lcom/google/android/gms/wearable/internal/u;
.super Lcom/google/android/gms/common/data/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/j;


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 24
    iput p3, p0, Lcom/google/android/gms/wearable/internal/u;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 34
    const-string v0, "path"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/wearable/internal/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/s;-><init>(Lcom/google/android/gms/wearable/j;)V

    return-object v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 39
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/u;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 5

    .prologue
    .line 44
    new-instance v1, Ljava/util/HashMap;

    iget v0, p0, Lcom/google/android/gms/wearable/internal/u;->c:I

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 45
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/wearable/internal/u;->c:I

    if-ge v0, v2, :cond_1

    .line 46
    new-instance v2, Lcom/google/android/gms/wearable/internal/r;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/u;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/wearable/internal/u;->b:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/wearable/internal/r;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/r;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-object v1
.end method
