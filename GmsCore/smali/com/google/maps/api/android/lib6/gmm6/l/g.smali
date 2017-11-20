.class public final Lcom/google/maps/api/android/lib6/gmm6/l/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public b:F

.field public c:I

.field public d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field public e:Z

.field public f:Lcom/google/maps/api/android/lib6/a/a/g;

.field public g:Z

.field public h:F

.field public i:Z

.field public j:F

.field private k:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FI)V

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->k:F

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FI)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->k:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->k:F

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FI)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v2, v3}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v2, v3}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->k:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    iget-boolean v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-static {v2, v3}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    iget-boolean v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    iget-boolean v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->k:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "@"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    const-string v1, "Accuracy"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-eqz v1, :cond_0

    const-string v1, "Accuracy point"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    :cond_0
    const-string v1, "Accuracy emphasis"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->k:F

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;F)Lcom/google/c/a/cf;

    const-string v1, "Use bearing"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "Bearing"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;F)Lcom/google/c/a/cf;

    :cond_1
    const-string v1, "Brightness"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;F)Lcom/google/c/a/cf;

    const-string v1, "Height"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->h:F

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;F)Lcom/google/c/a/cf;

    const-string v1, "Level"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->f:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    const-string v1, "Stale"

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/g;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Z)Lcom/google/c/a/cf;

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
