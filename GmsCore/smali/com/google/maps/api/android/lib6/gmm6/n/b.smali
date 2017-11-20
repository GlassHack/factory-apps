.class public abstract Lcom/google/maps/api/android/lib6/gmm6/n/b;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DA:CRASH:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract g()V
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;->g()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
