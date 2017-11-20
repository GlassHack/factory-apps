.class public abstract Lcom/google/android/maps/driveabout/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/maps/driveabout/g/f;


# instance fields
.field protected final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/maps/driveabout/g/f;->c:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/g/f;)V
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    sput-object p0, Lcom/google/android/maps/driveabout/g/f;->a:Lcom/google/android/maps/driveabout/g/f;

    .line 493
    :cond_0
    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/g/j;)V
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/google/android/maps/driveabout/g/f;->a:Lcom/google/android/maps/driveabout/g/f;

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/j;)V

    .line 484
    :cond_0
    return-void
.end method

.method private static b(Ljava/io/BufferedWriter;)V
    .locals 5

    .prologue
    .line 362
    const-string v0, "<event-log>\n"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "<app-info version=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' server=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 366
    const-string v0, "\n</app-info>\n"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 369
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "<android-build>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</android-build>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public static e()Lcom/google/android/maps/driveabout/g/f;
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/google/android/maps/driveabout/g/f;->a:Lcom/google/android/maps/driveabout/g/f;

    return-object v0
.end method

.method protected static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    if-nez p0, :cond_0

    const-string v0, "null"

    .line 48
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v0, "&"

    const-string v1, "&amp;"

    .line 48
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    if-nez p0, :cond_0

    const-string v0, "null"

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-string v0, "&"

    const-string v1, "&amp;"

    .line 54
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/g/j;)V
.end method

.method protected a(Ljava/io/BufferedWriter;)V
    .locals 1

    .prologue
    .line 373
    const-string v0, "</event-log>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/g/f;->a(Ljava/io/Writer;)V

    .line 425
    return-void
.end method

.method public final a(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 446
    new-instance v0, Lcom/google/android/maps/driveabout/g/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/g/f;->c:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/g/b;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/location/Location;Landroid/location/Location;Landroid/location/Location;I)V

    .line 450
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/g/b;->b(Ljava/lang/Throwable;)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/g/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 385
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :try_start_1
    invoke-static {v1}, Lcom/google/android/maps/driveabout/g/f;->b(Ljava/io/BufferedWriter;)V

    .line 388
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/g/f;->a()Ljava/util/List;

    move-result-object v0

    .line 389
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/g/j;

    .line 390
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/g/j;->c(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    throw v0

    .line 393
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/g/f;->a(Ljava/io/BufferedWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 399
    :cond_2
    return-void

    .line 395
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/g/f;->c:Landroid/content/Context;

    return-object v0
.end method
