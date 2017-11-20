.class abstract Lcom/google/android/location/b/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/b/au;


# instance fields
.field private final a:I

.field private final b:Lcom/google/g/a/b/b/c;

.field private final c:Lcom/google/g/a/b/b/c;

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method protected constructor <init>(ILcom/google/g/a/b/b/c;Lcom/google/g/a/b/b/c;III)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/google/android/location/b/at;->a:I

    .line 82
    iput-object p2, p0, Lcom/google/android/location/b/at;->b:Lcom/google/g/a/b/b/c;

    .line 83
    iput-object p3, p0, Lcom/google/android/location/b/at;->c:Lcom/google/g/a/b/b/c;

    .line 85
    iput v0, p0, Lcom/google/android/location/b/at;->d:I

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/location/b/at;->e:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/location/b/at;->f:I

    .line 88
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;
.end method

.method public final a(Lcom/google/android/location/b/ap;Ljava/io/InputStream;)V
    .locals 10

    .prologue
    .line 129
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 130
    iget v1, p0, Lcom/google/android/location/b/at;->a:I

    if-eq v0, v1, :cond_0

    .line 131
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Version mismatch while reading LRU cache file (expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/location/b/at;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/b/at;->b:Lcom/google/g/a/b/b/c;

    invoke-static {p2, v0}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/c;)Lcom/google/g/a/b/b/a;

    move-result-object v1

    .line 136
    iget v0, p0, Lcom/google/android/location/b/at;->d:I

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v2

    .line 137
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 138
    iget v3, p0, Lcom/google/android/location/b/at;->d:I

    invoke-virtual {v1, v3, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    .line 140
    invoke-virtual {p0, v3}, Lcom/google/android/location/b/at;->b(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;

    move-result-object v4

    .line 141
    invoke-virtual {p0, v3}, Lcom/google/android/location/b/at;->a(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;

    move-result-object v5

    .line 143
    iget v6, p0, Lcom/google/android/location/b/at;->e:I

    invoke-virtual {v3, v6}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v6

    .line 144
    iget v8, p0, Lcom/google/android/location/b/at;->f:I

    invoke-virtual {v3, v8}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v8

    .line 146
    new-instance v3, Lcom/google/android/location/f/aw;

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    .line 147
    iput-wide v8, v3, Lcom/google/android/location/f/aw;->c:J

    .line 149
    invoke-virtual {p1, v4, v3}, Lcom/google/android/location/b/ap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/location/b/ap;Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    .line 92
    new-instance v1, Lcom/google/g/a/b/b/a;

    iget-object v0, p0, Lcom/google/android/location/b/at;->b:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    invoke-virtual {p1}, Lcom/google/android/location/b/ap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/aw;

    new-instance v4, Lcom/google/g/a/b/b/a;

    iget-object v5, p0, Lcom/google/android/location/b/at;->c:Lcom/google/g/a/b/b/c;

    invoke-direct {v4, v5}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iget-object v5, v0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v4, v3, v5}, Lcom/google/android/location/b/at;->a(Lcom/google/g/a/b/b/a;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v3, p0, Lcom/google/android/location/b/at;->e:I

    iget-wide v6, v0, Lcom/google/android/location/f/aw;->b:J

    invoke-virtual {v4, v3, v6, v7}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    iget v3, p0, Lcom/google/android/location/b/at;->f:I

    iget-wide v6, v0, Lcom/google/android/location/f/aw;->c:J

    invoke-virtual {v4, v3, v6, v7}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    iget v0, p0, Lcom/google/android/location/b/at;->d:I

    invoke-virtual {v1, v0, v4}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 94
    :cond_0
    iget v0, p0, Lcom/google/android/location/b/at;->a:I

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 95
    invoke-virtual {v1, p2}, Lcom/google/g/a/b/b/a;->a(Ljava/io/OutputStream;)V

    .line 96
    return-void
.end method

.method protected abstract a(Lcom/google/g/a/b/b/a;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method protected abstract b(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;
.end method
