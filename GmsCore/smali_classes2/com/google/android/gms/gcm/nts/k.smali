.class public final Lcom/google/android/gms/gcm/nts/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/common/a/b;

.field static final b:Lcom/google/android/gms/common/a/b;

.field static final c:Lcom/google/android/gms/common/a/b;


# instance fields
.field final d:Ljava/lang/String;

.field final e:J

.field final f:J

.field final g:Landroid/content/ComponentName;

.field final h:I

.field i:J

.field final j:J

.field k:J

.field l:I

.field final m:Z

.field volatile n:I

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "nts.default_tag_length"

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/k;->a:Lcom/google/android/gms/common/a/b;

    .line 25
    const-string v0, "nts.initial_backoff_seconds"

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/k;->b:Lcom/google/android/gms/common/a/b;

    .line 28
    const-string v0, "nts.max_backoff_seconds"

    const/16 v1, 0xe10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/nts/k;->c:Lcom/google/android/gms/common/a/b;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;JJILjava/lang/String;JJIZ)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    .line 88
    iput-wide p2, p0, Lcom/google/android/gms/gcm/nts/k;->f:J

    .line 89
    iput-wide p4, p0, Lcom/google/android/gms/gcm/nts/k;->e:J

    .line 90
    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/gcm/nts/k;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v1}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/gcm/nts/k;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v1}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v1

    invoke-virtual {p7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/k;->d:Ljava/lang/String;

    .line 91
    iput p6, p0, Lcom/google/android/gms/gcm/nts/k;->h:I

    .line 92
    iput-wide p8, p0, Lcom/google/android/gms/gcm/nts/k;->j:J

    .line 93
    iput-wide p10, p0, Lcom/google/android/gms/gcm/nts/k;->k:J

    .line 94
    invoke-static {p1, p7, p6}, Lcom/google/android/gms/gcm/nts/k;->a(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/k;->o:Ljava/lang/String;

    .line 95
    iput p12, p0, Lcom/google/android/gms/gcm/nts/k;->l:I

    .line 96
    iput-boolean p13, p0, Lcom/google/android/gms/gcm/nts/k;->m:Z

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/k;->i:J

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/gcm/nts/k;->n:I

    .line 100
    return-void

    :cond_0
    move-object v0, p7

    .line 90
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/ComponentName;JJILjava/lang/String;JZ)V
    .locals 14

    .prologue
    .line 115
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/gcm/nts/k;-><init>(Landroid/content/ComponentName;JJILjava/lang/String;JJIZ)V

    .line 117
    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;JJILjava/lang/String;Z)V
    .locals 14

    .prologue
    .line 132
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/gcm/nts/k;-><init>(Landroid/content/ComponentName;JJILjava/lang/String;JJIZ)V

    .line 134
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/gcm/nts/k;JJ)V
    .locals 14

    .prologue
    .line 145
    iget-object v1, p1, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    iget v6, p1, Lcom/google/android/gms/gcm/nts/k;->h:I

    iget-object v7, p1, Lcom/google/android/gms/gcm/nts/k;->d:Ljava/lang/String;

    iget-wide v8, p1, Lcom/google/android/gms/gcm/nts/k;->j:J

    iget-wide v10, p1, Lcom/google/android/gms/gcm/nts/k;->k:J

    iget v12, p1, Lcom/google/android/gms/gcm/nts/k;->l:I

    iget-boolean v13, p1, Lcom/google/android/gms/gcm/nts/k;->m:Z

    move-object v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/gcm/nts/k;-><init>(Landroid/content/ComponentName;JJILjava/lang/String;JJIZ)V

    .line 149
    iget-wide v0, p1, Lcom/google/android/gms/gcm/nts/k;->i:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/k;->i:J

    .line 150
    return-void
.end method

.method public static a(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/google/android/gms/gcm/nts/k;->n:I

    .line 159
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/android/gms/gcm/nts/k;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/k;->o:Ljava/lang/String;

    return-object v0
.end method

.method final b(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 195
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/gcm/nts/k;->a(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 205
    instance-of v0, p1, Lcom/google/android/gms/gcm/nts/k;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Lcom/google/android/gms/gcm/nts/k;

    iget-object v0, p1, Lcom/google/android/gms/gcm/nts/k;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/k;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3e8

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/k;->g:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 229
    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/k;->f:J

    sub-long/2addr v4, v2

    div-long/2addr v4, v8

    .line 230
    iget-wide v6, p0, Lcom/google/android/gms/gcm/nts/k;->e:J

    sub-long v2, v6, v2

    div-long/2addr v2, v8

    .line 231
    sget-object v1, Lcom/google/android/gms/gcm/nts/l;->a:[Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/gcm/nts/k;->n:I

    aget-object v1, v1, v6

    .line 233
    const-string v6, "endpoint=\'%s\'\ntag=\'%s\' : [%s].\nNext execution: [early=%ds, expires=%ds]"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v10

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/k;->d:Ljava/lang/String;

    aput-object v0, v7, v11

    aput-object v1, v7, v12

    const/4 v0, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/nts/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-wide v2, p0, Lcom/google/android/gms/gcm/nts/k;->e:J

    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/k;->f:J

    sub-long/2addr v2, v4

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", p=%ds/f=%ds."

    new-array v4, v12, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/gcm/nts/k;->j:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v11

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    return-object v0
.end method
