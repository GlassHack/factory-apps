.class public Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
.super Ljava/lang/Object;


# static fields
.field private static synthetic C:Z

.field private static final a:[B

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private A:Ljava/util/Set;

.field private B:I

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

.field private h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

.field private final k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private final m:Ljava/util/Set;

.field private final n:Ljava/util/concurrent/locks/ReentrantLock;

.field private final o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Lcom/google/maps/api/android/lib6/gmm6/m/b/v;

.field private z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x0

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->C:Z

    new-array v0, v1, [B

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a:[B

    sput v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b:I

    const v0, 0x13f88

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c:I

    sput v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/j;Lcom/google/maps/api/android/lib6/gmm6/m/b/q;Lcom/google/maps/api/android/lib6/gmm6/m/b/i;Lcom/google/maps/api/android/lib6/gmm6/e/b/a;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->w:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->y:Lcom/google/maps/api/android/lib6/gmm6/m/b/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->B:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f:Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    iget v0, p2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x800

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    aget v1, v1, v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    mul-int/lit16 v3, v2, 0x400

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    const/16 v5, 0x3fc

    invoke-static {v4, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v4

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    add-int/lit16 v3, v3, 0x3fc

    invoke-static {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v1

    if-ne v4, v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    move-result-object v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rebuilding shard: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    if-eqz v0, :cond_5

    :try_start_3
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private a(Z)I
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(Ljava/util/Set;)I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v2, v2, v0

    if-lez v2, :cond_4

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    :cond_4
    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(Ljava/util/Set;)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V

    goto/16 :goto_1
.end method

.method public static a([BI)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    .locals 11

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    const v0, 0x13f88

    const/4 v6, 0x1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    if-nez v6, :cond_1

    const v1, 0x13f88

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of records must be between 4 and 81800"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x4

    add-int/lit8 v2, v0, -0x1

    div-int/lit16 v2, v2, 0x199

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v4

    add-int/lit8 v5, v0, 0x1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->C:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-lt v4, v0, :cond_2

    const/16 v0, 0x199

    if-le v4, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->C:Z

    if-nez v0, :cond_4

    if-nez v6, :cond_4

    const/16 v0, 0x23

    if-le v4, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->C:Z

    if-nez v0, :cond_6

    if-lez v5, :cond_5

    const/16 v0, 0x199

    if-le v5, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x14

    const/16 v3, 0x2000

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v7, p2

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;-><init>(IIIIZIJLjava/util/Locale;)V

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-direct {v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;-><init>(I)V

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    const/4 v2, 0x0

    invoke-direct {v6, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;-><init>(II)V

    invoke-static {v1, v5, v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/j;Lcom/google/maps/api/android/lib6/gmm6/m/b/q;Lcom/google/maps/api/android/lib6/gmm6/m/b/i;Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a()V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    move-object v3, p0

    move-object v4, v1

    move-object v7, v0

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/j;Lcom/google/maps/api/android/lib6/gmm6/m/b/q;Lcom/google/maps/api/android/lib6/gmm6/m/b/i;Lcom/google/maps/api/android/lib6/gmm6/e/b/a;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)V

    return-object v2

    :cond_7
    move v0, p1

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    .locals 11

    const v4, 0xffff

    const/16 v3, 0x2000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v5

    new-array v0, v3, [B

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->b([B)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;-><init>([B)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f()I

    move-result v8

    shl-int/lit8 v0, v8, 0x10

    add-int/lit8 v9, v0, 0x14

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    shr-int/lit8 v0, v0, 0x10

    and-int v10, v0, v4

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    and-int/2addr v0, v4

    if-nez v10, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Cache Header(1): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; cached sever schema is zero but client schema part doesn\'t match: cachedClientSchema = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expectedClientSchema = 20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v10, :cond_1

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    if-ne v0, v9, :cond_2

    :cond_1
    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->b:I

    if-eq v0, v3, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Cache Header(2): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expect expectedSchema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBlockSize=8192"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    invoke-direct {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;-><init>(I)V

    invoke-virtual {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    iget v1, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    invoke-direct {v4, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;-><init>(II)V

    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    array-length v1, v1

    iget-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/m/b/j;Lcom/google/maps/api/android/lib6/gmm6/m/b/q;Lcom/google/maps/api/android/lib6/gmm6/m/b/i;Lcom/google/maps/api/android/lib6/gmm6/e/b/a;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)V

    if-nez v10, :cond_4

    if-eqz v8, :cond_4

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    invoke-direct {v0, v1, v9}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(II)V

    :cond_4
    return-object v0
.end method

.method public static a(JLjava/lang/String;I[B)Lcom/google/maps/api/android/lib6/gmm6/m/b/k;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    invoke-static {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(JLjava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, p4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I[BB)V

    return-object v0
.end method

.method public static a(JLjava/lang/String;[B)Lcom/google/maps/api/android/lib6/gmm6/m/b/k;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    invoke-static {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(JLjava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;[BB)V

    return-object v0
.end method

.method public static a(J[B)Lcom/google/maps/api/android/lib6/gmm6/m/b/k;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;[B)Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->g:I

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Lcom/google/maps/api/android/lib6/gmm6/m/b/p;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private a(III)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    mul-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const v0, 0x7ffffff

    sub-int v2, v0, p3

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v0, v0, p1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b()I

    move-result v3

    if-gt v3, v2, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I)Lcom/google/maps/api/android/lib6/gmm6/m/b/p;
    .locals 12

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->t:I

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget v4, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    move-result-object v6

    iget-wide v8, v6, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v8, v6, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    iget-wide v10, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_4

    invoke-direct {p0, v6, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;

    invoke-direct {v0, v3, v6, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Lcom/google/maps/api/android/lib6/gmm6/m/b/n;I)V

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lookupShardRecordIndexFromShard: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :goto_2
    return-object v1

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    throw v0

    :cond_1
    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v3

    :try_start_5
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    invoke-virtual {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->s:I

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(II)V
    .locals 11

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-boolean v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-wide v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->g:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    move v2, p2

    move v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;-><init>(IIIIZIJLjava/util/Locale;)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a([B)I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a(J)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a([B)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static a(ILcom/google/maps/api/android/lib6/gmm6/m/b/l;Ljava/util/Map;)V
    .locals 1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;I[B)V
    .locals 2

    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a(J)V

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->b([B)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/m/b/j;Lcom/google/maps/api/android/lib6/gmm6/m/b/q;Lcom/google/maps/api/android/lib6/gmm6/m/b/i;Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V
    .locals 2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a([B)I

    invoke-virtual {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a([B)V

    invoke-virtual {p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->b:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    invoke-virtual {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a([B)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/m;Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;->a()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Z)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;Ljava/io/IOException;)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->r:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Lcom/google/maps/api/android/lib6/gmm6/m/b/m;)V
    .locals 12

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e(I)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v11

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d(I)I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p2, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v1

    const v2, 0x7ffffff

    if-lt v1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t fit refcounted records into collecting shard"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    move-result-object v8

    iget v1, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    iget v2, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->e:I

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iget v2, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    invoke-static {v11, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;I[B)V

    invoke-virtual {p3, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;->a([B)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    iget-wide v2, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v4

    iget v5, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    iget v6, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->e:I

    iget v7, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->c:I

    iget v8, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->f:I

    iget v9, p2, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    iget v10, p2, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;-><init>(JIIIIIII)V

    invoke-virtual {p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    iget-wide v4, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->g:I

    invoke-interface {v2, v4, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/r;->b(JI)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(I)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    mul-int/lit16 v3, v3, 0x2000

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->i:I

    add-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a(J)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-static {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    const/4 v4, 0x4

    iget v5, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    invoke-static {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    const/4 v4, 0x0

    const/16 v5, 0x1ffc

    invoke-static {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v3

    iget-object v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    const/16 v5, 0x1ffc

    invoke-static {v4, v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a:[B

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a([B)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m()I

    move-result v2

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aput v2, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(I)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_0
    :try_start_4
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aput v0, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public static a([BII)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method public static a([BIJ)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    add-int/lit8 v0, p1, 0x4

    long-to-int v1, p2

    invoke-static {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BII)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->b:[B

    array-length v2, v1

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    array-length v2, v1

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;)[B
    .locals 3

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a:[B

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->g:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e(I)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v1

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    new-array v0, v0, [B

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;Ljava/io/IOException;)V

    throw v0
.end method

.method public static b([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    .locals 6

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    mul-int/lit16 v2, p1, 0x2000

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->i:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    const/16 v2, 0x2000

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->b([B)V

    const/4 v0, 0x0

    const/16 v3, 0x1ffc

    invoke-static {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v0

    const/16 v3, 0x1ffc

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v3

    if-eq v0, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected checksum: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", expected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;-><init>([B)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Lcom/google/maps/api/android/lib6/gmm6/m/b/p;
    .locals 4

    iget-wide v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a(J)[I

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    invoke-virtual {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I)Lcom/google/maps/api/android/lib6/gmm6/m/b/p;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 12

    new-instance v5, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    iget-wide v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    const-wide/16 v10, -0x1

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->b:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->c:I

    if-lez v2, :cond_0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->c:I

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    invoke-static {v2, v0, v7}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(ILcom/google/maps/api/android/lib6/gmm6/m/b/l;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    iget-wide v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge v1, v0, :cond_d

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a(J)[I

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a([II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    iget v3, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    if-ge v2, v3, :cond_a

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a:[B

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c(I)I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    move-result-object v3

    :try_start_1
    invoke-direct {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :cond_6
    new-instance v9, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    invoke-direct {v9, v10, v11, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;-><init>(J[B)V

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->v:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    invoke-interface {v0, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/m/b/r;->a(J)V

    :cond_7
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d(I)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {v0, v9, v7}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(ILcom/google/maps/api/android/lib6/gmm6/m/b/l;Ljava/util/Map;)V

    :cond_8
    invoke-virtual {v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a(I)V

    const/4 v0, 0x1

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeOldRecordsAndFilterInsertions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V

    move-object v4, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_a
    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Z)V

    :cond_b
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->u:I

    goto :goto_6

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_7
    if-ltz v2, :cond_f

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->c:I

    invoke-static {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->d:[B

    const/4 v6, 0x0

    invoke-direct {v1, v5, v4, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;I[BB)V

    move-object v0, v1

    :cond_e
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_7

    :catch_1
    move-exception v3

    goto :goto_5

    :cond_f
    return-object v3

    :cond_10
    move v0, v2

    goto/16 :goto_2
.end method

.method private b(Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->B:I

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    :goto_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->B:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(III)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v0, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v5, v5, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    aget v0, v5, v0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b()I

    move-result v5

    invoke-direct {p0, v1, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(III)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Z)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    invoke-direct {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/high16 v6, 0x20000

    :try_start_1
    new-array v6, v6, [B

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e(I)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;-><init>(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;I[B)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :goto_2
    if-eqz v4, :cond_5

    invoke-direct {p0, v4, v1, v7}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Lcom/google/maps/api/android/lib6/gmm6/m/b/m;)V

    iget v6, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/Set;->size()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    const/4 v8, 0x4

    if-ge v6, v8, :cond_5

    if-eqz v0, :cond_4

    move-object v4, v0

    move-object v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    goto :goto_1

    :cond_4
    :try_start_2
    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    add-int/lit8 v4, v4, 0x1

    iget v6, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(III)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-direct {p0, v7, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/m;Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    :try_start_3
    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    move-result-object v5

    move v0, v3

    :goto_4
    iget v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    if-ge v0, v6, :cond_7

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->d(I)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a(I)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_5
    if-eqz v1, :cond_8

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V

    :cond_8
    const-string v1, "Failed to combine refCounted records"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method

.method public static b([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method static c([BII)I
    .locals 2

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static c([BI)J
    .locals 6

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(JLjava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/l;
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a:[B

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/g/a/b/aa;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;-><init>(J[B)V

    return-object v1
.end method

.method private c(I)V
    .locals 5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    mul-int/lit16 v2, p1, 0x400

    add-int/lit16 v2, v2, 0x4000

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->b(I)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    mul-int/lit16 v3, p1, 0x400

    const/16 v4, 0x400

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a([BII)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)[B
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->g:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e(I)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v2

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->e:I

    new-array v0, v0, [B

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    iget v4, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    add-int/2addr v3, v4

    invoke-static {v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;I[B)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v2

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->f:I

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checksum mismatch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " record ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;Ljava/io/IOException;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->g:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m()I

    move-result v4

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    aput v4, v2, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private d(I)V
    .locals 3

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Z)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/r;->a(I)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cache:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(I)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f:Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v2

    aput-object v2, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v0, v0, p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()[B
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a:[B

    return-object v0
.end method

.method private static f()I
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->c()Lcom/google/maps/api/android/lib6/gmm6/d/k;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VectorMapsParameters is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->b:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    move v1, v0

    :goto_0
    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    aget v3, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private h()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private i()V
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    :try_start_1
    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->g:I

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    move-result-object v2

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->h:I

    if-le v3, v4, :cond_2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->h:I

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->e(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->h:I

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a(I)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Z)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    invoke-interface {v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/r;->a(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private k()V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    const-wide/16 v2, 0x2000

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private l()Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    .locals 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    aget v2, v2, v0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    if-ge v2, v5, :cond_3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    aget v2, v2, v0

    const v5, 0x7ffffff

    if-gt v2, v5, :cond_3

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(I)Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b()I

    move-result v0

    const/16 v5, 0x14

    if-lt v0, v5, :cond_4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h;->c()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-double v6, v6

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v10

    double-to-long v6, v6

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(Z)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-boolean v5, v5, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    :goto_3
    const/4 v5, 0x2

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    invoke-virtual {v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a(Ljava/util/Set;)I

    move-result v5

    if-eq v5, v4, :cond_2

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d(I)V

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v6, v6, v5

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aput-object v3, v6, v5

    :cond_1
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f:Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->b(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "allocateShardToUse: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Z)I

    move-result v0

    if-ne v0, v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tile store full, unable to allocate shard"

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_4
    return-object v0

    :cond_6
    move v1, v0

    if-eqz v2, :cond_7

    iget v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    aget v3, v3, v1

    if-eq v0, v3, :cond_8

    :cond_7
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;-><init>(I)V

    :goto_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object v0, v2

    goto :goto_5

    :cond_9
    move-object v2, v3

    move v0, v4

    goto/16 :goto_1
.end method

.method private m()I
    .locals 4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->w:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->w:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    return v0
.end method

.method public final a(JLjava/lang/String;I)I
    .locals 15

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static/range {p1 .. p3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(JLjava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Lcom/google/maps/api/android/lib6/gmm6/m/b/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v9, -0x1

    :goto_0
    return v9

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    aget v13, v3, v4

    iget-object v12, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    iget v3, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->c:I

    move/from16 v0, p4

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(II)I

    move-result v3

    and-int/lit8 v9, v3, 0x1f

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    iget-wide v4, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    iget v6, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->b:I

    iget v7, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->d:I

    iget v8, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->e:I

    iget v10, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->f:I

    iget v11, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->g:I

    iget v12, v12, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->h:I

    invoke-direct/range {v3 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;-><init>(JIIIIIII)V

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    iget v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->c:I

    invoke-virtual {v4, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;I)V

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/o;Z)V

    if-nez v13, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/p;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/o;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public final a(Ljava/util/Collection;)I
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i()V

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->d:[B

    array-length v6, v6

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->b:[B

    array-length v2, v2

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    move v3, v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x20000

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v15, v2, [B

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l()Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;

    iget v2, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e(I)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v6

    invoke-direct {v3, v2, v6, v15}, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;-><init>(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;I[B)V

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    iget v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->c:I

    and-int/lit8 v9, v5, 0x1f

    iget v5, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v6, v6, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    if-ge v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v5

    const v6, 0x7ffffff

    if-le v5, v6, :cond_8

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/m;Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    iget v8, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-interface {v3, v6, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/m/b/r;->a(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_4
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l()Lcom/google/maps/api/android/lib6/gmm6/m/b/o;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_5
    :try_start_4
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;

    iget v5, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e(I)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v6

    invoke-direct {v3, v5, v6, v15}, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;-><init>(Lcom/google/maps/api/android/lib6/gmm6/e/b/a;I[B)V

    move-object v13, v3

    move-object v14, v4

    :goto_4
    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->b:[B

    invoke-virtual {v13, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;->a([B)V

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->d:[B

    invoke-virtual {v13, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/m;->a([B)V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->a:Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    iget-wide v4, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/l;->a:J

    invoke-virtual {v14}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a()I

    move-result v6

    iget-object v7, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->b:[B

    array-length v7, v7

    iget-object v8, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->d:[B

    array-length v8, v8

    iget-object v10, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->d:[B

    const/4 v11, 0x0

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/k;->d:[B

    array-length v2, v2

    invoke-static {v10, v11, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BII)I

    move-result v10

    iget v11, v14, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    iget v12, v14, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->c:I

    invoke-direct/range {v3 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;-><init>(JIIIIIII)V

    invoke-virtual {v14, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/n;)V

    iget-wide v2, v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/n;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v13

    move-object v4, v14

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/m;Lcom/google/maps/api/android/lib6/gmm6/m/b/o;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    iget v5, v4, Lcom/google/maps/api/android/lib6/gmm6/m/b/o;->b:I

    invoke-interface {v2, v6, v7, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/r;->a(JI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->A:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    move-object v13, v3

    move-object v14, v4

    goto :goto_4
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->a:I

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(II)V

    return-void
.end method

.method public final a(ILjava/util/Locale;)V
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->p:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->z:Lcom/google/maps/api/android/lib6/gmm6/m/b/r;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/r;->a()V

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->l:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->m:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f:Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f:Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f:Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->f()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v0, 0x14

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->b:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-boolean v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v7, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;-><init>(IIIIZIJLjava/util/Locale;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->b:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->c:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->d:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->e:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->f:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/q;->g:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/i;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/q;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j:Lcom/google/maps/api/android/lib6/gmm6/m/b/i;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/j;Lcom/google/maps/api/android/lib6/gmm6/m/b/q;Lcom/google/maps/api/android/lib6/gmm6/m/b/i;Lcom/google/maps/api/android/lib6/gmm6/e/b/a;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->p:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final a(J)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(JLjava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j()V

    throw v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-wide v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->g:J

    return-wide v0
.end method

.method public final b(JLjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c(JLjava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Lcom/google/maps/api/android/lib6/gmm6/m/b/l;)Lcom/google/maps/api/android/lib6/gmm6/m/b/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->j()V

    throw v0
.end method

.method public final c()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    return-object v0
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->p:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g:Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v1, 0x0

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v2, v2, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->k:[Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->o:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->n:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->h:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max_shards:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->h:Lcom/google/maps/api/android/lib6/gmm6/m/b/j;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
