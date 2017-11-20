.class public final Lcom/google/i/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field final b:Ljava/util/List;

.field final c:Ljava/util/List;

.field final d:Ljava/io/File;

.field e:I

.field f:Z

.field g:Z

.field h:Lcom/google/g/a/b/b/c;

.field final i:Lcom/google/i/a/b/h;

.field final j:I

.field final k:I

.field private final l:Lcom/google/android/location/f/a;

.field private final m:Ljava/lang/String;

.field private final n:I

.field private final o:I

.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/i/a/b/h;Lcom/google/g/a/b/b/c;Ljava/lang/String;[B)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v2, p0, Lcom/google/i/a/b/a;->e:I

    .line 50
    iput-boolean v2, p0, Lcom/google/i/a/b/a;->f:Z

    .line 53
    iput-boolean v2, p0, Lcom/google/i/a/b/a;->g:Z

    .line 77
    iput-object p2, p0, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    .line 78
    iput-object p1, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    .line 79
    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v3, p0, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    invoke-interface {v0, v3}, Lcom/google/i/a/b/h;->a(Lcom/google/g/a/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/google/i/a/b/a;->j:I

    .line 80
    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v3, p0, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    invoke-interface {v0, v3}, Lcom/google/i/a/b/h;->b(Lcom/google/g/a/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/google/i/a/b/a;->k:I

    .line 81
    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v3, p0, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    invoke-interface {v0, v3}, Lcom/google/i/a/b/h;->c(Lcom/google/g/a/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/google/i/a/b/a;->n:I

    .line 82
    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v3, p0, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    invoke-interface {v0, v3}, Lcom/google/i/a/b/h;->d(Lcom/google/g/a/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/google/i/a/b/a;->o:I

    .line 83
    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v0}, Lcom/google/i/a/b/h;->a()Lcom/google/android/location/k/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/e;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/a/b/a;->p:Ljava/lang/String;

    .line 85
    iget v0, p0, Lcom/google/i/a/b/a;->j:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 86
    iget v0, p0, Lcom/google/i/a/b/a;->j:I

    const/16 v3, 0x80

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 87
    iget v0, p0, Lcom/google/i/a/b/a;->n:I

    iget v3, p0, Lcom/google/i/a/b/a;->j:I

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 88
    iget v0, p0, Lcom/google/i/a/b/a;->o:I

    iget v3, p0, Lcom/google/i/a/b/a;->j:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/c/a/ah;->a(Z)V

    .line 91
    const-string v0, "[^A-Za-z0-9]"

    const-string v3, ""

    invoke-virtual {p3, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/a/b/a;->m:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/google/i/a/b/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    invoke-static {v1}, Lcom/google/c/a/ah;->b(Z)V

    .line 95
    iget v0, p0, Lcom/google/i/a/b/a;->n:I

    invoke-direct {p0, v0}, Lcom/google/i/a/b/a;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/a/b/a;->b:Ljava/util/List;

    .line 96
    iget v0, p0, Lcom/google/i/a/b/a;->o:I

    invoke-direct {p0, v0}, Lcom/google/i/a/b/a;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/a/b/a;->c:Ljava/util/List;

    .line 99
    iget-object v0, p0, Lcom/google/i/a/b/a;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/i/a/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/i/a/b/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/i/a/b/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i/a/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/a/b/a;->d:Ljava/io/File;

    .line 103
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/a/b/a;->l:Lcom/google/android/location/f/a;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/i/a/b/a;->j:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    .line 105
    invoke-direct {p0}, Lcom/google/i/a/b/a;->d()V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 86
    goto :goto_1

    :cond_2
    move v0, v2

    .line 87
    goto :goto_2

    :cond_3
    move v0, v2

    .line 88
    goto :goto_3

    :cond_4
    move v1, v2

    .line 92
    goto :goto_4
.end method

.method private static final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 397
    :cond_0
    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .locals 5

    .prologue
    .line 306
    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/i/a/b/a;->j:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/i/a/b/a;->j:I

    if-ge v0, v2, :cond_0

    .line 308
    new-instance v2, Lcom/google/i/a/b/q;

    iget-object v3, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v4, p0, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v3, v4, p1}, Lcom/google/i/a/b/q;-><init>(Lcom/google/i/a/b/r;Lcom/google/g/a/b/b/c;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/i/a/b/a;Ljava/io/File;Lcom/google/i/a/b/q;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v0, p2, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    iget-object v5, p2, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/location/b/am;->a(Lcom/google/android/location/b/am;Ljava/io/DataOutput;)V

    iget-object v0, p0, Lcom/google/i/a/b/a;->l:Lcom/google/android/location/f/a;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v10, [Ljava/io/OutputStream;

    aput-object v1, v0, v6

    aput-object v2, v0, v7

    aput-object v3, v0, v8

    aput-object v4, v0, v9

    invoke-static {v0}, Lcom/google/i/a/b/a;->a([Ljava/io/OutputStream;)V

    return-void

    :catch_0
    move-exception v0

    new-array v5, v10, [Ljava/io/OutputStream;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    aput-object v4, v5, v9

    invoke-static {v5}, Lcom/google/i/a/b/a;->a([Ljava/io/OutputStream;)V

    throw v0
.end method

.method private static varargs a([Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 457
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 458
    if-eqz v2, :cond_0

    .line 460
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 466
    :cond_1
    return-void
.end method

.method private static varargs a([Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 469
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 470
    if-eqz v2, :cond_0

    .line 472
    :try_start_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 478
    :cond_1
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 315
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/i/a/b/a;->j:I

    if-ge v0, v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/i/a/b/a;->d:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/i/a/b/a;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget v1, p0, Lcom/google/i/a/b/a;->e:I

    iget-object v0, p0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    iget v2, p0, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v1, v0}, Lcom/google/i/a/b/a;->a(ILjava/io/File;)V

    .line 319
    return-void
.end method


# virtual methods
.method final a(Lcom/google/g/a/b/b/a;)I
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lcom/google/i/a/b/a;->j:I

    invoke-static {p1}, Lcom/google/i/a/b/o;->a(Lcom/google/g/a/b/b/a;)I

    move-result v1

    rem-int/2addr v1, v0

    add-int/2addr v1, v0

    rem-int v0, v1, v0

    return v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/i/a/b/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/i/a/b/a;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/i/a/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/a/b/a;->f:Z

    .line 165
    iget-object v0, p0, Lcom/google/i/a/b/a;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/google/i/a/b/a;->a(Ljava/io/File;)V

    goto :goto_0
.end method

.method final a(ILjava/io/File;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v0}, Lcom/google/i/a/b/h;->a()Lcom/google/android/location/k/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v0

    new-instance v1, Lcom/google/i/a/b/f;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/i/a/b/f;-><init>(Lcom/google/i/a/b/a;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/k/i;->execute(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method final a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    invoke-interface {v0}, Lcom/google/i/a/b/h;->a()Lcom/google/android/location/k/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v0

    new-instance v1, Lcom/google/i/a/b/b;

    invoke-direct {v1, p0, p1}, Lcom/google/i/a/b/b;-><init>(Lcom/google/i/a/b/a;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/k/i;->execute(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public final a(Lcom/google/i/a/b/o;)Z
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/i/a/b/a;->g:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/i/a/b/a;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/i/a/b/a;->b(Lcom/google/i/a/b/o;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/q;

    invoke-virtual {v0, p1}, Lcom/google/i/a/b/q;->b(Lcom/google/i/a/b/o;)V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/google/i/a/b/a;->g:Z

    return v0
.end method

.method final b(Lcom/google/i/a/b/o;)I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/google/i/a/b/a;->j:I

    invoke-static {p1, v0}, Lcom/google/i/a/b/q;->a(Lcom/google/i/a/b/o;I)I

    move-result v0

    return v0
.end method

.method final b(Ljava/io/File;)Lcom/google/i/a/b/q;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 425
    new-instance v1, Lcom/google/i/a/b/q;

    iget-object v0, p0, Lcom/google/i/a/b/a;->i:Lcom/google/i/a/b/h;

    iget-object v2, p0, Lcom/google/i/a/b/a;->h:Lcom/google/g/a/b/b/c;

    iget v3, p0, Lcom/google/i/a/b/a;->k:I

    invoke-direct {v1, v0, v2, v3}, Lcom/google/i/a/b/q;-><init>(Lcom/google/i/a/b/r;Lcom/google/g/a/b/b/c;I)V

    .line 429
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 432
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 433
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/google/i/a/b/a;->l:Lcom/google/android/location/f/a;

    invoke-virtual {v0, v4}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 444
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 446
    :try_start_1
    iget-object v0, v1, Lcom/google/i/a/b/q;->a:Lcom/google/android/location/b/am;

    invoke-virtual {v0, v6}, Lcom/google/android/location/b/am;->b(Ljava/io/DataInput;)Lcom/google/android/location/b/am;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/InputStream;

    aput-object v2, v0, v7

    aput-object v3, v0, v8

    aput-object v4, v0, v9

    aput-object v5, v0, v10

    aput-object v6, v0, v11

    invoke-static {v0}, Lcom/google/i/a/b/a;->a([Ljava/io/InputStream;)V

    .line 453
    return-object v1

    .line 437
    :catch_0
    move-exception v0

    .line 438
    new-array v1, v10, [Ljava/io/InputStream;

    aput-object v2, v1, v7

    aput-object v3, v1, v8

    aput-object v4, v1, v9

    invoke-static {v1}, Lcom/google/i/a/b/a;->a([Ljava/io/InputStream;)V

    .line 439
    throw v0

    .line 447
    :catch_1
    move-exception v0

    .line 448
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/io/InputStream;

    aput-object v2, v1, v7

    aput-object v3, v1, v8

    aput-object v4, v1, v9

    aput-object v5, v1, v10

    aput-object v6, v1, v11

    invoke-static {v1}, Lcom/google/i/a/b/a;->a([Ljava/io/InputStream;)V

    .line 449
    throw v0
.end method

.method final b()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 296
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/google/i/a/b/a;->j:I

    if-ge v1, v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/google/i/a/b/a;->b:Ljava/util/List;

    iget v3, p0, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/q;

    invoke-virtual {v0}, Lcom/google/i/a/b/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/i/a/b/a;->c:Ljava/util/List;

    iget v3, p0, Lcom/google/i/a/b/a;->e:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i/a/b/q;

    invoke-virtual {v0}, Lcom/google/i/a/b/q;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    :cond_0
    const/4 v2, 0x1

    .line 302
    :cond_1
    return v2

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/google/i/a/b/a;->c()V

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 489
    iget v0, p0, Lcom/google/i/a/b/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/i/a/b/a;->j:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/i/a/b/a;->e:I

    .line 490
    return-void
.end method
