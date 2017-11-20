.class public final Lcom/google/android/gms/common/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/32 v4, 0x11892

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v2, "The minVersion must be less than or equal to the maxVersion"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 85
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    :goto_0
    const-string v2, "sizeBytes must be greater than zero"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    .line 87
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    .line 88
    iput-wide v4, p0, Lcom/google/android/gms/common/download/a;->c:J

    .line 89
    invoke-static {p5}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/google/android/gms/common/download/a;->f:I

    .line 92
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/common/download/a;->g:I

    .line 93
    return-void

    :cond_0
    move v0, v1

    .line 85
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 76
    const-wide/32 v4, 0x11892

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/common/download/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, "filename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    .line 97
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    .line 98
    const-string v0, "sizeBytes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/download/a;->c:J

    .line 99
    const-string v0, "sha1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    .line 102
    const-string v0, "destination"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "destination"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    .line 107
    :goto_0
    const-string v0, "minVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "minVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/download/a;->f:I

    .line 112
    :goto_1
    const-string v0, "maxVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "maxVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/download/a;->g:I

    .line 117
    :goto_2
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/download/a;->f:I

    goto :goto_1

    .line 115
    :cond_2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/common/download/a;->g:I

    goto :goto_2
.end method


# virtual methods
.method protected final a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    :try_start_0
    const-string v1, "filename"

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "url"

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v1, "sizeBytes"

    iget-wide v2, p0, Lcom/google/android/gms/common/download/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 125
    const-string v1, "sha1"

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object v1, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "destination"

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/download/a;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 130
    const-string v1, "minVersion"

    iget v2, p0, Lcom/google/android/gms/common/download/a;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    :cond_1
    iget v1, p0, Lcom/google/android/gms/common/download/a;->g:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 133
    const-string v1, "maxVersion"

    iget v2, p0, Lcom/google/android/gms/common/download/a;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 151
    instance-of v0, p1, Lcom/google/android/gms/common/download/a;

    if-eqz v0, :cond_2

    .line 152
    check-cast p1, Lcom/google/android/gms/common/download/a;

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/common/download/a;->c:J

    iget-wide v2, p1, Lcom/google/android/gms/common/download/a;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/download/a;->f:I

    iget v1, p1, Lcom/google/android/gms/common/download/a;->f:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/common/download/a;->g:I

    iget v1, p1, Lcom/google/android/gms/common/download/a;->g:I

    if-ne v0, v1, :cond_2

    .line 161
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 169
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/common/download/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/common/download/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/common/download/a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
