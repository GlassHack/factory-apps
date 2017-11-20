.class public final Lcom/google/maps/api/android/lib6/gmm6/m/d/d;
.super Lcom/google/g/a/d/f;


# instance fields
.field private synthetic b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/google/g/a/d/g;Ljava/io/File;)V
    .locals 0

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/d;->b:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/g/a/d/f;-><init>(Lcom/google/g/a/d/g;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->a:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/d;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->a(Ljava/io/File;)Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
