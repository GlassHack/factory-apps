.class final Lcom/google/android/location/h/b;
.super Lcom/google/android/location/f/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/location/h/e;

.field final synthetic d:Lcom/google/android/location/h/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/h/a;JLcom/google/android/location/h/e;)V
    .locals 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/location/h/b;->d:Lcom/google/android/location/h/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/h/b;->a:Ljava/util/Map;

    iput-wide p2, p0, Lcom/google/android/location/h/b;->b:J

    iput-object p4, p0, Lcom/google/android/location/h/b;->c:Lcom/google/android/location/h/e;

    invoke-direct {p0}, Lcom/google/android/location/f/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/g;)V
    .locals 10

    .prologue
    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 92
    iget-object v0, p0, Lcom/google/android/location/h/b;->d:Lcom/google/android/location/h/a;

    iget-object v1, p0, Lcom/google/android/location/h/b;->a:Ljava/util/Map;

    iget-wide v2, p0, Lcom/google/android/location/h/b;->b:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/location/h/a;->a(Lcom/google/android/location/f/g;Ljava/util/Map;J)Lcom/google/android/location/b/a;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ak;

    invoke-virtual {v0}, Lcom/google/android/location/f/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v2, p0, Lcom/google/android/location/h/b;->c:Lcom/google/android/location/h/e;

    iget-object v0, v1, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ak;

    iget v1, v0, Lcom/google/android/location/f/ak;->d:I

    int-to-double v4, v1

    mul-double/2addr v4, v8

    iget v1, v0, Lcom/google/android/location/f/ak;->e:I

    int-to-double v6, v1

    mul-double/2addr v6, v8

    iget v1, v0, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v1, v1, 0x3e8

    iget v0, v0, Lcom/google/android/location/f/ak;->g:I

    iget v3, v2, Lcom/google/android/location/h/e;->c:I

    iget-object v8, v2, Lcom/google/android/location/h/e;->g:[I

    array-length v8, v8

    if-ge v3, v8, :cond_1

    const/16 v3, 0x1388

    if-gt v1, v3, :cond_1

    iget-wide v8, v2, Lcom/google/android/location/h/e;->a:D

    add-double/2addr v8, v4

    iput-wide v8, v2, Lcom/google/android/location/h/e;->a:D

    iget-wide v8, v2, Lcom/google/android/location/h/e;->b:D

    add-double/2addr v8, v6

    iput-wide v8, v2, Lcom/google/android/location/h/e;->b:D

    iget v3, v2, Lcom/google/android/location/h/e;->d:I

    if-le v0, v3, :cond_0

    iput v0, v2, Lcom/google/android/location/h/e;->d:I

    :cond_0
    iget-object v0, v2, Lcom/google/android/location/h/e;->e:[D

    iget v3, v2, Lcom/google/android/location/h/e;->c:I

    aput-wide v4, v0, v3

    iget-object v0, v2, Lcom/google/android/location/h/e;->f:[D

    iget v3, v2, Lcom/google/android/location/h/e;->c:I

    aput-wide v6, v0, v3

    iget-object v0, v2, Lcom/google/android/location/h/e;->g:[I

    iget v3, v2, Lcom/google/android/location/h/e;->c:I

    aput v1, v0, v3

    iget v0, v2, Lcom/google/android/location/h/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/android/location/h/e;->c:I

    .line 96
    :cond_1
    return-void
.end method
