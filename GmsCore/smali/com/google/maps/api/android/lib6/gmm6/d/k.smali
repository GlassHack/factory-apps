.class public final Lcom/google/maps/api/android/lib6/gmm6/d/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public final d:Z

.field public final e:Z

.field private final f:I

.field private final g:Z

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 2

    const/16 v1, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->f:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->g:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->h:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->a:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->i:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->b:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->c:Z

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->h(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->d:Z

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->e:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "personalizedSmartMapsTileDuration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onlyRequestPsmWhenPoiInBaseTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minPsmRequestZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pertileDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pertileClientCoverage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " diskCacheServerSchemaVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offlineBorderTiles:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
