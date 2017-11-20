.class public final Lcom/google/maps/api/android/lib6/gmm6/o/aq;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field b:I

.field final c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public d:Lcom/google/maps/api/android/lib6/gmm6/o/ar;

.field public e:Lcom/google/maps/api/android/lib6/gmm6/o/as;

.field private final f:Lcom/google/maps/api/android/lib6/b/o;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/b/o;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->b:I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->d:Lcom/google/maps/api/android/lib6/gmm6/o/ar;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->e:Lcom/google/maps/api/android/lib6/gmm6/o/as;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->f:Lcom/google/maps/api/android/lib6/b/o;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;ILcom/google/maps/api/android/lib6/gmm6/l/cd;)V
    .locals 10

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->b:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d()I

    move-result v0

    int-to-double v4, v0

    int-to-double v6, v1

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v6, v8

    const-wide v8, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3fd5752a00000000L    # 0.33527612686157227

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iget-object v0, p4, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3fd5752a00000000L    # 0.33527612686157227

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->e:Lcom/google/maps/api/android/lib6/gmm6/o/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->e:Lcom/google/maps/api/android/lib6/gmm6/o/as;

    const/4 v0, 0x0

    :goto_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->f:Lcom/google/maps/api/android/lib6/b/o;

    const/4 v1, 0x7

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/b/o;->a(I[BZZZ)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->d:Lcom/google/maps/api/android/lib6/gmm6/o/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/aq;->d:Lcom/google/maps/api/android/lib6/gmm6/o/ar;

    invoke-interface {v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/ar;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "view point"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
