.class public final Lcom/google/android/gms/wearable/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/wearable/m;

.field private final b:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/j;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/wearable/j;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/n;->b:Landroid/net/Uri;

    .line 38
    invoke-interface {p1}, Lcom/google/android/gms/wearable/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/j;

    invoke-static {v0}, Lcom/google/android/gms/wearable/n;->b(Lcom/google/android/gms/wearable/j;)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/n;->a:Lcom/google/android/gms/wearable/m;

    .line 39
    return-void
.end method

.method public static a(Lcom/google/android/gms/wearable/j;)Lcom/google/android/gms/wearable/n;
    .locals 2

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provided dataItem is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/n;-><init>(Lcom/google/android/gms/wearable/j;)V

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/wearable/j;)Lcom/google/android/gms/wearable/m;
    .locals 5

    .prologue
    .line 50
    invoke-interface {p0}, Lcom/google/android/gms/wearable/j;->c()[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/wearable/j;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create DataMapItem from a DataItem  that wasn\'t made with DataMapItem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/wearable/j;->c()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/google/android/gms/wearable/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 75
    :goto_0
    return-object v0

    .line 61
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p0}, Lcom/google/android/gms/wearable/j;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    .line 63
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 64
    invoke-interface {p0}, Lcom/google/android/gms/wearable/j;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/k;

    .line 65
    if-nez v0, :cond_2

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find DataItemAsset referenced in data at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/protobuf/nano/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to parse. Not a DataItem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/Asset;->a(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    .line 71
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 73
    :cond_3
    new-instance v0, Lcom/google/android/gms/wearable/d/b;

    invoke-interface {p0}, Lcom/google/android/gms/wearable/j;->c()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/wearable/d/a/a;->a([B)Lcom/google/android/gms/wearable/d/a/a;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/d/b;-><init>(Lcom/google/android/gms/wearable/d/a/a;Ljava/util/List;)V

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/wearable/d/a;->a(Lcom/google/android/gms/wearable/d/b;)Lcom/google/android/gms/wearable/m;
    :try_end_1
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method
