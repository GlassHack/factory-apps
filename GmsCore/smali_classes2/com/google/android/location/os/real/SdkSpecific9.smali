.class public Lcom/google/android/location/os/real/SdkSpecific9;
.super Lcom/google/android/location/os/real/SdkSpecific8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/location/os/real/SdkSpecific8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/telephony/gsm/GsmCellLocation;)I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/File;->setReadable(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "SdkSpecific9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to set readability of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/File;->setWritable(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "SdkSpecific9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to set writability of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :cond_1
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "SdkSpecific9"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "SdkSpecific9"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 47
    return-void
.end method
