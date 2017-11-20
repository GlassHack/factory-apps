.class public final Lcom/google/android/location/f/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/f/y;

.field public final b:Lcom/google/android/location/f/be;

.field public final c:Lcom/google/android/location/f/e;

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/google/android/location/f/af;-><init>(Lcom/google/android/location/f/y;Lcom/google/android/location/f/be;Lcom/google/android/location/f/e;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/f/y;Lcom/google/android/location/f/be;Lcom/google/android/location/f/e;Z)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    .line 53
    iput-object p2, p0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    .line 54
    iput-object p3, p0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    .line 55
    iput-boolean p4, p0, Lcom/google/android/location/f/af;->d:Z

    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    sget-object v1, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-eq v0, v1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Args"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    const-string v1, "NetworkLocation [\n bestResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    if-nez v1, :cond_1

    .line 86
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    :goto_0
    const-string v1, "\n wifiResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    invoke-static {v0, v1}, Lcom/google/android/location/f/be;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/be;)V

    .line 94
    const-string v1, "\n cellResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    invoke-static {v0, v1}, Lcom/google/android/location/f/e;->a(Ljava/lang/StringBuilder;Lcom/google/android/location/f/e;)V

    .line 96
    const-string v1, "\n isLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-boolean v1, p0, Lcom/google/android/location/f/af;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v2, p0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-ne v1, v2, :cond_2

    .line 88
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v2, p0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-ne v1, v2, :cond_0

    .line 90
    const-string v1, "CELL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
