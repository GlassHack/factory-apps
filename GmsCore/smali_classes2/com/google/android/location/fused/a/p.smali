.class public final Lcom/google/android/location/fused/a/p;
.super Lcom/google/android/location/fused/a/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/fused/bp;

.field private final b:Lcom/google/android/location/fused/a;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/bp;Lcom/google/android/location/fused/a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/location/fused/a/l;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/location/fused/a/p;->a:Lcom/google/android/location/fused/bp;

    .line 19
    iput-object p2, p0, Lcom/google/android/location/fused/a/p;->b:Lcom/google/android/location/fused/a;

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 23
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/google/android/location/fused/a/p;->a:Lcom/google/android/location/fused/bp;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bp;->a()V

    .line 25
    iget-object v0, p0, Lcom/google/android/location/fused/a/p;->b:Lcom/google/android/location/fused/a;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a;->a()V

    .line 26
    const-string v0, "GCoreFlp"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "Step detection enabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/a/p;->a:Lcom/google/android/location/fused/bp;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bp;->b()V

    .line 31
    iget-object v0, p0, Lcom/google/android/location/fused/a/p;->b:Lcom/google/android/location/fused/a;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a;->b()V

    .line 32
    const-string v0, "GCoreFlp"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "Step Detection Disabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Step detector ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/p;->a(Ljava/lang/StringBuilder;)V

    .line 42
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
