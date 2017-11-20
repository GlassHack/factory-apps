.class public final Lcom/google/android/location/h/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/location/h/p;->a:Ljava/util/List;

    .line 38
    return-void
.end method

.method private static a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/h/p;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, v4, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/location/h/c;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/h/c;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/google/android/location/h/p;

    invoke-direct {v0, v2}, Lcom/google/android/location/h/p;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a(Ljava/io/InputStream;)Lcom/google/android/location/h/p;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/google/g/a/b/b/c;

    invoke-direct {v0}, Lcom/google/g/a/b/b/c;-><init>()V

    .line 50
    new-instance v1, Lcom/google/g/a/b/b/a;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 52
    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/google/android/location/h/p;->a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/h/p;

    move-result-object v0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "MetricModel"

    const-string v3, "Unable to close metric model stream"

    invoke-static {v2, v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse stream to load metric model. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 61
    :cond_1
    :goto_1
    throw v0

    .line 59
    :catch_2
    move-exception v1

    .line 60
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "MetricModel"

    const-string v3, "Unable to close metric model stream"

    invoke-static {v2, v3, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/location/h/p;->a:Ljava/util/List;

    return-object v0
.end method
