.class public final Lcom/google/android/location/f/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/android/location/f/w;->values()[Lcom/google/android/location/f/w;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/location/f/v;->a:[I

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-static {}, Lcom/google/android/location/f/w;->values()[Lcom/google/android/location/f/w;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 82
    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "LocatorCounters"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/location/f/v;->a:[I

    invoke-virtual {v4}, Lcom/google/android/location/f/w;->ordinal()I

    move-result v4

    aget v4, v7, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/f/v;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 86
    return-void
.end method

.method public final a(Lcom/google/android/location/f/w;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/location/f/v;->a:[I

    invoke-virtual {p1}, Lcom/google/android/location/f/w;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 40
    return-void
.end method
