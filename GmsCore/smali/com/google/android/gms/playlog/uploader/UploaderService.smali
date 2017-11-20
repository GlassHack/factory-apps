.class public Lcom/google/android/gms/playlog/uploader/UploaderService;
.super Lcom/google/android/gms/gcm/ae;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private b:Lcom/google/android/gms/playlog/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/gms/playlog/a/e;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/uploader/UploaderService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/gcm/be;)I
    .locals 5

    .prologue
    .line 35
    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/UploaderService;->a:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    const-string v2, "UploaderService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--> uploading all staged data: now="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/gcm/be;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/UploaderService;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-static {v0}, Lcom/google/android/gms/playlog/uploader/b;->a(Lcom/google/android/gms/playlog/b/f;)Lcom/google/android/gms/playlog/uploader/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/uploader/b;->a()Z

    move-result v1

    .line 40
    sget-boolean v0, Lcom/google/android/gms/playlog/uploader/UploaderService;->a:Z

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "UploaderService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uploader.upload() returns "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/UploaderService;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const-string v0, "UploaderService"

    const-string v2, "Storage is full; enforce austerity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/UploaderService;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/f;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/playlog/b/a/f;->a()Lcom/google/android/gms/playlog/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/a/f;->c()Z

    .line 56
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v2, "UploaderService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not enforce austerity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/google/android/gms/gcm/ae;->onCreate()V

    .line 24
    invoke-static {}, Lcom/google/android/gms/playlog/b/f;->a()Lcom/google/android/gms/playlog/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/uploader/UploaderService;->b:Lcom/google/android/gms/playlog/b/f;

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/playlog/uploader/UploaderService;->b:Lcom/google/android/gms/playlog/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/f;->close()V

    .line 30
    invoke-super {p0}, Lcom/google/android/gms/gcm/ae;->onDestroy()V

    .line 31
    return-void
.end method
