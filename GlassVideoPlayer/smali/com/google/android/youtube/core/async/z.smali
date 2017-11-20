.class public Lcom/google/android/youtube/core/async/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/youtube/core/async/g;


# instance fields
.field private volatile a:I

.field public final c:Landroid/net/Uri;

.field public final d:Lcom/google/android/youtube/core/model/UserAuth;

.field public final e:Ljava/util/Map;

.field public final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/youtube/core/async/aa;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/aa;-><init>()V

    .line 36
    sput-object v0, Lcom/google/android/youtube/core/async/z;->b:Lcom/google/android/youtube/core/async/g;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    .line 55
    iput-object p2, p0, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    .line 56
    if-nez p3, :cond_0

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 56
    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/async/z;->e:Ljava/util/Map;

    .line 58
    iput-object p4, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    .line 59
    return-void

    .line 57
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/youtube/core/async/z;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    array-length v1, v0

    .line 65
    new-array v0, v1, [B

    .line 66
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/google/android/youtube/core/async/z;)Z
    .locals 2

    .prologue
    .line 102
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    instance-of v2, p1, Lcom/google/android/youtube/core/async/z;

    if-nez v2, :cond_2

    move v0, v1

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    .line 95
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_3

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->e:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->e:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->f:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 114
    iget v0, p0, Lcom/google/android/youtube/core/async/z;->a:I

    .line 115
    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    if-nez v2, :cond_2

    :goto_1
    add-int/2addr v0, v1

    .line 121
    iput v0, p0, Lcom/google/android/youtube/core/async/z;->a:I

    .line 123
    :cond_0
    return v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/UserAuth;->hashCode()I

    move-result v0

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{uri=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string v1, "userAuth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string v1, "headers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/z;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, "content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/z;->f:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0

    .line 132
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
