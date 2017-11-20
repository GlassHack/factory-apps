.class public Lcom/google/maps/api/android/lib6/gmm6/o/f/m;
.super Lcom/google/maps/api/android/lib6/gmm6/o/f/f;


# instance fields
.field private d:Lcom/google/maps/api/android/lib6/gmm6/o/f/i;

.field private e:[I

.field private volatile f:I

.field private volatile g:I

.field private volatile h:Z

.field private volatile i:I

.field private volatile j:I

.field private volatile k:Z

.field private final l:I

.field private m:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;-><init>(C)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;-><init>()V

    return-void
.end method

.method private constructor <init>(C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/f/i;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/f/i;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x2901

    const/4 v1, 0x0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/f/g;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/f/g;)V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->d:Lcom/google/maps/api/android/lib6/gmm6/o/f/i;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->e:[I

    const/16 v0, 0x2600

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->f:I

    const/16 v0, 0x2601

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->g:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->h:Z

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->i:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->j:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->k:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->m:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/f/j;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/f/j;-><init>()V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->d:Lcom/google/maps/api/android/lib6/gmm6/o/f/i;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->m:Z

    const v0, 0x84c0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->l:I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/o/f/i;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be called BEFORE set live"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->m:Z

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->d:Lcom/google/maps/api/android/lib6/gmm6/o/f/i;

    return-void
.end method

.method public final b(II)V
    .locals 4

    const v3, 0x8370

    const v2, 0x812f

    const/16 v1, 0x2901

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/b;->a()V

    :cond_0
    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    if-eq p2, v1, :cond_3

    if-eq p2, v2, :cond_3

    if-eq p2, v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal Wrap Mode: wrapS = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrapT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->i:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->k:Z

    return-void
.end method

.method public final c(II)V
    .locals 3

    const/16 v2, 0x2601

    const/16 v1, 0x2600

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/f/b;->a()V

    :cond_0
    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v0, 0x2703

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2701

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2702

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2700

    if-ne p1, v0, :cond_2

    :cond_1
    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal Filter Mode: min = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->f:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/f/m;->h:Z

    return-void
.end method
