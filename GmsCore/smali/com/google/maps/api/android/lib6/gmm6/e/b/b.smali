.class public final Lcom/google/maps/api/android/lib6/gmm6/e/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/e/b/a;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/b/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
