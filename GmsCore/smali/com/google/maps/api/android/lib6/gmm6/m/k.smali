.class public final Lcom/google/maps/api/android/lib6/gmm6/m/k;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

.field final c:Z

.field final d:Lcom/google/maps/api/android/lib6/gmm6/m/c;

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field i:I

.field j:Lcom/google/maps/api/android/lib6/gmm6/m/k;

.field private volatile k:Z


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 9

    const/4 v5, 0x0

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/m/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/c;ZZIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;B)V
    .locals 9

    const/4 v5, 0x0

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/m/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/k;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/c;ZZIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/c;ZZIZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->j:Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->d:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/c;->e:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    invoke-virtual {p4, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/c;->d:Lcom/google/maps/api/android/lib6/gmm6/m/c;

    invoke-virtual {p4, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->c:Z

    iput-boolean p5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->e:Z

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->i:I

    iput-boolean p6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->f:Z

    iput-boolean p8, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/k;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->b:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->j:Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iput-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->j:Lcom/google/maps/api/android/lib6/gmm6/m/k;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->j:Lcom/google/maps/api/android/lib6/gmm6/m/k;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
