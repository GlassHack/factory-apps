.class final Lcom/google/android/maps/driveabout/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/a/b;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/g;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/b/g;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/i;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/a;)V
    .locals 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/i;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/g;->d(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/i;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/g;->d(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected completion of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but was: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v1, "AlertController"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/i;->a:Lcom/google/android/maps/driveabout/b/g;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/b/g;->a:Lcom/google/android/maps/driveabout/b/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/a;->j(Lcom/google/android/maps/driveabout/b/a;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/i;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/g;->e(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/i;->a:Lcom/google/android/maps/driveabout/b/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/g;->e(Lcom/google/android/maps/driveabout/b/g;)Lcom/google/android/maps/driveabout/b/d;

    .line 292
    :cond_1
    return-void
.end method
