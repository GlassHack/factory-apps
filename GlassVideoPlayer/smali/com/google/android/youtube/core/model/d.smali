.class public final Lcom/google/android/youtube/core/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/youtube/core/model/d;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/google/android/youtube/core/model/d;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/google/android/youtube/core/model/d;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/google/android/youtube/core/model/d;->d:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    instance-of v0, p1, Lcom/google/android/youtube/core/model/d;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/google/android/youtube/core/model/d;

    .line 53
    if-eq p1, p0, :cond_1

    .line 54
    iget-object v2, p0, Lcom/google/android/youtube/core/model/d;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/d;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/google/android/youtube/core/model/d;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/d;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/google/android/youtube/core/model/d;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/d;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/google/android/youtube/core/model/d;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/d;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 57
    :cond_1
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    :cond_2
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/model/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, -0x275

    .line 66
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/google/android/youtube/core/model/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/core/model/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 67
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/google/android/youtube/core/model/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/core/model/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 68
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/google/android/youtube/core/model/d;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/d;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 69
    return v0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    :cond_2
    move v0, v1

    .line 66
    goto :goto_1

    :cond_3
    move v0, v1

    .line 67
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{domain:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",internalReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/core/model/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
