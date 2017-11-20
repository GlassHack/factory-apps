.class public final Lcom/google/android/youtube/core/model/BatchEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/google/android/youtube/core/model/BatchEntry;->b:I

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/android/youtube/core/model/BatchEntry;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/BatchEntry;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :cond_3
    check-cast p1, Lcom/google/android/youtube/core/model/BatchEntry;

    .line 47
    iget v2, p0, Lcom/google/android/youtube/core/model/BatchEntry;->b:I

    iget v3, p1, Lcom/google/android/youtube/core/model/BatchEntry;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    iget-object v2, p0, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    if-nez v2, :cond_5

    .line 51
    iget-object v2, p1, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 28
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/BatchEntry;->b:I

    add-int/2addr v0, v1

    .line 32
    return v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
