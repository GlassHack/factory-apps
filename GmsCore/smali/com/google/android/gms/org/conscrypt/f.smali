.class final Lcom/google/android/gms/org/conscrypt/f;
.super Ljava/io/File;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/f;->b:J

    .line 350
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/f;->a:Ljava/lang/String;

    .line 351
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/io/File;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/f;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 368
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 369
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 344
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/org/conscrypt/f;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public final lastModified()J
    .locals 4

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/f;->b:J

    .line 358
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 359
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/f;->b:J

    .line 361
    :cond_0
    return-wide v0
.end method
