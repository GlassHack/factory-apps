.class public final Lcom/google/android/gms/wearable/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/wearable/m;

.field private final b:Lcom/google/android/gms/wearable/PutDataRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/wearable/w;->b:Lcom/google/android/gms/wearable/PutDataRequest;

    .line 22
    new-instance v0, Lcom/google/android/gms/wearable/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/w;->a:Lcom/google/android/gms/wearable/m;

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/wearable/w;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/wearable/w;

    invoke-static {p0}, Lcom/google/android/gms/wearable/PutDataRequest;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/w;-><init>(Lcom/google/android/gms/wearable/PutDataRequest;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/PutDataRequest;
    .locals 8

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/wearable/w;->a:Lcom/google/android/gms/wearable/m;

    invoke-static {v0}, Lcom/google/android/gms/wearable/d/a;->a(Lcom/google/android/gms/wearable/m;)Lcom/google/android/gms/wearable/d/b;

    move-result-object v2

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/wearable/w;->b:Lcom/google/android/gms/wearable/PutDataRequest;

    iget-object v1, v2, Lcom/google/android/gms/wearable/d/b;->a:Lcom/google/android/gms/wearable/d/a/a;

    invoke-static {v1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/PutDataRequest;->a([B)Lcom/google/android/gms/wearable/PutDataRequest;

    .line 70
    iget-object v0, v2, Lcom/google/android/gms/wearable/d/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    iget-object v0, v2, Lcom/google/android/gms/wearable/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    .line 74
    if-nez v4, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset key cannot be null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "asset cannot be null: key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    const-string v5, "DataMap"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    const-string v5, "DataMap"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "asPutDataRequest: adding asset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/wearable/w;->b:Lcom/google/android/gms/wearable/PutDataRequest;

    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/w;->b:Lcom/google/android/gms/wearable/PutDataRequest;

    return-object v0
.end method
