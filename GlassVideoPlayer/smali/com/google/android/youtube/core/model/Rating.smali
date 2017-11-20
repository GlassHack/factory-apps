.class public Lcom/google/android/youtube/core/model/Rating;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final classification:Ljava/lang/String;

.field private volatile hashCode:I

.field public final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "scheme may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    .line 32
    const-string v0, "classification may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/android/youtube/core/model/Rating;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 41
    goto :goto_0

    .line 44
    :cond_3
    check-cast p1, Lcom/google/android/youtube/core/model/Rating;

    .line 45
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/youtube/core/model/Rating;->hashCode:I

    .line 51
    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Rating;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Rating;->classification:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/google/android/youtube/core/model/Rating;->hashCode:I

    .line 57
    :cond_0
    return v0
.end method
