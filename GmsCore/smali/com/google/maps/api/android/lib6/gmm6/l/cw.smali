.class public final Lcom/google/maps/api/android/lib6/gmm6/l/cw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ek;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:Lcom/google/maps/api/android/lib6/a/a/g;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/a/a/d;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->e:Ljava/lang/String;

    iput p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->b:I

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-direct {v0, p1, p6}, Lcom/google/maps/api/android/lib6/a/a/g;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    return-object v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
