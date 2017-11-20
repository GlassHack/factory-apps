.class public final Lcom/google/android/maps/driveabout/store/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/store/az;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/x;->a:Ljava/io/File;

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;
    .locals 5

    .prologue
    .line 69
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/x;->a:Ljava/io/File;

    const-string v3, "cache_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    new-instance v2, Lcom/google/android/maps/driveabout/store/w;

    if-eqz p2, :cond_1

    const-string v0, "rw"

    :goto_1
    invoke-direct {v2, v1, v0}, Lcom/google/android/maps/driveabout/store/w;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "r"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 75
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/x;->a:Ljava/io/File;

    const-string v3, "cache_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 79
    :cond_0
    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
